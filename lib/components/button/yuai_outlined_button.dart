import 'package:flutter/material.dart';
import 'package:yuai_kit/components/button/base_button.dart';
import 'package:yuai_kit/yuai_kit.dart';

class YuaiOutlinedButton extends StatelessWidget {
  final String? text;
  final YuaiButtonSize size;
  final bool loading;
  final IconData? icon;
  final VoidCallback? onPressed;

  const YuaiOutlinedButton({
    super.key,
    required this.text,
    this.size = YuaiButtonSize.normal,
    this.loading = false,
    this.icon,
    this.onPressed,
  });

  factory YuaiOutlinedButton.withIcon({
    required String text,
    required IconData icon,
    YuaiButtonSize size = YuaiButtonSize.normal,
    bool loading = false,
    VoidCallback? onPressed,
  }) {
    return YuaiOutlinedButton(
      text: text,
      size: size,
      loading: loading,
      icon: icon,
      onPressed: onPressed,
    );
  }

  factory YuaiOutlinedButton.icon({
    required IconData icon,
    YuaiButtonSize size = YuaiButtonSize.normal,
    bool loading = false,
    VoidCallback? onPressed,
  }) {
    return YuaiOutlinedButton(
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
      backgroundColor: Colors.transparent,
      foregroundColor: Theme.of(context).colorScheme.primary,
      border: Border.all(
        color: Colors.grey.shade300,
      ),
      icon: icon,
      iconSize: size.iconSize!,
    );
  }
}
