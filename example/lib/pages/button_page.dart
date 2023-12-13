import 'package:flutter/material.dart';
import 'package:yuai_kit/yuai_kit.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemCount: buttons.length,
            separatorBuilder: (context, index) => const SizedBox(
                  height: 24,
                ),
            itemBuilder: (context, index) {
              final button = buttons[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      button.title,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  button.child,
                ],
              );
            }),
      ),
    );
  }
}

class ButtonExample {
  final String title;
  final Widget child;

  const ButtonExample({required this.title, required this.child});
}

final buttons = [
  ButtonExample(
    title: 'YuaiButton',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiButton(
              text: 'Button',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiButton(
              text: 'Button Small',
              onPressed: () {},
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Align(
            alignment: Alignment.center,
            child: YuaiButton(
              text: 'Button Loading',
              loading: true,
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
  ButtonExample(
    title: 'YuaiButton.icon YuaiButton.withIcon',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiButton.icon(
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiButton.withIcon(
              text: 'Button',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiButton.withIcon(
              size: YuaiButtonSize.small,
              text: 'Button Small',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
  ButtonExample(
    title: 'YuaiSecondaryButton',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton(
              text: 'Button',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton(
              text: 'Button Small',
              onPressed: () {},
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton(
              text: 'Button Loading',
              loading: true,
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
  ButtonExample(
    title: 'YuaiSecondaryButton.icon YuaiSecondaryButton.withIcon',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton.icon(
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton.withIcon(
              text: 'Button',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiSecondaryButton.withIcon(
              size: YuaiButtonSize.small,
              text: 'Button Small',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
  ButtonExample(
    title: 'YuaiOutlinedButton',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton(
              text: 'Button',
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton(
              text: 'Button Small',
              onPressed: () {},
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton(
              text: 'Button Loading',
              loading: true,
              size: YuaiButtonSize.small,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
  ButtonExample(
    title: 'YuaiOutlinedButton.icon YuaiOutlinedButton.withIcon',
    child: SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 16,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton.icon(
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton.withIcon(
              text: 'Button',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: YuaiOutlinedButton.withIcon(
              size: YuaiButtonSize.small,
              text: 'Button Small',
              icon: Icons.add,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  ),
];
