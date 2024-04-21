import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class Iphone1314ScreenProfile extends StatelessWidget {
  const Iphone1314ScreenProfile({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // SizedBox(height: 23.v),

                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.v,
                              bottom: 103.v,

                              // bottom: 1.v,
                            ),
                            child: Text(
                              "หนังสือรายรับรายจ่าย",
                              style:
                                  CustomTextStyles.labelLargeInterWhiteA700_1,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 130.adaptSize,
                            width: 130.adaptSize,
                            radius: BorderRadius.circular(
                              65.h,
                            ),
                            margin: EdgeInsets.only(left: 1.h),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Melissa peters",
                      style: CustomTextStyles.titleMediumInterWhiteA700,
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMaterialSymbolsLocationOn,
                          height: 27.adaptSize,
                          width: 27.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "Lagos, Nigeria",
                            style: CustomTextStyles.labelLargeInterWhiteA700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 7.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBasilEyeClosedSolid,
                                  height: 28.v,
                                  width: 27.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                ),
                                Text(
                                  "กระเป๋าเงิน",
                                  style: CustomTextStyles
                                      .titleLargeSarabunWhiteA700,
                                )
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            height: 37.v,
                            width: 148.h,
                            text: "Edit profile",
                            margin: EdgeInsets.only(
                              left: 16.h,
                              bottom: 19.v,
                            ),
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTapEditprofile(context);
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "สินทรัพย์สุทธิ",
                      style: CustomTextStyles.labelLargeSarabunWhiteA700,
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                  style: theme.textTheme.headlineLarge,
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
                                      indent: 9.h,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "100",
                            style: theme.textTheme.headlineLarge,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 43.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 58.h,
                        right: 54.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "รายรับ",
                            style: theme.textTheme.titleSmall,
                          ),
                          Text(
                            "รายจ่าย",
                            style: theme.textTheme.titleSmall,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 58.h,
                        right: 63.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildStackbTwo(
                            context,
                            text: "B",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "400",
                              style:
                                  CustomTextStyles.titleMediumSarabunWhiteA700,
                            ),
                          ),
                          Spacer(),
                          _buildStackbTwo(
                            context,
                            text: "B",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "300",
                              style:
                                  CustomTextStyles.titleMediumSarabunWhiteA700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 17.v),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      AppRoutes
                          .iphone1314Page); // เปลี่ยน 'yourRouteNameHere' เป็นชื่อ Route ที่ต้องการไป
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 5.v,
                      horizontal: 26.h), // ปรับ padding ตามความเหมาะสม
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage67,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                        ),
                        child: Text(
                          "หนังสือข้อมูล",
                          style:
                              CustomTextStyles.titleMediumInterBlack900Medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 17.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.iphone1315page,
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 86.h,
                        margin: EdgeInsets.only(top: 2.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage61,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "ปฏิทิน",
                                style: CustomTextStyles
                                    .titleMediumInterBlack900Medium,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.iphone1316page,
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage70,
                        height: 24.v,
                        width: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "การวิเคราะห์",
                          style:
                              CustomTextStyles.titleMediumInterBlack900Medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.iphone1315pagewarn,
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage68,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                          bottom: 11.v,
                        ),
                        child: Text(
                          "แจ้งเตือน",
                          style:
                              CustomTextStyles.titleMediumInterBlack900Medium,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes
                        .iphone1314helpscreen, // ชื่อ Route หรือชื่อหน้า Help ของคุณ
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage91,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 10.v,
                        ),
                        child: Text(
                          "Help",
                          style: CustomTextStyles.titleMediumInterBlack900,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 17.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes
                        .iphone1314LoginScreen, // ชื่อ Route หรือชื่อหน้า Help ของคุณ
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "log out",
                          style: CustomTextStyles.titleMediumSarabunBlack900,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.only(left: 26.h),
              //   child: Row(
              //     children: [
              //       CustomImageView(
              //         imagePath: ImageConstant.imgImage67,
              //         height: 30.adaptSize,
              //         width: 30.adaptSize,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 17.h,
              //           top: 5.v,
              //           bottom: 4.v,
              //         ),
              //         child: Text(
              //           "หนังสือข้อมูล",
              //           style: CustomTextStyles.titleMediumInterBlack900Medium,
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              // SizedBox(height: 17.v),
              // Padding(
              //   padding: EdgeInsets.only(left: 26.h),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         width: 86.h,
              //         margin: EdgeInsets.only(top: 2.v),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             CustomImageView(
              //               imagePath: ImageConstant.imgImage61,
              //               height: 30.adaptSize,
              //               width: 30.adaptSize,
              //             ),
              //             Padding(
              //               padding: EdgeInsets.only(
              //                 top: 6.v,
              //                 bottom: 3.v,
              //               ),
              //               child: Text(
              //                 "ปฏิทิน",
              //                 style: CustomTextStyles
              //                     .titleMediumInterBlack900Medium,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 35.h,
              //           bottom: 19.v,
              //         ),
              //         child: Text(
              //           "ปฏิทิน",
              //           style: CustomTextStyles.labelMediumInterWhiteA70001,
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              // SizedBox(height: 20.v),
              // Padding(
              //   padding: EdgeInsets.only(left: 26.h),
              //   child: Row(
              //     children: [
              //       CustomImageView(
              //         imagePath: ImageConstant.imgImage70,
              //         height: 24.v,
              //         width: 30.h,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 17.h,
              //           bottom: 2.v,
              //         ),
              //         child: Text(
              //           "การวิเคราะห์",
              //           style: CustomTextStyles.titleMediumInterBlack900Medium,
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              // SizedBox(height: 18.v),
              // Padding(
              //   padding: EdgeInsets.only(left: 26.h),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       CustomImageView(
              //         imagePath: ImageConstant.imgImage68,
              //         height: 30.adaptSize,
              //         width: 30.adaptSize,
              //         margin: EdgeInsets.only(top: 1.v),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 17.h,
              //           bottom: 11.v,
              //         ),
              //         child: Text(
              //           "แจ้งเตือน",
              //           style: CustomTextStyles.titleMediumInterBlack900Medium,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20.v),
              // Padding(
              //   padding: EdgeInsets.only(left: 22.h),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       CustomImageView(
              //         imagePath: ImageConstant.imgImage91,
              //         height: 30.adaptSize,
              //         width: 30.adaptSize,
              //         margin: EdgeInsets.only(bottom: 2.v),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           left: 16.h,
              //           top: 10.v,
              //         ),
              //         child: Text(
              //           "Help",
              //           style: CustomTextStyles.titleMediumInterBlack900,
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              // SizedBox(height: 17.v),
              // Padding(
              //   padding: EdgeInsets.only(left: 18.h),
              //   child: Row(
              //     children: [
              //       CustomImageView(
              //         imagePath: ImageConstant.imgTelevision,
              //         height: 50.adaptSize,
              //         width: 50.adaptSize,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(
              //           top: 16.v,
              //           bottom: 9.v,

              //           // top: 1.v,
              //           // bottom: 1.v,
              //         ),
              //         child: Text(
              //           "log out",
              //           style: CustomTextStyles.titleMediumSarabunBlack900,
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildStackbTwo(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      height: 21.v,
      width: 10.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: CustomTextStyles.titleMediumSarabunWhiteA700.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: SizedBox(
                child: Divider(
                  indent: 4.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the iphone1314EditScreen when the action is triggered.
  onTapEditprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314screenedit);
  }
}
