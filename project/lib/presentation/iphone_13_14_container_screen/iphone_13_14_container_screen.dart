//

// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// import '../../widgets/custom_bottom_bar.dart';
// import '../iphone_13_14_tab_container_page/iphone_13_14_tab_container_page.dart'; // ignore_for_file: must_be_immutable

// // ignore_for_file: must_be_immutable
// class Iphone1314ContainerScreen extends StatelessWidget {
//   Iphone1314ContainerScreen({Key? key})
//       : super(
//           key: key,
//         );

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.onPrimaryContainer,
//         body: Navigator(
//           key: navigatorKey,
//           initialRoute: AppRoutes.iphone1314TabContainerPage,
//           onGenerateRoute: (routeSetting) => PageRouteBuilder(
//             pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
//             transitionDuration: Duration(seconds: 0),
//           ),
//         ),
//         bottomNavigationBar: _buildBottomBar(context),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildBottomBar(BuildContext context) {
//     return CustomBottomBar(
//       onChanged: (BottomBarEnum type) {
//         Navigator.pushNamed(
//             navigatorKey.currentContext!, getCurrentRoute(type));
//       },
//     );
//   }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.tf:
//         return AppRoutes.iphone1314TabContainerPage;
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.iphone1314TabContainerPage:
//         return Iphone1314TabContainerPage();
//       default:
//         return DefaultWidget();
//     }
//   }
// }
