enum YuaiButtonSize {
  small,
  normal,
}

extension YuaiButtonSizeExtension on YuaiButtonSize {
  static const Map<YuaiButtonSize, double> heights = <YuaiButtonSize, double>{
    YuaiButtonSize.small: 36,
    YuaiButtonSize.normal: 48,
  };
  double? get height => heights[this];

  static const Map<YuaiButtonSize, double> paddingHorizontals =
      <YuaiButtonSize, double>{
    YuaiButtonSize.small: 16,
    YuaiButtonSize.normal: 24,
  };
  double? get paddingHorizontal => paddingHorizontals[this];

  static const Map<YuaiButtonSize, double> paddingVerticals =
      <YuaiButtonSize, double>{
    YuaiButtonSize.small: 8,
    YuaiButtonSize.normal: 12,
  };
  double? get paddingVertical => paddingVerticals[this];

  static const Map<YuaiButtonSize, double> radiuses = <YuaiButtonSize, double>{
    YuaiButtonSize.small: 6,
    YuaiButtonSize.normal: 10,
  };
  double? get radius => radiuses[this];

  static const Map<YuaiButtonSize, double> blurRadiuses =
      <YuaiButtonSize, double>{
    YuaiButtonSize.small: 4,
    YuaiButtonSize.normal: 6,
  };
  double? get blurRadius => blurRadiuses[this];

  static const Map<YuaiButtonSize, double> fontSizes = <YuaiButtonSize, double>{
    YuaiButtonSize.small: 12,
    YuaiButtonSize.normal: 16,
  };
  double? get fontSize => fontSizes[this];

  static const Map<YuaiButtonSize, double> iconSizes = <YuaiButtonSize, double>{
    YuaiButtonSize.small: 14,
    YuaiButtonSize.normal: 22,
  };
  double? get iconSize => iconSizes[this];

  static const Map<YuaiButtonSize, double> textSizes = <YuaiButtonSize, double>{
    YuaiButtonSize.small: 12,
    YuaiButtonSize.normal: 16,
  };
  double? get textSize => textSizes[this];
}
