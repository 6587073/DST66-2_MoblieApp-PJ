import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_13_14_page/iphone_13_14_page.dart';
import '../iphone_13_15_page/iphone_13_15_page.dart';

class Iphone1314TabContainerScreen extends StatefulWidget {
  const Iphone1314TabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1314TabContainerScreenState createState() =>
      Iphone1314TabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1314TabContainerScreenState
    extends State<Iphone1314TabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              SizedBox(
                height: 38.v,
                width: 164.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 7.h,
                          right: 5.h,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 11.h),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGreen.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder13,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Text(
                                    "รายจ่าย",
                                    style: theme.textTheme.labelMedium,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: SizedBox(
                                height: 38.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: appTheme.black900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 10.v,
                                bottom: 14.v,
                              ),
                              child: Text(
                                "รายรับ",
                                style: theme.textTheme.labelMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 38.v,
                      width: 164.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray300,
                        borderRadius: BorderRadius.circular(
                          19.h,
                        ),
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.black900,
                        labelStyle: TextStyle(
                          fontSize: 12.fSize,
                          fontFamily: 'Sarabun',
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelColor: appTheme.black900,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 12.fSize,
                          fontFamily: 'Sarabun',
                          fontWeight: FontWeight.w500,
                        ),
                        indicatorPadding: EdgeInsets.all(
                          4.5.h,
                        ),
                        indicator: BoxDecoration(
                          color: appTheme.green500,
                          borderRadius: BorderRadius.circular(
                            14.h,
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "รายจ่าย",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "รายรับ",
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 633.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [Iphone1314Page(), Iphone1314Page()],
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 42.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgImage93,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 43.v,
          bottom: 5.v,
        ),
      ),
      title: AppbarTitle(
        text: "หนังสือรายรับรายจ่าย",
        margin: EdgeInsets.only(
          left: 9.h,
          top: 49.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.fromLTRB(7.h, 37.v, 7.h, 12.v),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.tf:
  //       return AppRoutes.iphone1315Page;
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.iphone1315Page:
  //       return Iphone1315Page();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
