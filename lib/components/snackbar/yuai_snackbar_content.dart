import 'package:flutter/material.dart';
import 'package:yuai_kit/yuai_kit.dart';

class YuaiSnackBarContent extends StatelessWidget {
  const YuaiSnackBarContent(
    this.message, {
    super.key,
    this.type,
  });

  final String message;
  final YuaiSnackBarType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: type?.color ?? Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            type?.icon ?? Icons.info_outline_rounded,
            color: type?.foregroundColor ??
                Theme.of(context).colorScheme.background,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(child: Text(message)),
        ],
      ),
    );
  }
}
