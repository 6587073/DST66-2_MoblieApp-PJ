import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { tf, patitin, wallet, warn, profile, dk }


// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNav,
      activeIcon: ImageConstant.imgNav,
      title: "หนังสือ",
      type: BottomBarEnum.tf,
      onPressed: () {
        // onTapLogin(BuildContext context) {
        //   Navigator.pushNamed(context, AppRoutes.iphone1314Page);
        // }
      },
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav31x25,
      activeIcon: ImageConstant.imgNav31x25,
      title: "ปฏิทิน",
      // type: BottomBarEnum.tf,
      type: BottomBarEnum.patitin,
      onPressed: () {
        // onTapLogin(BuildContext context) {
        //   Navigator.pushNamed(context, AppRoutes.iphone1315page);
        // }
      },
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage75,
      activeIcon: ImageConstant.imgImage75,
      title: "กระเป๋าเงิน",
      type: BottomBarEnum.wallet,
      isCircle: true,
      onPressed: () {

      },
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage74,
      activeIcon: ImageConstant.imgImage74,
      title: "แจ้งเตือน",
      type: BottomBarEnum.warn,
      onPressed: () {

      },
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav1,
      activeIcon: ImageConstant.imgNav1,
      title: "โปรไฟล์",
      type: BottomBarEnum.profile,
      onPressed: () {
        
      },
    )

    // BottomMenuModel(
    //   icon: ImageConstant.imgNav1,
    //   activeIcon: ImageConstant.imgNav1,
    //   title: "โปรไฟล์",
    //   type: BottomBarEnum.dk,
    //   onPressed: () {
        
    //   },
    // )
  ];

  // void onTapLogin() {
  //   switch (bottomMenuList[selectedIndex].title) {
  //     case "หนังสือ":
  //       Navigator.pushNamed(context, AppRoutes.iphone1314Page);
  //       break;
  //     case "ปฏิทิน":
  //       Navigator.pushNamed(context, AppRoutes.iphone1315page);
  //       break;
  //     case "กระเป๋าเงิน":
  //       Navigator.pushNamed(context, AppRoutes.iphone1315page);
  //       break;
  //     case "แจ้งเตือน":
  //       Navigator.pushNamed(context, AppRoutes.iphone1315page);
  //       break;
  //     case "โปรไฟล์":
  //       Navigator.pushNamed(context, AppRoutes.iphone1315page);
  //       break;
  //     default:
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.v,
      decoration: BoxDecoration(
        color: appTheme.green500,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  )
                ],
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 31.v,
                  width: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeWhiteA700.copyWith(
                      decoration: TextDecoration.underline,
                      color: appTheme.whiteA700,
                    ),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 33.v,
                  width: 38.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.gray50,
                    ),
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }

  // onTapPatitin(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone1314LoginScreen);
  // }

  // void onTapPatitin(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone1314LoginScreen);
  // }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
    this.onPressed,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
  VoidCallback? onPressed;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
