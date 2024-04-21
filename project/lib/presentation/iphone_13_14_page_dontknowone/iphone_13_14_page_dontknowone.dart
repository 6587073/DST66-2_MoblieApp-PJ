import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/gridgrouptext_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable


import '../../widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1314PageDontKnowOne extends StatelessWidget {
  Iphone1314PageDontKnowOne({Key? key})
      : super(
          key: key,
        );

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
                SizedBox(height: 15.v),
                Column(
                  children: [
                    _buildCalendarOne(context),
                    SizedBox(height: 29.v),
                    _buildColumnData(context),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 73.h,
                        margin: EdgeInsets.only(left: 20.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillGreen.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder13,
                        ),
                        child: Text(
                          "หมวดหมู่",
                          style: CustomTextStyles
                              .labelLargeOnPrimaryContainerSemiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildGridGroupText(context)
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

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
  Widget _buildColumnData(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 8.v,
      ),
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
            width: 385.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomElevatedButton(
                  width: 66.h,
                  text: "ใส่ข้อมูล",
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
                  filled: true,
                  fillColor: appTheme.lime200,
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 26.v,
            width: 385.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 66.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 2.v,
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
                    margin: EdgeInsets.only(left: 60.h),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGridGroupText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 9.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 39.v,
          crossAxisCount: 3,
          mainAxisSpacing: 13.h,
          crossAxisSpacing: 13.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return GridgrouptextItemWidget();
        },
      ),
    );
  }
}

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