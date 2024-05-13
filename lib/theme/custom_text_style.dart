import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodySmallBluegray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodySmallBluegray1000110 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallLightblue700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue700,
        fontSize: 10.fSize,
      );
  static get bodySmallLightblue700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
// Label text style
  static get labelLargeBlue200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue200,
        fontSize: 12.fSize,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get labelLargeWhiteA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
// Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumLightblue700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}
