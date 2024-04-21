import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get barlow {
    return copyWith(
      fontFamily: 'Barlow',
    );
  }
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sarabun {
    return copyWith(
      fontFamily: 'Sarabun',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get peralta {
    return copyWith(
      fontFamily: 'Peralta',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static get labelLargeSarabunOnPrimaryContainer =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get labelLargeSarabunOnPrimaryContainerr =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: appTheme.black900,
        // color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get labelMediumInter => theme.textTheme.labelMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  // Body text style
  static get titleMediumInterGray800 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumInterBlack900Bold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoGray600 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeRobotoBlack900 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 18.fSize,
      );
  static get barlowBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).barlow;
// Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
    static get bodySmallPeraltaBlack900 =>
      theme.textTheme.bodySmall!.peralta.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get displayMediumBlack900Bold =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumManropeBlack900 =>
      theme.textTheme.displayMedium!.manrope.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumOnError => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
// Headline text style
  static get headlineLargeSarabunOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.sarabun.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSarabunOnPrimaryContainerr =>
      theme.textTheme.headlineLarge!.sarabun.copyWith(
        color: appTheme.black900,
        // color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeInter =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeGray600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get headlineLargeInterOnError =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeInterOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineLargeInterSecondaryContainer =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeInter_1 => theme.textTheme.headlineLarge!.inter;
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeInterWhiteA700_1 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
// Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 12.fSize,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeGray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelLargeGray80001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelLargeIndigo500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo500,
      );
  static get bodySmallIndigo50010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo500,
        fontSize: 10.fSize,
      );
  static get bodySmallIndigo500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo500,
        fontSize: 8.fSize,
      );
  static get labelLargeIndigo500SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainerSemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePinkA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pinkA400,
      );
  static get labelLargeSarabunBlack900 =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: appTheme.black900.withOpacity(0.2),
        fontSize: 12.fSize,
      );
  static get labelLargeSarabunBlack900SemiBold =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSarabunBlack900_1 =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: appTheme.black900.withOpacity(0.95),
      );
  static get labelLargeSarabunOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterWhiteA70001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get sarabunGray600 => TextStyle(
        color: appTheme.gray600,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).sarabun;
  static get sarabunBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).sarabun;
  static get labelMediumInterOnPrimaryContainer =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold11_1 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.64),
      );
  static get titleLargeSarabunWhiteA700 =>
      theme.textTheme.titleLarge!.sarabun.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeManropeBlack900 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSarabunBlack900 =>
      theme.textTheme.titleMedium!.sarabun.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumInterBlack900Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSarabunWhiteA700 =>
      theme.textTheme.titleMedium!.sarabun.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumInterBlack900SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get titleMediumPoppinsBlueA400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueA400,
      );
  static get titleMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.9),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerr =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlack90015 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 15.fSize,
      );
  static get titleSmallManropePrimaryContainer =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.42),
        fontSize: 15.fSize,
      );
  static get titleSmallPoppinsBlack90015 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeSarabunWhiteA700 =>
      theme.textTheme.labelLarge!.sarabun.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get labelLargeInterWhiteA700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}
