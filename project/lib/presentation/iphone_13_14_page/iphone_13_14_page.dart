import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/menu_item_widget.dart'; // ignore_for_file: must_be_immutable

import '../../widgets/custom_bottom_bar.dart';

import '../iphone_13_15_page/iphone_13_15_page.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1314Page extends StatelessWidget {
  Iphone1314Page({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<DateTime?> selectedDatesFromCalendar1 = [];

  TextEditingController tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Column(
                    children: [
                      _buildup(context),
                      _buildCalendarOne(context),
                      SizedBox(height: 5.v),
                      _buildColumn(context),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 54.h,
                          margin: EdgeInsets.only(left: 13.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillGreen500.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9,
                          ),
                          child: Text(
                            "หมวดหมู่",
                            style: CustomTextStyles
                                .labelMediumInterOnPrimaryContainer,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildMenu(context)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  Widget _buildup(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGreen10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.v),
              Text(
                "หนังสือรายรับรายจ่าย",
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ],
          ),
          // ปุ่มบันทึก
          GestureDetector(
            onTap: () {
              // เพิ่มโค้ดเมื่อกดปุ่มบันทึก
              Navigator.pushNamed(context, AppRoutes.iphone1314pagedontknowone);

            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 236, 250), // สีพื้นหลังปุ่ม
                borderRadius: BorderRadius.circular(20), // กำหนดรูปร่างของปุ่ม
              ),
              child: Text(
                "รายรับ",
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildup(BuildContext context) {
  //   return Container(
  //     width: double.maxFinite,
  //     padding: EdgeInsets.symmetric(
  //       horizontal: 12.h,
  //       vertical: 17.v,
  //     ),
  //     decoration: AppDecoration.fillGreen10001.copyWith(
  //       borderRadius: BorderRadiusStyle.roundedBorder20,
  //     ),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(height: 18.v),
  //         Text(
  //           "หนังสือรายรับรายจ่าย",
  //           style: CustomTextStyles.labelLargeBlack900,
  //         )
  //       ],
  //     ),
  //   );
  // }
  /// Section Widget
  Widget _buildCalendarOne(BuildContext context) {
    return SizedBox(
      height: 264.v,
      width: 384.h,
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
  Widget _buildColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          SizedBox(
            height: 29.v,
            width: 384.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomElevatedButton(
                  height: 29.v,
                  width: 65.h,
                  text: "ใส่ข้อมูล",
                  buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                  buttonTextStyle: CustomTextStyles.labelMedium11,
                  alignment: Alignment.centerLeft,
                ),
                CustomTextFormField(
                  width: 325.h,
                  controller: tfController,
                  hintText: "ใส่ข้อมูลรายการ",
                  hintStyle: CustomTextStyles.labelLargeSarabunBlack900,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerRight,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 6.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillLime,
                  fillColor: appTheme.lime200,



                  onSaved: (String? value) {
                    // Do something with the saved value
                  }
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 26.v,
            width: 384.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 65.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 2.v,

                      // horizontal: 1.h,
                      // vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Text(
                      "รายจ่าย",
                      style: CustomTextStyles.labelMedium11,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 59.h),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),

                    // margin: EdgeInsets.only(left: 5.h),
                    // padding: EdgeInsets.symmetric(horizontal: 5.h),
                    decoration: AppDecoration.fillLime,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.v),
                        Text(
                          "100.00",
                          style: CustomTextStyles.labelLargeSarabunBlack900_1,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> imagePaths = [
    ImageConstant.imgImage6,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,
    ImageConstant.imgImage7,

    // เพิ่ม imagePath ตามต้องการ
  ];

  List<String> texts = [
    "Text 1",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",
    "Text 2",

    // เพิ่ม text ตามต้องการ
  ];

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 13.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 36.v,
          crossAxisCount: 3,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          for (int i = 0; i <= 11; i++) {
            String imagePath = imagePaths[i];
          }
          return MenuItemWidget(
            imagePath: ImageConstant.imgImage7,
            text: "อาหาร",
          );
        },
      ),
    );
  }

  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       // Navigator.pushNamed(
  //       //     navigatorKey.currentContext!, getCurrentRoute(type));
  //       Navigator.pushNamed(context, AppRoutes.iphone1314LoginScreen);
  //       Navigator.pushNamed(context, AppRoutes.iphone1315page);
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

//   Widget _buildBottomBar(BuildContext context) {
//   return CustomBottomBar(
//     onChanged: (String title) {
//       if (title == "หนังสือ") {
//         Navigator.pushNamed(context, AppRoutes.iphone1314Page);
//       } else {
//         Navigator.pushNamed(context, AppRoutes.iphone1315page);
//       }
//     },
//   );
// }

  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.tf:
  //       return AppRoutes.iphone1314Page;
  //     default:
  //       return "/";
  //   }
  // List<String> imagePaths = [
  //   ImageConstant.imgImage6,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   ImageConstant.imgImage7,
  //   // เพิ่ม imagePath ตามต้องการ
  // ];

  // List<String> texts = [
  //   "Text 1",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",
  //   "Text 2",

  //   // เพิ่ม text ตามต้องการ
  // ];

  // Widget _buildMenu(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: 10.h,
  //       right: 13.h,
  //     ),
  //     child: ListView.builder(
  //       shrinkWrap: true,
  //       itemCount: imagePaths
  //           .length, // หรือ texts.length ก็ได้เพราะจำนวน imagePaths และ texts เท่ากัน
  //       itemBuilder: (context, index) {
  //         return MenuItemWidget(
  //           imagePath: imagePaths[index],
  //           text: texts[index],
  //         );
  //       },
  //     ),
  //   );
  // }
}

// class CustomBottomBar extends StatefulWidget {
//   CustomBottomBar({this.onChanged});

//   Function(String)? onChanged;

//   @override
//   CustomBottomBarState createState() => CustomBottomBarState();
// }
