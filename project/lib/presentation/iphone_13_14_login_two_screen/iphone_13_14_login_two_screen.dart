import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1314LoginTwoScreen extends StatelessWidget {
  Iphone1314LoginTwoScreen({Key? key})
      : super(
          key: key,
        );

  bool yomRamNgueanCha = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.green10001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 19.h,
            top: 68.v,
            right: 19.h,
          ),
          child: Column(
            children: [
              Text(
                "welcome",
                style: CustomTextStyles.displayMediumManropeBlack900,
              ),
              SizedBox(height: 49.v),
              _buildColumndescripti(context),
              SizedBox(height: 83.v),
              _buildYomRamNgueanCha(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 43.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 47.v,
                      width: 124.h,
                      text: "Back",
                      buttonStyle: CustomButtonStyles.fillGreen,
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      onPressed: () {
                        onTapBack(context);
                      },
                    ),
                    CustomElevatedButton(
                      height: 47.v,
                      width: 123.h,
                      text: "Next",
                      margin: EdgeInsets.only(left: 30.h),
                      buttonStyle: CustomButtonStyles.fillGreen,
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      onPressed: () {
                        onTapNext(context);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndescripti(BuildContext context) {
    return Container(
      width: 352.h,
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 19.v),
          Container(
            width: 342.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "ยอมรับข้อกำหนดและเงื่อนไข:\r\n",
                    style: CustomTextStyles.titleSmallBlack900.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: "\n",
                    style: CustomTextStyles.labelMediumSemiBold11_1,
                  ),
                  TextSpan(
                    text:
                        "ผู้ใช้เข้าสู่ระบบแอปพลิเคชันและต้องอ่านและยอมรับ\nข้อกำหนดและเงื่อนไขการใช้งาน\r\n\nการยอมรับข้อกำหนดและเงื่อนไขเป็นการยืนยันว่าผู้ใช้ยินยอมปฏิบัติ\nตามข้อกำหนดและเงื่อนไขที่กำหนดไว้ รวมถึงนโยบายความเป็นส่วนตัว\nและการใช้ข้อมูลส่วนบุคคลในแอปพลิเคชัน\n\r\nหากผู้ใช้ไม่ยอมรับข้อกำหนดและเงื่อนไขการใช้งาน อาจไม่สามารถ\nเข้าถึงและใช้งานแอปพลิเคชันได้\n\nผู้ใช้ยินยอมให้แอปพลิเคชันเก็บข้อมูลส่วนบุคคลเพื่อการใช้งาน และ\nยินยอมที่จะปฏิบัติตามนโยบายความเป็นส่วนตัวของแอปพลิเคชัน\r\n\nแอปพลิเคชันมีมาตรการความปลอดภัยที่เหมาะสมเพื่อปกป้องข้อมูล\nส่วนบุคคลของผู้ใช้ และผู้ใช้ยอมรับความเสี่ยงที่เกี่ยวข้องกับการ\nใช้งานอินเทอร์เน็ตและแอปพลิเคชัน\n",
                    style: CustomTextStyles.labelLargeSarabunBlack900SemiBold,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYomRamNgueanCha(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 53.h,
        ),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "ยอมรัมเงื่อนไขและข้อกำหนด",
          value: yomRamNgueanCha,
          textStyle: CustomTextStyles.titleLargeManropeBlack900,
          onChange: (value) {
            yomRamNgueanCha = value;
          },
        ),
      ),
    );
  }

  /// Navigates to the iphone1314Login1Screen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314Login1Screen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314Page);
  }
}
