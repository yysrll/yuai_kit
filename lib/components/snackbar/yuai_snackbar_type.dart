import 'package:flutter/material.dart';

enum YuaiSnackBarType {
  success,
  error,
  warning,
  info,
}

extension YuaiSnackBarTypeExtension on YuaiSnackBarType {
  static const Map<YuaiSnackBarType, IconData> icons = <YuaiSnackBarType, IconData>{
    YuaiSnackBarType.success: Icons.check_circle,
    YuaiSnackBarType.error: Icons.error,
    YuaiSnackBarType.warning: Icons.warning,
    YuaiSnackBarType.info: Icons.info,
  };
  IconData? get icon => icons[this];

  static const Map<YuaiSnackBarType, Color> colors = <YuaiSnackBarType, Color>{
    YuaiSnackBarType.success: Colors.green,
    YuaiSnackBarType.error: Colors.red,
    YuaiSnackBarType.warning: Colors.orange,
    YuaiSnackBarType.info: Colors.blue,
  };
  Color? get color => colors[this];

  static const Map<YuaiSnackBarType, Color> foregroundColors = <YuaiSnackBarType, Color>{
    YuaiSnackBarType.success: Colors.white,
    YuaiSnackBarType.error: Colors.white,
    YuaiSnackBarType.warning: Colors.white,
    YuaiSnackBarType.info: Colors.white,
  };
  Color? get foregroundColor => foregroundColors[this];
}