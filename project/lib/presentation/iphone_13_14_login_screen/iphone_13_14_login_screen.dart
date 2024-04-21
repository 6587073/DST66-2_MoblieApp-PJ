import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class Iphone1314LoginScreen extends StatelessWidget {
  const Iphone1314LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.green100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 66.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 313.h,
                        margin: EdgeInsets.only(
                          left: 36.h,
                          right: 40.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Welcome to ",
                                style: CustomTextStyles.headlineLargeInter,
                              ),
                              TextSpan(
                                text: "money ",
                                style: CustomTextStyles
                                    .headlineLargeInterSecondaryContainer,
                              ),
                              TextSpan(
                                text: "metang,",
                                style:
                                    CustomTextStyles.headlineLargeInterOnError,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 50.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgSaly13,
                        height: 257.v,
                        width: 376.h,
                        onTap: () {
                          onTapImgSalythirteen(context);
                        },
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 92.h,
                          vertical: 93.v,
                        ),
                        decoration: AppDecoration.fillLime.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder272,
                        ),
                        child: CustomElevatedButton(
                          height: 49.v,
                          text: "Login",
                          margin: EdgeInsets.only(right: 18.h),
                          buttonStyle: CustomButtonStyles.fillIndigo,
                          buttonTextStyle: CustomTextStyles
                              .headlineLargeInterOnPrimaryContainer,
                          onPressed: () {
                            onTapLogin(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the iphone1314Login1Screen when the action is triggered.
  onTapImgSalythirteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314Login1Screen);
  }

  /// Navigates to the iphone1314Login1Screen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314Login1Screen);
  }
}
