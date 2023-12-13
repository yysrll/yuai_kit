import 'package:flutter/material.dart';
import 'package:yuai_kit/components/button/base_button.dart';
import 'package:yuai_kit/yuai_kit.dart';

class YuaiButton extends StatelessWidget {
  final String? text;
  final YuaiButtonSize size;
  final bool loading;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;

  const YuaiButton({
    super.key,
    required this.text,
    this.size = YuaiButtonSize.normal,
    this.loading = false,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
  });

  factory YuaiButton.withIcon({
    required String text,
    required IconData icon,
    YuaiButtonSize size = YuaiButtonSize.normal,
    bool loading = false,
    VoidCallback? onPressed,
  }) {
    return YuaiButton(
      text: text,
      size: size,
      loading: loading,
      icon: icon,
      onPressed: onPressed,
    );
  }

  factory YuaiButton.icon({
    required IconData icon,
    YuaiButtonSize size = YuaiButtonSize.normal,
    bool loading = false,
    VoidCallback? onPressed,
  }) {
    return YuaiButton(
      text: null,
      size: size,
      loading: loading,
      icon: icon,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      text: text,
      fontSize: size.fontSize!,
      onPressed: onPressed,
      loading: loading,
      paddingHorizontal: size.paddingHorizontal!,
      paddingVertical: size.paddingVertical!,
      height: size.height!,
      radius: size.radius!,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
      foregroundColor:
          foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          offset: const Offset(0, 2),
          blurRadius: size.blurRadius!,
        ),
      ],
      icon: icon,
      iconSize: size.iconSize!,
    );
  }
}
