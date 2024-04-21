import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

class Iphone1314PageDK extends StatefulWidget {
  const Iphone1314PageDK({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1314PageState createState() => Iphone1314PageState();
}

class Iphone1314PageState extends State<Iphone1314PageDK>
    with AutomaticKeepAliveClientMixin<Iphone1314PageDK> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 42.v),
                Column(
                  children: [
                    _buildRowPlaylist(context),
                    SizedBox(height: 67.v),
                    _buildRowClientTestimonials(context),
                    SizedBox(height: 4.v),
                    _buildRowReviews(context),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          right: 92.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SELECT",
                                    style: theme.textTheme.labelMedium,
                                  ),
                                  SizedBox(height: 1.v),
                                  Container(
                                    width: 60.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 2.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 2.h,
                                            top: 4.v,
                                            bottom: 2.v,
                                          ),
                                          child: Text(
                                            "SELECT",
                                            style:
                                                CustomTextStyles.sarabunGray600,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text(
                                            ">",
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    width: 59.h,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.h),
                                    decoration:
                                        AppDecoration.fillGreen10001.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: Text(
                                      "รายรับ - รายจ่าย",
                                      style: CustomTextStyles.sarabunBlack900
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtOne(context);
                                    },
                                    child: Container(
                                      width: 59.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 19.h),
                                      decoration:
                                          AppDecoration.fillGreen100.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Text(
                                        "รายรับ ",
                                        style: CustomTextStyles.sarabunBlack900,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 23.v,
                              width: 219.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                bottom: 32.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 23.v,
                                      width: 219.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          11.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "รายจ่าย  - รายรับ  ",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildRowDoctorReviews(context)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPlaylist(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "<",
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Text(
            "March 2024",
            style: CustomTextStyles.headlineLargeGray600,
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              ">",
              style: theme.textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowClientTestimonials(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "รายจ่าย",
              style: theme.textTheme.labelLarge!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "100.00",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Container(
            height: 16.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
              bottom: 6.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: SizedBox(
                      child: Divider(
                        indent: 3.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "B",
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 197.h,
            margin: EdgeInsets.only(left: 9.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "รายรับ",
                    style: CustomTextStyles.labelLargeIndigo500.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "400.00",
                    style: CustomTextStyles.bodySmallIndigo500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 2.v,
                  ),
                  child: _buildStackbTwo(
                    context,
                    text: "B",
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
  Widget _buildRowReviews(BuildContext context) {
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "รายรับ - รายจ่าย",
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
              "+100.00",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 5.h,
              bottom: 4.v,
            ),
            child: _buildStackbTwo(
              context,
              text: "B",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDoctorReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 45.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 59.h,
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    decoration: AppDecoration.fillGreen100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: Text(
                      "รายจ่าย",
                      style: CustomTextStyles.sarabunBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 140.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: SizedBox(
                        child: Divider(
                          color: appTheme.indigoA700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "รายรับ",
                        style: CustomTextStyles.barlowBlack900,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: SizedBox(
                        child: Divider(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "รายจ่าย",
                        style: CustomTextStyles.barlowBlack900,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 18.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "110000",
                            style: CustomTextStyles.barlowBlack900,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "100000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "90000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "80000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "70000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "60000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "50000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "40000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "30000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "20000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "10000",
                          style: CustomTextStyles.barlowBlack900,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "0",
                          style: CustomTextStyles.barlowBlack900,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 186.v,
                          width: 278.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 185.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.gray700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 46.h),
                                  child: SizedBox(
                                    height: 185.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 92.h),
                                  child: SizedBox(
                                    height: 185.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 185.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.gray700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 92.h),
                                  child: SizedBox(
                                    height: 185.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 46.h),
                                  child: SizedBox(
                                    height: 185.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 185.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.gray700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15.v),
                                  child: SizedBox(
                                    width: 276.h,
                                    child: Divider(
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 2.h,
                                    bottom: 33.v,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Divider(
                                        color: appTheme.gray700,
                                      ),
                                      SizedBox(height: 15.v),
                                      Divider(
                                        color: appTheme.gray700,
                                      ),
                                      SizedBox(height: 15.v),
                                      Divider(
                                        color: appTheme.gray700,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 51.v,
                                    right: 2.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Divider(
                                        color: appTheme.gray700,
                                      ),
                                      SizedBox(height: 15.v),
                                      Divider(
                                        color: appTheme.gray700,
                                      ),
                                      SizedBox(height: 15.v),
                                      Divider(
                                        color: appTheme.gray700,
                                      ),
                                      SizedBox(height: 15.v),
                                      Divider(
                                        color: appTheme.gray700,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 34.v),
                                  child: SizedBox(
                                    width: 276.h,
                                    child: Divider(
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 17.v),
                                  child: SizedBox(
                                    width: 276.h,
                                    child: Divider(
                                      color: appTheme.gray700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 276.h,
                                  child: Divider(
                                    color: appTheme.gray700,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 101.v,
                                width: 184.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 17.v),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 15.v),
                                  child: SizedBox(
                                    width: 185.h,
                                    child: Divider(
                                      color: theme.colorScheme.onPrimary,
                                      endIndent: 47.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 186.v,
                                  child: VerticalDivider(
                                    width: 2.h,
                                    thickness: 2.v,
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 19.v),
                                child: _buildStackbTwo(
                                  context,
                                  text: "B",
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: appTheme.gray700,
                          indent: 2.h,
                          endIndent: 2.h,
                        ),
                        SizedBox(height: 1.v),
                        Divider(
                          color: appTheme.black900,
                          endIndent: 3.h,
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "0",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "1",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "2",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "3",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "4",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "5",
                              style: CustomTextStyles.barlowBlack900,
                            ),
                            Text(
                              "6",
                              style: CustomTextStyles.barlowBlack900,
                            )
                          ],
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

  /// Common widget
  Widget _buildStackbTwo(
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

  /// Navigates to the iphone1314TabContainer1Screen when the action is triggered.
  onTapTxtOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314LoginScreen);
    // Navigator.pushNamed(context, AppRoutes.iphone1314TabContainer1Screen);
  }
}
