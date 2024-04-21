import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';

class Iphone1314HelpScreen extends StatelessWidget {
  const Iphone1314HelpScreen({Key? key})
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle11,
                  height: 50.v,
                  width: 390.h,
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(left: 123.h),
                  child: Text(
                    "contact",
                    style: theme.textTheme.displaySmall!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 117.v),
                _buildRowDescription(context),
                SizedBox(height: 83.v),
                _buildRow(context),
                SizedBox(height: 220.v),
                GestureDetector(
                  onTap: () {
                    // เพิ่มโค้ดเมื่อกดปุ่ม Back ตรงนี้
                    Navigator.pop(
                        context); // หรือใช้ Navigator.pushReplacementNamed(context, AppRoutes.iphone1314screenprofile); ก็ได้
                  },
                  child: CustomOutlinedButton(
                    width: 120.h, // ปรับขนาดปุ่มให้กว้างขึ้น
                    text: "Back",
                    margin: EdgeInsets.only(left: 27.h),
                    buttonTextStyle: theme.textTheme.bodyLarge!,
                  ),
                ),
                SizedBox(height: 35.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 84.v,
                  width: 390.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       backgroundColor: appTheme.whiteA700,
  //       body: SizedBox(
  //         width: double.maxFinite,
  //         child: SingleChildScrollView(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               CustomImageView(
  //                 imagePath: ImageConstant.imgRectangle11,
  //                 height: 50.v,
  //                 width: 390.h,
  //               ),
  //               SizedBox(height: 37.v),
  //               Padding(
  //                 padding: EdgeInsets.only(left: 123.h),
  //                 child: Text(
  //                   "contact",
  //                   style: theme.textTheme.displaySmall!.copyWith(
  //                     decoration: TextDecoration.underline,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 117.v),
  //               _buildRowDescription(context),
  //               SizedBox(height: 83.v),
  //               _buildRow(context),
  //               SizedBox(height: 220.v),
  //               CustomOutlinedButton(
  //                 width: 74.h,
  //                 text: "Back",
  //                 margin: EdgeInsets.only(left: 27.h),
  //                 buttonTextStyle: theme.textTheme.bodyLarge!,
  //               ),
  //               SizedBox(height: 35.v),
  //               CustomImageView(
  //                 imagePath: ImageConstant.imgRectangle12,
  //                 height: 84.v,
  //                 width: 390.h,
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildRowDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 49.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse4,
            height: 92.v,
            width: 99.h,
            radius: BorderRadius.circular(
              46.h,
            ),
          ),
          Container(
            width: 231.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 22.v,
              bottom: 24.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "6587073   Kantinun    Aundee\n\n",
                    style: theme.textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "Email : Kuntinun.Aun@student.student.mahidol.edu",
                    style: theme.textTheme.labelMedium,
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
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse4,
            height: 92.v,
            width: 99.h,
            radius: BorderRadius.circular(
              46.h,
            ),
          ),
          Expanded(
            child: Container(
              width: 275.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 22.v,
                bottom: 14.v,
              ),
              child: Text(
                "6587079   Thanabourdeepone Chonladavanit\n\nEmail : \nThanabourdeepone.chon@student.student.mahidol.edu",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelMedium11,
              ),
            ),
          )
        ],
      ),
    );
  }
}
