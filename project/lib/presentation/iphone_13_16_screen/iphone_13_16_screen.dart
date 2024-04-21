import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_13_15_page/iphone_13_15_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1316Screen extends StatelessWidget {
  Iphone1316Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: theme.colorScheme.onPrimaryContainer,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildRow(context),
              Spacer(
                flex: 51,
              ),
              Container(
                height: 76.v,
                width: 79.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.fillGreen100.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder39,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage22,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  alignment: Alignment.topCenter,
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "จดรายรับ-รายจ่าย",
                style: CustomTextStyles.titleMediumBlack900,
              ),
              Spacer(
                flex: 48,
              )
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottombar(context),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 37.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "หนังสือรายรับรายจ่าย",
                  style:
                      CustomTextStyles.labelLargeOnPrimaryContainerSemiBold_1,
                ),
                SizedBox(height: 25.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBasilEyeClosedSolid,
                  height: 28.v,
                  width: 27.h,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "กระเป๋าเงิน",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 125.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Text(
                      "รายรับ",
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: _buildRowbTwo(
                    context,
                    bTwo: "B",
                    threehundred: "400",
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 121.v,
              bottom: 99.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "สินทรัพย์สุทธิ",
                    style: CustomTextStyles
                        .labelLargeSarabunOnPrimaryContainerSemiBold,
                  ),
                ),
                SizedBox(height: 9.v),
                SizedBox(

                  width: 81.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 42.v,
                        width: 15.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "B",
                                style: CustomTextStyles
                                    .headlineLargeSarabunOnPrimaryContainerr,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                  height: 31.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    // color: theme.colorScheme.onPrimaryContainer,
                                    color: appTheme.green500,
                                    indent: 9.h,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "100",
                        style: CustomTextStyles
                            .headlineLargeSarabunOnPrimaryContainerr,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 42,
          ),
          Padding(
            padding: EdgeInsets.only(top: 232.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รายจ่าย",
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
                SizedBox(height: 14.v),
                _buildRowbTwo(
                  context,
                  bTwo: "B",
                  threehundred: "300",
                )
              ],
            ),
          ),
          Spacer(
            flex: 57,
          )
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildBottombar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  /// Common widget
  Widget _buildRowbTwo(
    BuildContext context, {
    required String bTwo,
    required String threehundred,
  }) {
    return Row(
      children: [
        SizedBox(
          height: 21.v,
          width: 10.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  bTwo,
                  style:
                      CustomTextStyles.titleMediumOnPrimaryContainer.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: SizedBox(
                    child: Divider(
              
                      color: theme.colorScheme.onPrimaryContainer,
                      indent: 4.h,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            threehundred,
            style: CustomTextStyles.titleMediumOnPrimaryContainerr.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  ///
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        if (type == BottomBarEnum.tf) {
          Navigator.pushNamed(context, AppRoutes.iphone1314Page);
        } else if (type == BottomBarEnum.patitin) {
          Navigator.pushNamed(context, AppRoutes.iphone1315page);
        } else if (type == BottomBarEnum.wallet) {
          Navigator.pushNamed(context, AppRoutes.iphone1316page);
        } else if (type == BottomBarEnum.warn) {
          Navigator.pushNamed(context, AppRoutes.iphone1315pagewarn);
        } else if (type == BottomBarEnum.profile) {
          Navigator.pushNamed(context, AppRoutes.iphone1314screenprofile);
        }
        // else if (type == BottomBarEnum.dk) {
        //   Navigator.pushNamed(context, AppRoutes.iphone1314pageDK);
        // }
      },
    );
  }
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
