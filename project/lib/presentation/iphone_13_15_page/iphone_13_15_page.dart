import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

import '../../widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1315Page extends StatelessWidget {
  Iphone1315Page({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              _buildColumn(context),
              _buildCalenderone(context),
              SizedBox(height: 26.v),
              _buildUserprofile(context),
              SizedBox(height: 14.v),
              _buildColumn13(context),
              SizedBox(height: 65.v),
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
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGreen10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.v),
          Text(
            "หนังสือรายรับรายจ่าย",
            style: CustomTextStyles.labelLargeBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalenderone(BuildContext context) {
    return SizedBox(
      height: 288.v,
      width: double.maxFinite,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0X7FF9F9F9),
          centerAlignModePicker: true,
          firstDayOfWeek: 0,
          controlsHeight: 38,
          selectedDayTextStyle: TextStyle(
            color: Color(0X6C000000),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          controlsTextStyle: TextStyle(
            color: appTheme.black900,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          disabledDayTextStyle: TextStyle(
            color: appTheme.black900.withOpacity(0.42),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        value: selectedDatesFromCalendar1,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildUserprofile(BuildContext context) {
    return SizedBox(
      height: 36.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 123.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn13(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillGreen.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder13,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "13 มีนาคม 2024",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  height: 16.v,
                  width: 49.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    right: 14.h,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "100.00 B",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: SizedBox(
                            child: Divider(
                              color: theme.colorScheme.onPrimaryContainer,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "รายการ",
                style: CustomTextStyles.bodySmallBlack900_1.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 37.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "อาหาร",
                    style: CustomTextStyles.bodySmallBlack90010,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Text(
                    "100.00 ",
                    style: CustomTextStyles.bodySmallBlack90010,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      bottom: 7.v,
                    ),
                    child: _buildRowbOne(
                      context,
                      bOne: "B",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              right: 37.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "เงินเดือน",
                  style: CustomTextStyles.bodySmallBlack90010,
                ),
                Spacer(),
                Text(
                  "400.00 ",
                  style: CustomTextStyles.bodySmallIndigo50010,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: _buildRowbOne(
                      context,
                      bOne: "B",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 11.v)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowbOne(
    BuildContext context, {
    required String bOne,
  }) {
    return SizedBox(
      width: 5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            bOne,
            style: CustomTextStyles.bodySmallIndigo500.copyWith(
              color: appTheme.indigo500,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: SizedBox(
              child: Divider(
                color: appTheme.indigo500,
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       // Navigator.pushNamed(
  //       //     navigatorKey.currentContext!, getCurrentRoute(type));

  //       Navigator.pushNamed(context, AppRoutes.iphone1314LoginScreen);
  //       Navigator.pushNamed(context, AppRoutes.iphone1314Page);
        
  //     },
  //   );
  // }
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

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.iphone1314Page;
      default:
        return "/";
    }
  }
}
