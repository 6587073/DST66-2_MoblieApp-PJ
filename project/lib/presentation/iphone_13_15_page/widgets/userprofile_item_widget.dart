import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
Widget build(BuildContext context) {
  return SizedBox(
    width: 42.h,
    child: Padding(
      padding: EdgeInsets.only(bottom: 0.5.v), // ปรับจาก 1.v เป็น 0.5.v
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 23.v,
                  width: 8.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "B",
                          style: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          child: Divider(
                            color: theme.colorScheme.primaryContainer,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: FittedBox(
                    child: Text(
                      "300",
                      style: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "ค่าใช้จ่าย",
            style: CustomTextStyles.bodySmallPeraltaBlack900,
          )
        ],
      ),
    ),
  );
}


  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     width: 42.h,
  //     child: Padding(
  //       padding: EdgeInsets.only(bottom: 1.v),
  //       child: Column(
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 // height: 23.v,
  //                 height: 23.v,
  //                 width: 8.h,
  //                 child: Stack(
  //                   alignment: Alignment.center,
  //                   children: [
  //                     Align(
  //                       alignment: Alignment.center,
  //                       child: Text(
  //                         "B",
  //                         style: CustomTextStyles
  //                             .titleSmallPoppinsPrimaryContainer,
  //                       ),
  //                     ),
  //                     Align(
  //                       alignment: Alignment.center,
  //                       child: SizedBox(
  //                         child: Divider(
  //                           color: theme.colorScheme.primaryContainer,
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(left: 3.h),
  //                 child: Text(
  //                   "300",
  //                   style: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
  //                 ),
  //               )
  //             ],
  //           ),
  //           Text(
  //             "ค่าใช้จ่าย",
  //             style: CustomTextStyles.bodySmallPeraltaBlack900,
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
