import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String? text;
  final double fontSize;
  final VoidCallback? onPressed;
  final bool loading;
  final double paddingVertical;
  final double paddingHorizontal;
  final double height;
  final double radius;
  final Color backgroundColor;
  final Color foregroundColor;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final IconData? icon;
  final double iconSize;

  const BaseButton({
    super.key,
    this.text,
    this.fontSize = 16,
    this.onPressed,
    this.loading = false,
    this.paddingVertical = 12,
    this.paddingHorizontal = 24,
    this.height = 0,
    this.radius = 8,
    required this.backgroundColor,
    required this.foregroundColor,
    this.border,
    this.boxShadow,
    this.icon,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final padding = text != null
        ? EdgeInsets.only(
            left: paddingHorizontal - (icon != null ? 4 : 0),
            top: paddingVertical,
            right: paddingHorizontal,
            bottom: paddingVertical,
          )
        : EdgeInsets.all(paddingVertical);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        height: height,
        constraints: BoxConstraints(
          maxHeight: height,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: border,
          boxShadow: boxShadow,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null && !loading) ...[
              Icon(
                icon,
                size: iconSize,
                color: foregroundColor,
              ),
              if (text != null)
                const SizedBox(
                  width: 8,
                ),
            ],
            if (loading) ...[
              SizedBox(
                width: iconSize,
                height: iconSize,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    foregroundColor,
                  ),
                ),
              ),
              if (text != null)
                const SizedBox(
                  width: 8,
                ),
            ],
            if (text != null) ...[
              Text(
                text!,
                style: TextStyle(
                  fontSize: fontSize,
                  color: foregroundColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
