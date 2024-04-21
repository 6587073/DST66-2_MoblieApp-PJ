import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class GridgrouptextItemWidget extends StatelessWidget {
  const GridgrouptextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage30,
            height: 15.adaptSize,
            width: 15.adaptSize,
          ),
          Text(
            "เงินเก็บ",
            style: CustomTextStyles.labelMediumInter,
          )
        ],
      ),
    );
  }
}
