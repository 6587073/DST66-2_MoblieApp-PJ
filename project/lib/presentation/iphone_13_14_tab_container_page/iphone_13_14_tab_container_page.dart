//

// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
// import '../../widgets/app_bar/appbar_title.dart';
// import '../../widgets/app_bar/custom_app_bar.dart';
// // import '../iphone_13_14_page/iphone_13_14_page.dart'; // ignore_for_file: must_be_immutable
// import '../iphone_13_14_page_DK/iphone_13_14_page_DK.dart';


// class Iphone1314TabContainerPage extends StatefulWidget {
//   const Iphone1314TabContainerPage({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Iphone1314TabContainerPageState createState() =>
//       Iphone1314TabContainerPageState();
// }
// // ignore_for_file: must_be_immutable

// // ignore_for_file: must_be_immutable
// class Iphone1314TabContainerPageState extends State<Iphone1314TabContainerPage>
//     with TickerProviderStateMixin {
//   late TabController tabviewController;

//   @override
//   void initState() {
//     super.initState();
//     tabviewController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.onPrimaryContainer,
//         appBar: _buildAppBar(context),
//         body: SizedBox(
//           width: double.maxFinite,
//           child: Column(
//             children: [
//               SizedBox(height: 5.v),
//               Container(
//                 height: 49.v,
//                 width: 240.h,
//                 decoration: BoxDecoration(
//                   color: appTheme.blueGray100,
//                   borderRadius: BorderRadius.circular(
//                     20.h,
//                   ),
//                 ),
//                 child: TabBar(
//                   controller: tabviewController,
//                   labelPadding: EdgeInsets.zero,
//                   labelColor: appTheme.black900,
//                   labelStyle: TextStyle(
//                     fontSize: 11.fSize,
//                     fontFamily: 'Sarabun',
//                     fontWeight: FontWeight.w500,
//                   ),
//                   unselectedLabelColor: appTheme.black900,
//                   unselectedLabelStyle: TextStyle(
//                     fontSize: 11.fSize,
//                     fontFamily: 'Sarabun',
//                     fontWeight: FontWeight.w500,
//                   ),
//                   indicatorPadding: EdgeInsets.all(
//                     5.5.h,
//                   ),
//                   indicator: BoxDecoration(
//                     color: appTheme.green500,
//                     borderRadius: BorderRadius.circular(
//                       19.h,
//                     ),
//                   ),
//                   tabs: [
//                     Tab(
//                       child: Text(
//                         "รายงานประจำเดือน",
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         "รายงานประจำปี",
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: SizedBox(
//                   height: 645.v,
//                   child: TabBarView(
//                     controller: tabviewController,
//                     children: [Iphone1314Page(), Iphone1314Page()],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//       leadingWidth: 40.h,
//       leading: AppbarLeadingIconbutton(
//         imagePath: ImageConstant.imgImage94,
//         margin: EdgeInsets.only(
//           left: 10.h,
//           top: 34.v,
//           bottom: 5.v,
//         ),
//       ),
//       title: AppbarTitle(
//         text: "หนังสือรายรับรายจ่าย",
//         margin: EdgeInsets.only(
//           left: 11.h,
//           top: 42.v,
//           bottom: 11.v,
//         ),
//       ),
//       styleType: Style.bgFill,
//     );
//   }
// }
