import 'package:flutter/material.dart';
import 'package:yuai_kit/yuai_kit.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            children: [
              YuaiButton(
                text: 'show',
                onPressed: () {
                  YuaiSnackBar().show(
                    context,
                    'Hello World',
                    type: YuaiSnackBarType.success,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const snackbars = [];
