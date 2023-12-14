import 'package:flutter/material.dart';
import 'package:yuai_kit/yuai_kit.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              YuaiTextField(
                label: 'Text Field',
                hintText: 'Hint Text',
              ),
              SizedBox(
                height: 24,
              ),
              YuaiTextField(
                label: 'With Icon',
                icon: Icons.email,
                hintText: 'Email',
              ),
              SizedBox(
                height: 24,
              ),
              YuaiTextField(
                label: 'With Prefix - Suffix Icon',
                prefixIcon: Icon(
                  Icons.password_rounded,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                hintText: 'Password',
              ),
              SizedBox(
                height: 24,
              ),
              YuaiTextField(
                label: 'Disabled',
                prefixIcon: Icon(
                  Icons.password_rounded,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                hintText: 'Password',
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
