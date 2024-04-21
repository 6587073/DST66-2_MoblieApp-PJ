import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

// const foodImg = 'assets\images\img_image_7.png';

// class MenuItemWidget extends StatelessWidget {
//   const MenuItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         // horizontal: 38.h,
//         // vertical: 1.v,

//         horizontal: 40.h,
//         vertical: 1.v,

//       ),
//       decoration: AppDecoration.outlineBlack,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgImage7,
          
//             // height: 16.v,
//             // width: 20.h,

//             height: 14.v,
//             width: 17.h,
//             margin: EdgeInsets.only(left: 4.h),
//           ),
//           SizedBox(height: 2.v),
//           Text(
//             "อาหาร",
//             style: CustomTextStyles.labelMediumSemiBold,
//           ),
//         ],
//       ),
//     );
//   }
// }


class MenuItemWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const MenuItemWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        // horizontal: 40.h,
        // vertical: 1.v,

        horizontal: 10.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 14.v,
            width: 17.h,
            margin: EdgeInsets.only(left: 4.h),
          ),
          SizedBox(height: 1.v),
          Text(
            text,
            style: CustomTextStyles.labelMediumSemiBold,
          ),
        ],
      ),
    );
  }
}
