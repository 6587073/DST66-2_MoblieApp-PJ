import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kantinunaundee_s_application1/presentation/profile/profile.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1314LoginOneScreen extends StatelessWidget {
  Iphone1314LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Future<FirebaseApp> firebase = Firebase.initializeApp();

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
                  horizontal: 25.h,
                  vertical: 57.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Create an account",
                      style: CustomTextStyles.headlineSmallBlack900,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Connect with your friends today!",
                      style: CustomTextStyles.titleSmallManropePrimaryContainer,
                    ),
                    SizedBox(height: 33.v),
                    _buildUserName(context),
                    SizedBox(height: 28.v),
                    _buildEmail(context),
                    SizedBox(height: 28.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 28.v),
                    _buildPassword(context),
                    SizedBox(height: 29.v),
                    _buildSignup(context),
                    SizedBox(height: 29.v),
                    _buildButtonRow(context),
                    SizedBox(height: 31.v),
                    _buildLinefield(context),
                    SizedBox(height: 9.v),
                    _buildSingnupwith(context),
                    SizedBox(height: 14.v),
                    _buildSingnupwith1(context),
                    SizedBox(height: 20.v),
                    _buildSingnupwith2(context),
                    SizedBox(height: 28.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 36.h,
                        right: 39.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: CustomTextStyles.titleMediumPoppinsBlack900
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "Login",
                              style: CustomTextStyles.titleMediumPoppinsBlueA400
                                  .copyWith(
                                decoration: TextDecoration.underline,
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
    // return FutureBuilder(
    //     future: firebase,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasError) {
    //         return Scaffold(
    //           appBar: AppBar(
    //             title: Text("Error"),
    //           ),
    //           body: Center(child: Text("${snapshot.error}")),
    //         );
    //         // print("${snapshot.error}");
    //       }
    //       return Scaffold(
    //         body: Center(child: CircularProgressIndicator()),
    //       );
    //     });
  }

  // return FutureBuilder(
  //     future: firebase,
  //     builder: (context, snapshot) {
  //       if (snapshot.hasError) {
  //         return Scaffold(
  //           appBar: AppBar(
  //             title: Text("Error"),
  //           ),
  //           body: Center(child: Text("${snapshot.error}")),

  //         );
  //         print("${snapshot.error}");
  //       }
  //       return Scaffold(
  //         body: Center(
  //           child: CircularProgressIndicator()),
  //       );
  // else {
  //   // ในกรณีที่ไม่มี error ก็ return  Widget ที่ต้องการแสดงผล เช่น CircularProgressIndicator หรือ Text("Loading...")
  //   return CircularProgressIndicator(); // หรือสร้าง Widget ตามต้องการ
  // }
  // }

// });
  // return SafeArea(
  //   child: Scaffold(
  //     backgroundColor: appTheme.green10001,
  //     resizeToAvoidBottomInset: false,
  //     body: SizedBox(
  //       width: SizeUtils.width,
  //       child: SingleChildScrollView(
  //         padding: EdgeInsets.only(
  //           bottom: MediaQuery.of(context).viewInsets.bottom,
  //         ),
  //         child: Form(
  //           key: _formKey,
  //           child: Container(
  //             width: double.maxFinite,
  //             padding: EdgeInsets.symmetric(
  //               horizontal: 25.h,
  //               vertical: 57.v,
  //             ),
  //             child: Column(
  //               children: [
  //                 Text(
  //                   "Create an account",
  //                   style: CustomTextStyles.headlineSmallBlack900,
  //                 ),
  //                 SizedBox(height: 7.v),
  //                 Text(
  //                   "Connect with your friends today!",
  //                   style: CustomTextStyles.titleSmallManropePrimaryContainer,
  //                 ),
  //                 SizedBox(height: 33.v),
  //                 _buildUserName(context),
  //                 SizedBox(height: 28.v),
  //                 _buildEmail(context),
  //                 SizedBox(height: 28.v),
  //                 _buildPhoneNumber(context),
  //                 SizedBox(height: 28.v),
  //                 _buildPassword(context),
  //                 SizedBox(height: 29.v),
  //                 _buildSignup(context),

  //                 SizedBox(height: 29.v),
  //                 _buildButtonRow(context),

  //                 SizedBox(height: 31.v),
  //                 _buildLinefield(context),
  //                 SizedBox(height: 9.v),
  //                 _buildSingnupwith(context),
  //                 SizedBox(height: 14.v),
  //                 _buildSingnupwith1(context),
  //                 SizedBox(height: 20.v),
  //                 _buildSingnupwith2(context),
  //                 SizedBox(height: 28.v),
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     left: 36.h,
  //                     right: 39.h,
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Text(
  //                         "Already have an account? ",
  //                         style: CustomTextStyles.titleMediumPoppinsBlack900
  //                             .copyWith(
  //                           decoration: TextDecoration.underline,
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(left: 10.h),
  //                         child: Text(
  //                           "Login",
  //                           style: CustomTextStyles.titleMediumPoppinsBlueA400
  //                               .copyWith(
  //                             decoration: TextDecoration.underline,
  //                           ),
  //                         ),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(height: 5.v)
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
  // }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        // validator: RequiredValidator(errorText: "กรุณาป้อนบัญชีผู้ใช้"),
        validator: MultiValidator([
          RequiredValidator(errorText: "กรุณาป้อนบัญชีผู้ใช้"),
        ]),
        controller: userNameController,
        hintText: "Enter your Username", // ใช้ hintText ใน decoration
        onSaved: (String? username) {
          if (username != null) {
            profile.username = username;
          }
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        validator: MultiValidator([
          RequiredValidator(errorText: "กรุณาป้อนบัญชีผู้ใช้"),
          EmailValidator(errorText: "รูปแบบอีเมลล์ไม่ถูกต้อง")
        ]),
        controller: emailController,
        hintText: "Enter Your Email",
        textInputType: TextInputType.emailAddress,
        onSaved: (String? email) {
          // เพิ่มเครื่องหมาย ? ที่นี่
          if (email != null) {
            profile.email = email;
          }
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        validator: RequiredValidator(errorText: "กรุณาป้อนเบอร์มือถือ"),
        controller: phoneNumberController,
        hintText: "Enter Your Phone Number",
        textInputType: TextInputType.phone,
        onSaved: (String? phonenumber) {
          // เพิ่มเครื่องหมาย ? ที่นี่
          if (phonenumber != null) {
            profile.phonenumber = phonenumber;
          }
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 11.h,
      ),
      child: CustomTextFormField(
        validator: RequiredValidator(errorText: "กรุณาป้อนพาสเวิด"),
        controller: passwordController,
        hintText: "Enter Your Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.v, 13.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEyePasswordLogo,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.only(
          left: 11.h,
          top: 12.v,
          bottom: 12.v,
        ),
        onSaved: (String? password) {
          // เพิ่มเครื่องหมาย ? ที่นี่
          if (password != null) {
            profile.password = password;
          }
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        text: "Sign Up",
        margin: EdgeInsets.only(
          left: 17.h,
          right: 11.h,
        ),
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.titleMediumPoppinsOnPrimaryContainer,
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

            onTapSignupButton(context);
          }
          // if (_formKey.currentState != null) {
          // ใช้งาน reset หลังจากบันทึกค่า profile

          // }
        }
        // onPressed: () {
        // onTapSignupButton(context);
        //   _formKey.currentState!.save();
        //   print(
        //       "username = ${profile.username} email = ${profile.email} phone = ${profile.phonenumber} password = ${profile.password}");
        //   _formKey.currentState.reset();
        // },
        );
  }

  /// Section Widget
  Widget _buildLinefield(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 116.h,
              child: Divider(
                color: appTheme.black900.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "Or With",
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 126.h,
              child: Divider(
                color: appTheme.black900.withOpacity(0.5),
                indent: 10.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSingnupwith(BuildContext context) {
    return CustomElevatedButton(
      text: "singn up with Google",
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
  Widget _buildSingnupwith1(BuildContext context) {
    return CustomElevatedButton(
      text: "singn up with Facebook",
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
  Widget _buildSingnupwith2(BuildContext context) {
    return CustomElevatedButton(
      text: "singn up with Line",
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

  Widget _buildButtonRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // _buildButton(context, "รายรับ", onTapIncome),
          // _buildButton(context, "รายจ่าย", onTapExpense),
        _buildButton(context, "รายรับ", () => onTapIncome(context)), // ส่ง BuildContext เข้าไปใน onTapIncome
        _buildButton(context, "รายจ่าย", () => onTapExpense(context)), // ส่ง BuildContext เข้าไปใน onTapExpense
        
        ],
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return ElevatedButton(
      // onPressed: onPressed,
      onPressed: () {
        onPressed(); // เรียกใช้ onPressed โดยไม่ส่งพารามิเตอร์
      },
      child: Text(text),
    );
  }

  onTapSignupButton(BuildContext context) {
    // iphone1314screenedit
    //iphone1314Page
    Navigator.pushNamed(context, AppRoutes.iphone1314Page);
  }

  void onTapIncome(BuildContext context) {
    // จัดการการกดปุ่ม "รายรับ" ตรงนี้
    Navigator.pushNamed(context, AppRoutes.iphone1314Page);
  }

  void onTapExpense(BuildContext context) {
    // จัดการการกดปุ่ม "รายจ่าย" ตรงนี้
    Navigator.pushNamed(context, AppRoutes.iphone1314Page);
  }
}
