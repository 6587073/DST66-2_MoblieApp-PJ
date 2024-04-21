import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
import '../../widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1315PageWarnTwo extends StatelessWidget {
  Iphone1315PageWarnTwo({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    _buildCalendarSection(context),
                    SizedBox(height: 9.v),
                    _buildClientTestimonialsSection(context),
                    SizedBox(height: 4.v),
                    _buildReviewsSection(context),
                    SizedBox(height: 1.v),
                    _buildPlaylistSection(context)
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
  Widget _buildCalendarSection(BuildContext context) {
    return SizedBox(
      height: 262.v,
      width: 387.h,
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
  Widget _buildClientTestimonialsSection(BuildContext context) {
    return SizedBox(
      height: 67.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildDoctorReviewsSection(
                          context,
                          textValue1: "10,000.00",
                          textValue2: "10,000.00",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: _buildRecentOrdersSection(
                            context,
                            textB: "B",
                            textBThree: "B",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 16.v,
                          width: 33.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "จารจร",
                                  style: CustomTextStyles
                                      .labelLargeSarabunOnPrimaryContainerr
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "จารจร",
                                  style: CustomTextStyles
                                      .labelLargeSarabunOnPrimaryContainerr
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 16.v,
                          width: 49.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "9,000.00",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "9,000.00",
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: _buildRecentOrdersSection(
                            context,
                            textB: "B",
                            textBThree: "B",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 16.v,
                          width: 77.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "ค่าใช้จ่ายต่างๆ",
                                  style: CustomTextStyles
                                      .labelLargeSarabunOnPrimaryContainerr
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "ค่าใช้จ่ายต่างๆ",
                                  style: CustomTextStyles
                                      .labelLargeSarabunOnPrimaryContainerr
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        _buildDoctorReviewsSection(
                          context,
                          textValue1: "10,000.00",
                          textValue2: "10,000.00",
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: _buildRecentOrdersSection(
                            context,
                            textB: "B",
                            textBThree: "B",
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 22.v,
              width: 39.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ช้อปปิ้ง",
                      style: CustomTextStyles
                          .labelLargeSarabunOnPrimaryContainerr
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ช้อปปิ้ง",
                      style: CustomTextStyles
                          .labelLargeSarabunOnPrimaryContainerr
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsSection(BuildContext context) {
    return SizedBox(
      height: 38.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.h, 7.v, 13.h, 11.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "รวมรายจ่าย",
                    style: theme.textTheme.titleSmall!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "29,000.00",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      bottom: 2.v,
                    ),
                    child: _buildStackbSeven(
                      context,
                      bSeven: "B",
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Text(
                      "รวมรายจ่าย",
                      style: theme.textTheme.titleSmall!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "29,000.00",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    height: 16.v,
                    width: 8.h,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      right: 7.h,
                      bottom: 6.v,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "B",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            child: Divider(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              indent: 3.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: 2.v,
          right: 236.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   "SELECT",
            //   style: theme.textTheme.labelMedium,
            // ),
            // SizedBox(height: 1.v),
            // Container(
            //   width: 60.h,
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 5.h,
            //     vertical: 1.v,
            //   ),
            //   decoration: AppDecoration.outlineBlack.copyWith(
            //     borderRadius: BorderRadiusStyle.roundedBorder3,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(
            //           top: 4.v,
            //           bottom: 2.v,
            //         ),
            //         child: Text(
            //           "SELECT",
            //           style: CustomTextStyles.sarabunGray600,
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(top: 1.v),
            //         child: Text(
            //           ">",
            //           style: theme.textTheme.labelMedium,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(height: 2.v),
            // Container(
            //   width: 59.h,
            //   padding: EdgeInsets.symmetric(horizontal: 4.h),
            //   decoration: AppDecoration.fillGreen10001.copyWith(
            //     borderRadius: BorderRadiusStyle.roundedBorder3,
            //   ),
            //   child: Text(
            //     "รายรับ - รายจ่าย",
            //     style: CustomTextStyles.sarabunBlack900,
            //   ),
            // ),
            SizedBox(height: 3.v),
            // Container(
            //   width: 59.h,
            //   padding: EdgeInsets.symmetric(horizontal: 19.h),
            //   decoration: AppDecoration.fillGreen100.copyWith(
            //     borderRadius: BorderRadiusStyle.roundedBorder3,
            //   ),
            //   child: Text(
            //     "รายรับ ",
            //     style: CustomTextStyles.sarabunBlack900.copyWith(
            //       decoration: TextDecoration.underline,
            //     ),
            //   ),
            // ),
            SizedBox(height: 3.v),
            Container(
              width: 59.h,
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              decoration: AppDecoration.fillGreen100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the desired screen for income
                  // Example: Navigator.pushNamed(context, '/income_page');
                  Navigator.pushNamed(context, AppRoutes.iphone1315pagewarn);
                },
                child: Text(
                  "รายรับ ",
                  style: CustomTextStyles.sarabunBlack900.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylistSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: 256.v,
            // width: 296.h,
            width: 291.h,

            height: 300.v,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 23.v,
                    width: 219.h,
                    margin: EdgeInsets.only(right: 8.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 77.h),
                            child: Text(
                              "รายจ่าย  ",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 219.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillAmber.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder13,
                            ),
                            child: Text(
                              "รายจ่าย  ",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 222.v,
                    width: 239.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup1097,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 95.v,
                              right: 12.h,
                            ),
                            child: Text(
                              "100%",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              // horizontal: 19.h,
                              // vertical: 36.v,
                              horizontal: 10.h, // ปรับลงจาก 19.h เป็น 10.h
                              vertical: 18.v, 
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup1097,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text(
                                    "20%",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 43.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "40%",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 54.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 42.h),
                                  child: Text(
                                    "40%",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 3.v)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                _buildUserProfileSection(context)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 38.v,
              bottom: 161.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 2.v),
                      decoration: AppDecoration.fillLime800.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Container(
                        height: 12.v,
                        width: 11.h,
                        decoration: BoxDecoration(
                          color: appTheme.lime800,
                          borderRadius: BorderRadius.circular(
                            6.h,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 13.v,
                      width: 32.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        bottom: 1.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ช้อปปิ้ง",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ช้อปปิ้ง",
                              style: theme.textTheme.labelMedium,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Container(
                        decoration: AppDecoration.fillPink.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Container(
                          height: 12.v,
                          width: 11.h,
                          decoration: BoxDecoration(
                            color: appTheme.pink400,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 13.v,
                        width: 28.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "จารจร",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "จารจร",
                                style: theme.textTheme.labelMedium,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Container(
                        decoration: AppDecoration.fillRedA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Container(
                          height: 12.v,
                          width: 11.h,
                          decoration: BoxDecoration(
                            color: appTheme.redA700,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 13.v,
                        width: 64.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "ค่าใช้จ่ายต่างๆ",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "ค่าใช้จ่ายต่างๆ",
                                style: theme.textTheme.labelMedium,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrdersSection(
    BuildContext context, {
    required String textB,
    required String textBThree,
  }) {
    return SizedBox(
      height: 16.v,
      width: 8.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: SizedBox(
                child: Divider(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  indent: 3.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 16.v,
              width: 8.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      textB,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 16.v,
                      width: 8.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: SizedBox(
                                child: Divider(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1),
                                  indent: 3.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              textBThree,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviewsSection(
    BuildContext context, {
    required String textValue1,
    required String textValue2,
  }) {
    return SizedBox(
      height: 16.v,
      width: 56.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              textValue1,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              textValue2,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStackbSeven(
    BuildContext context, {
    required String bSeven,
  }) {
    return SizedBox(
      height: 16.v,
      width: 8.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              bSeven,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              child: Divider(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                indent: 3.h,
              ),
            ),
          )
        ],
      ),
    );
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
}
