import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles._();
  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  //Black
  TextStyle get textSmallCommonBlack => TextStyle(
        color: AppColors.onSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 0,
      );

  TextStyle get textDefaultBlack => TextStyle(
        color: AppColors.onSecondary,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 0,
      );

  //Green
  TextStyle get textSmallCommonGreen => TextStyle(
        color: AppColors.onTertiary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 0,
      );
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
