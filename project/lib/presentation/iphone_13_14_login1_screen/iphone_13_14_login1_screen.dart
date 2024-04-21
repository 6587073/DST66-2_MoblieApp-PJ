import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';

import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable
import 'package:kantinunaundee_s_application1/presentation/profile/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

// ignore_for_file: must_be_immutable
class Iphone1314Login1Screen extends StatelessWidget {
  Iphone1314Login1Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.green10001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 58.v,
                ),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "money ",
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "metang",
                            style: CustomTextStyles.displayMediumOnError,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 59.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Login now",
                          style: CustomTextStyles.displayMediumBlack900Bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildLoginWithGoogle(context),
                    SizedBox(height: 14.v),
                    _buildLoginWithFacebook(context),
                    SizedBox(height: 20.v),
                    _buildLoginWithLine(context),
                    SizedBox(height: 25.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 113.h),
                        child: Text(
                          "or Login with Email",
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 98.h,
                        child: Divider(
                          color: appTheme.black900.withOpacity(0.25),
                          indent: 3.h,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 129.h,
                        child: Divider(
                          color: appTheme.black900.withOpacity(0.25),
                          endIndent: 34.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildRememberMeColumn(context),
                    SizedBox(height: 28.v),
                    _buildLoginButton(context),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 26.h,
                        right: 42.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Not registered yet?",
                                  style: CustomTextStyles.labelLargeBlack900_2,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Create an account",
                                  style: CustomTextStyles.labelLargeIndigo500,
                                ),
                                TextSpan(
                                  text: " ",
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtSignup(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "SignUp",
                                style: CustomTextStyles.labelLargePinkA400
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();

            String? username = profile.username;
            String? email = profile.email;
            String? phonenumber = profile.phonenumber;
            String? password = profile.password;

            _formKey.currentState!.reset();
            print(
                "username = $username email = $email phone = $phonenumber password = $password");

            onTapLoginButton(context);
          }
          // if (_formKey.currentState != null) {
          // ใช้งาน reset หลังจากบันทึกค่า profile

          // }
        },
      text: "Login with Google",
      margin: EdgeInsets.only(
        left: 5.h,
        right: 17.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 31.v,
          width: 30.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainerSemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebook(BuildContext context) {
    return CustomElevatedButton(
      text: "Login with Facebook",
      margin: EdgeInsets.only(
        left: 5.h,
        right: 17.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage6,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainerSemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildLoginWithLine(BuildContext context) {
    return CustomElevatedButton(
      text: "Login with Line",
      margin: EdgeInsets.only(
        left: 5.h,
        right: 17.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage630x30,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainerSemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "Email",
              style: CustomTextStyles.titleMediumInterBlack900SemiBold,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 19.h),
            child: CustomTextFormField(
              validator: MultiValidator([
                RequiredValidator(errorText: "กรุณาป้อนบัญชีผู้ใช้"),
                EmailValidator(errorText: "รูปแบบอีเมลล์ไม่ถูกต้อง")
              ]),
              controller: emailController,
              hintText: "Enter your email id",
              hintStyle: CustomTextStyles.titleSmallInterBlack90015,
              textInputType: TextInputType.emailAddress,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 9.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
              fillColor: theme.colorScheme.primary,
              onSaved: (String? email) {
                // เพิ่มเครื่องหมาย ? ที่นี่
                if (email != null) {
                  profile.email = email;
                }
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "Password",
              style: CustomTextStyles.titleMediumInterBlack900SemiBold,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 19.h),
            child: CustomTextFormField(
              validator: RequiredValidator(errorText: "กรุณาป้อนพาสเวิด"),
              controller: passwordController,
              hintText: "Enter your password",
              hintStyle: CustomTextStyles.titleSmallInterBlack90015,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 7.v, 9.h, 2.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgBasileyeclosedsolid,
                  height: 28.v,
                  width: 27.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 37.v,
              ),
              obscureText: true,
              contentPadding: EdgeInsets.only(
                left: 13.h,
                top: 9.v,
                bottom: 9.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
              fillColor: theme.colorScheme.primary,
              onSaved: (String? password) {
                // เพิ่มเครื่องหมาย ? ที่นี่
                if (password != null) {
                  profile.password = password;
                }
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildEmailColumn(context),
          SizedBox(height: 11.v),
          _buildPasswordColumn(context),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Remember Me",
                  value: rememberMe,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    rememberMe = value;
                  },
                ),
                Text(
                  "Forgot Password?",
                  style: CustomTextStyles.labelLargeIndigo500SemiBold,
                )
              ],
            ),
          ),
          SizedBox(height: 7.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      text: "Login",
      margin: EdgeInsets.only(
        left: 18.h,
        right: 17.h,
      ),
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: CustomTextStyles.titleLargeInter,
      onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();

            String? username = profile.username;
            String? email = profile.email;
            String? phonenumber = profile.phonenumber;
            String? password = profile.password;

            _formKey.currentState!.reset();
            print(
                "username = $username email = $email phone = $phonenumber password = $password");

            onTapLoginButton(context);
          }
          // if (_formKey.currentState != null) {
          // ใช้งาน reset หลังจากบันทึกค่า profile

          // }
        }
      // onPressed: () {
      //   onTapLoginButton(context);
      // },
    );
  }

  /// Navigates to the iphone1314LoginTwoScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314LoginTwoScreen);
  }

  /// Navigates to the iphone1314LoginOneScreen when the action is triggered.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314LoginOneScreen);
  }
}
