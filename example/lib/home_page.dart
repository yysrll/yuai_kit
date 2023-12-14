import 'package:example/helpers/models/menu_example.dart';
import 'package:example/pages/button_page.dart';
import 'package:example/pages/text_field_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yuai Kit'),
      ),
      body: ListView.separated(
          itemCount: menus.length,
          separatorBuilder: (context, index) => const SizedBox(
                height: 12,
              ),
          itemBuilder: (context, index) {
            final menu = menus[index];
            return ListTile(
              title: Text(
                menu.title,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              tileColor: Theme.of(context).colorScheme.primary,
              trailing: Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => menu.child,
                  ),
                );
              },
            );
          }),
    );
  }
}

const menus = [
  MenuExample(
    title: 'Button',
    child: ButtonPage(),
  ),
  MenuExample(
    title: 'TextField',
    child: TextFieldPage(),
  ),
];
