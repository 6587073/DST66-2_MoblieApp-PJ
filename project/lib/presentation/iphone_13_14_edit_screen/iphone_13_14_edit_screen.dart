import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1314EditScreen extends StatelessWidget {
  Iphone1314EditScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameSectionController = TextEditingController();

  TextEditingController lastNameSectionController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController contactnumbervaController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildCircleImageSection(context),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Edit profile",
                          style: CustomTextStyles.headlineLargeRobotoBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildRowfirstname(context),
                    SizedBox(height: 15.v),
                    _buildEmailSection(context),
                    SizedBox(height: 20.v),
                    _buildAddressSection(context),
                    SizedBox(height: 20.v),
                    _buildContactNumberSection(context),
                    SizedBox(height: 18.v),
                    _buildPasswordSection(context),
                    SizedBox(height: 17.v),
                    _buildDateOfBirthSection(context),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Row(
                          children: [
                            _buildBackButtonSection(context),
                            _buildSaveButtonSection(context)
                          ],
                        ),
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
  }

  /// Section Widget
  Widget _buildCircleImageSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 127.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: 130.adaptSize,
            width: 130.adaptSize,
            radius: BorderRadius.circular(
              65.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameSection(BuildContext context) {
    return CustomTextFormField(
        width: 174.h,
        controller: firstNameSectionController,
        hintText: "Mehrab",
        onSaved: (String? value) {
          // Do something with the saved value
        });
  }

  /// Section Widget
  Widget _buildLastNameSection(BuildContext context) {
    return CustomTextFormField(
        width: 169.h,
        controller: lastNameSectionController,
        hintText: "Bozorgi",
        onSaved: (String? value) {
          // Do something with the saved value
        });
  }

  /// Section Widget
  Widget _buildRowfirstname(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("First Name",
                    // style: theme.textTheme.titleMedium,
                    style: CustomTextStyles.titleMediumInterBlack900Bold),
                _buildFirstNameSection(context)
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Last Name",
                  // style: theme.textTheme.titleMedium,
                  style: CustomTextStyles.titleMediumInterBlack900Bold),
              SizedBox(height: 1.v),
              _buildLastNameSection(context)
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text("Email",
                // style: theme.textTheme.titleMedium,
                style: CustomTextStyles.titleMediumInterBlack900Bold),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: CustomTextFormField(
                controller: emailController,
                hintText: "Mehrabbozorgi.business@gmail.com",
                hintStyle: CustomTextStyles.titleSmallRobotoGray600,
                textInputType: TextInputType.emailAddress,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 9.v, 2.h, 6.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 37.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 11.h,
                  top: 9.v,
                  bottom: 9.v,
                ),
                onSaved: (String? value) {
                  // Do something with the saved value
                }),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Address",
              // style: theme.textTheme.titleMedium,
              style: CustomTextStyles.titleMediumInterBlack900Bold),
          SizedBox(height: 1.v),
          CustomTextFormField(
              controller: addressController,
              hintText: "33062 Zboncak isle",
              onSaved: (String? value) {
                // Do something with the saved value
              })
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactNumberSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contact Number",
              // style: theme.textTheme.titleMedium,
              style: CustomTextStyles.titleMediumInterBlack900Bold),
          SizedBox(height: 1.v),
          CustomTextFormField(
              controller: contactnumbervaController,
              hintText: "00000000000",
              hintStyle: theme.textTheme.headlineSmall!,
              textInputType: TextInputType.phone,
              contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
              onSaved: (String? value) {
                // Do something with the saved value
              })
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            // style: theme.textTheme.titleMedium,
             style:CustomTextStyles.titleMediumInterBlack900Bold

          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
              controller: passwordController,
              hintText: "sbdfbnd65sfdvb s",
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 6.h, 7.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 21.v,
                  width: 18.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 37.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 11.h,
                top: 9.v,
                bottom: 9.v,
              ),
              onSaved: (String? value) {
                // Do something with the saved value
              })
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date of Birth",
            style: CustomTextStyles.titleMediumInterBlack900Bold,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 32.h),
            child: CustomDropDown(
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              hintText: "23/05/1995",
              items: dropdownItemList,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackButtonSection(BuildContext context) {
    return CustomOutlinedButton(
      width: 74.h,
      text: "Back",
      buttonTextStyle: theme.textTheme.bodyLarge!,
      onPressed: () {
                  // Navigate to the desired screen for income
                  // Example: Navigator.pushNamed(context, '/income_page');
                  Navigator.pushNamed(context, AppRoutes.iphone1314screenprofile);
                },
    );
  }

  /// Section Widget
  Widget _buildSaveButtonSection(BuildContext context) {
    return CustomElevatedButton(
      width: 74.h,
      text: "Save",
      margin: EdgeInsets.only(left: 27.h),
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
      onPressed: () {
                  // Navigate to the desired screen for income
                  // Example: Navigator.pushNamed(context, '/income_page');
                  Navigator.pushNamed(context, AppRoutes.iphone1314screenprofile);
                },
    );
  }
}
