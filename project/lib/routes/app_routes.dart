// import 'dart:js';
// import 'dart:js';

import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/iphone_13_14_login1_screen/iphone_13_14_login1_screen.dart';
import '../presentation/iphone_13_14_login_one_screen/iphone_13_14_login_one_screen.dart';
import '../presentation/iphone_13_14_login_screen/iphone_13_14_login_screen.dart';
import '../presentation/iphone_13_14_login_two_screen/iphone_13_14_login_two_screen.dart'; // ignore_for_file: must_be_immutable

import '../presentation/iphone_13_14_page/iphone_13_14_page.dart';

import '../presentation/iphone_13_14_page_DK/iphone_13_14_page_DK.dart';

import '../presentation/iphone_13_14_screen_profile/iphone_13_14_screen_profile.dart';

import '../presentation/iphone_13_14_edit_screen/iphone_13_14_edit_screen.dart';

import '../presentation/iphone_13_14_page/widgets/menu_item_widget.dart';

import '../presentation/iphone_13_14_help_screen/iphone_13_14_help_screen.dart';

import '../presentation/iphone_13_14_page_dontknowone/iphone_13_14_page_dontknowone.dart';

import '../presentation/iphone_13_14_tab_container_screen/iphone_13_14_tab_container_screen.dart';

import '../presentation/iphone_13_15_page/iphone_13_15_page.dart';

import '../presentation/iphone_13_16_screen/iphone_13_16_screen.dart';

import '../presentation/iphone_13_15_page_warn/iphone_13_15_page_warn.dart';

import '../presentation/iphone_13_15_page_warntwo/iphone_13_15_page_warntwo.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String iphone1314LoginScreen = '/iphone_13_14_login_screen';

  static const String iphone1314Login1Screen = '/iphone_13_14_login1_screen';

  static const String iphone1314LoginOneScreen =
      '/iphone_13_14_login_one_screen';

  static const String iphone1314LoginTwoScreen =
      '/iphone_13_14_login_two_screen';

  static const String iphone1314Page = '/iphone_13_14_page';

  static const String barmenu = '/iphone_13_14_page/widgets';

  static const String iphone1314tabcontainerScreen =
      '/iphone/iphone_13_14_tab_container_screen';

  static const String iphone1315page = '/iphone_13_15_page';

  static const String iphone1314pageDK = '/iphone_13_14_page_DK';

  static const String iphone1314screenprofile = '/iphone_13_14_screen_profile';

  static const String iphone1314screenedit = '/iphone_13_14_edit_screen';

  static const String iphone1314helpscreen = '/iphone_13_14_help_screen';

  static const String iphone1314pagedontknowone =
      '/iphone_13_14_page_dontknowone';

  static const String iphone1315pagewarn = '/iphone_13_15page_warn';

  static const String iphone1315pagewarntwo = '/iphone_13_15_page_warntwo';

  static const String iphone1315pagewidgets = '/iphone_13_15_page/widgets';

  static const String iphone1316page = '/iphone_13_16page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    iphone1314LoginScreen: (context) => Iphone1314LoginScreen(),
    iphone1314Login1Screen: (context) => Iphone1314Login1Screen(),
    iphone1314LoginOneScreen: (context) => Iphone1314LoginOneScreen(),
    iphone1314LoginTwoScreen: (context) => Iphone1314LoginTwoScreen(),
    iphone1314tabcontainerScreen: (context) => Iphone1314TabContainerScreen(),
    iphone1315page: (context) => Iphone1315Page(),
    iphone1315pagewarn: (context) => Iphone1315PageWarn(),
    iphone1315pagewarntwo:(context) => Iphone1315PageWarnTwo(),
    iphone1314Page: (context) => Iphone1314Page(),
    iphone1314pagedontknowone: (context) => Iphone1314PageDontKnowOne(),
    iphone1314pageDK: (context) => Iphone1314PageDK(),
    iphone1314helpscreen: (context) => Iphone1314HelpScreen(),
    iphone1316page: (context) => Iphone1316Screen(),
    iphone1314screenprofile: (context) => Iphone1314ScreenProfile(),
    iphone1314screenedit: (context) => Iphone1314EditScreen(),
    barmenu: (context) => MenuItemWidget(
          imagePath: ImageConstant.imgImage7,
          text: "อาหาร",
        ),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => Iphone1314LoginScreen()
  };
}
