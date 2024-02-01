import 'package:flutter/material.dart';

class YuaiTab extends StatelessWidget {
  final List<Widget> tabs;

  const YuaiTab({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs,
    );
  }
}
