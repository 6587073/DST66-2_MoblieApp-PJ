import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

import '../../widgets/custom_bottom_bar.dart';

class Iphone1315PageWarn extends StatefulWidget {
  const Iphone1315PageWarn({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1315PageState createState() => Iphone1315PageState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1315PageState extends State<Iphone1315PageWarn>
    with AutomaticKeepAliveClientMixin<Iphone1315PageWarn> {
  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: theme.colorScheme.onPrimaryContainer,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    _buildCalendar(context),
                    SizedBox(height: 4.v),
                    _buildColumnFinance(context),
                    SizedBox(height: 4.v),
                    _buildRowTotalIncome(context),
                    SizedBox(height: 9.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          right: 97.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Column(
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
                                  //   decoration:
                                  //       AppDecoration.outlineBlack.copyWith(
                                  //     borderRadius:
                                  //         BorderRadiusStyle.roundedBorder3,
                                  //   ),
                                  //   child: Row(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.spaceBetween,
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.end,
                                  //     children: [
                                  //       Padding(
                                  //         padding: EdgeInsets.only(
                                  //           top: 4.v,
                                  //           bottom: 2.v,
                                  //         ),
                                  //         child: Text(
                                  //           "SELECT",
                                  //           style:
                                  //               CustomTextStyles.sarabunGray600,
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
                                  // )
                                ],
                              ),
                            ),
                            Container(
                              width: 219.h,
                              margin: EdgeInsets.only(
                                left: 50.h,
                                bottom: 10.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder11,
                              ),
                              child: Text(
                                "รายรับ  ",
                                style: theme.textTheme.titleMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    _buildRowIncomeExpense(context)
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
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 262.v,
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
  Widget _buildColumnFinance(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: AppDecoration.fillLime.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: _buildRowFinance(
              context,
              textValue: "เงินเดือน",
              textValue1: "40,000.00",
              textValue2: "B",
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: _buildRowFinance(
              context,
              textValue: "เงินโบนัส",
              textValue1: "40,000.00",
              textValue2: "B",
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: _buildRowFinance(
              context,
              textValue: "งานเสริม",
              textValue1: "20,000.00",
              textValue2: "B",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTotalIncome(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder19,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "รวมรายรับ ",
              style: theme.textTheme.titleSmall!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              "100,000.00",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22.h, 2.v, 7.h, 4.v),
            child: _buildStackTotalIncome(
              context,
              text: "B",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowIncomeExpense(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: 222.v,
            width: 291.h,

            height: 250.v,
            // width: 191.h,

            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Container(
                //     margin: EdgeInsets.only(
                //       top: 1.v,
                //       right: 232.h,
                //     ),
                //     padding: EdgeInsets.symmetric(horizontal: 4.h),
                //     decoration: AppDecoration.fillGreen10001.copyWith(
                //       borderRadius: BorderRadiusStyle.roundedBorder3,
                //     ),
                //     child: Column(
                //       mainAxisSize: MainAxisSize.min,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         SizedBox(height: 1.v),
                //         Text(
                //           "รายรับ - รายจ่าย",
                //           style: CustomTextStyles.sarabunBlack900,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 25.v,
                      right: 232.h,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    decoration: AppDecoration.fillGreen100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the desired screen for income
                        // Example: Navigator.pushNamed(context, '/income_page');
                        Navigator.pushNamed(
                            context, AppRoutes.iphone1315pagewarntwo);
                      },
                      child: Text(
                        "รายจ่าย ",
                        style: CustomTextStyles.sarabunBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     SizedBox(height: 1.v),
                    //     Text(
                    //       "รายจ่าย",
                    //       style: CustomTextStyles.sarabunBlack900,
                    //     )
                    //   ],
                    // ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Container(
                //     margin: EdgeInsets.only(
                //       top: 13.v,
                //       right: 232.h,
                //     ),
                //     padding: EdgeInsets.symmetric(horizontal: 19.h),
                //     decoration: AppDecoration.fillGreen100.copyWith(
                //       borderRadius: BorderRadiusStyle.roundedBorder3,
                //     ),
                //     child: Text(
                //       "รายรับ ",
                //       style: CustomTextStyles.sarabunBlack900.copyWith(
                //         decoration: TextDecoration.underline,
                //       ),
                //     ),
                //   ),
                // ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 52.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h, // ปรับลงจาก 19.h เป็น 10.h
                      vertical: 18.v, // ปรับลงจาก 32.v เป็น 18.v
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup121,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.h), // ปรับลงจาก 48.h เป็น 20.h
                          child: Text(
                            "20%",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 26.v), // ปรับลงจาก 47.v เป็น 26.v
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "40%",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 22.v), // ปรับลงจาก 41.v เป็น 22.v
                        Padding(
                          padding: EdgeInsets.only(
                              left: 14.h), // ปรับลงจาก 29.h เป็น 14.h
                          child: Text(
                            "40%",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 12.v), // ปรับลงจาก 20.v เป็น 12.v
                      ],
                    ),
                  ),
                ),

                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Container(
                //     margin: EdgeInsets.only(left: 52.h),
                //     padding: EdgeInsets.symmetric(
                //       horizontal: 19.h,
                //       vertical: 32.v,
                //     ),
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: fs.Svg(
                //           ImageConstant.imgGroup121,
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     child: Column(
                //       mainAxisSize: MainAxisSize.min,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.only(left: 48.h),
                //           child: Text(
                //             "20%",
                //             style: theme.textTheme.bodySmall,
                //           ),
                //         ),
                //         SizedBox(height: 47.v),
                //         Align(
                //           alignment: Alignment.centerRight,
                //           child: Text(
                //             "40%",
                //             style: theme.textTheme.bodySmall,
                //           ),
                //         ),
                //         SizedBox(height: 41.v),
                //         Padding(
                //           padding: EdgeInsets.only(left: 29.h),
                //           child: Text(
                //             "40%",
                //             style: theme.textTheme.bodySmall,
                //           ),
                //         ),
                //         SizedBox(height: 20.v)
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 4.v,
              bottom: 168.v,
            ),
            child: Column(
              children: [
                Container(
                  width: 56.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.v,
                        width: 11.h,
                        decoration: BoxDecoration(
                          color: appTheme.indigoA700,
                          borderRadius: BorderRadius.circular(
                            6.h,
                          ),
                        ),
                      ),
                      Text(
                        "เงินเดือน",
                        style: theme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 58.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.v,
                        width: 11.h,
                        decoration: BoxDecoration(
                          color: appTheme.green700,
                          borderRadius: BorderRadius.circular(
                            6.h,
                          ),
                        ),
                      ),
                      Text(
                        "เงินโบนัส",
                        style: theme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 56.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.v,
                        width: 11.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            6.h,
                          ),
                        ),
                      ),
                      Text(
                        "งานเสริม",
                        style: theme.textTheme.labelMedium,
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
  Widget _buildRowFinance(
    BuildContext context, {
    required String textValue,
    required String textValue1,
    required String textValue2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textValue,
          style: CustomTextStyles.labelLargeIndigo500.copyWith(
            decoration: TextDecoration.underline,
            color: appTheme.indigo500,
          ),
        ),
        Spacer(),
        Text(
          textValue1,
          style: CustomTextStyles.bodySmallIndigo500.copyWith(
            color: appTheme.indigo500,
          ),
        ),
        Container(
          height: 16.v,
          width: 8.h,
          margin: EdgeInsets.only(left: 22.h),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  textValue2,
                  style: CustomTextStyles.bodySmallIndigo500.copyWith(
                    color: appTheme.indigo500,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  child: Divider(
                    color: appTheme.indigo500,
                    indent: 3.h,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildStackTotalIncome(
    BuildContext context, {
    required String text,
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
              text,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              child: Divider(
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
