import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFFF22C3D);
  static Color get onPrimary => const Color(0xFFFFFFFF);
  static Color get onSecondary => const Color(0xE5333030);
  static Color get tertiary => const Color(0xFFE7E7E7);
  static Color get onTertiary => const Color(0xFF3DA542);
}