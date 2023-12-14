import 'package:flutter/material.dart';
import 'package:yuai_kit/components/snackbar/yuai_snackbar_content.dart';
import 'package:yuai_kit/yuai_kit.dart';

class YuaiSnackBar {
  static YuaiSnackBar? _instance;

  YuaiSnackBar._internal() {
    _instance = this;
  }

  factory YuaiSnackBar() => _instance ?? YuaiSnackBar._internal();

  void show(
    BuildContext context,
    String message, {
    YuaiSnackBarType? type,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(16),
        padding: EdgeInsets.zero,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 3),
        content: YuaiSnackBarContent(
          message,
          type: type,
        ),
      ),
    );
  }
}
