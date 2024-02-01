import 'package:flutter/material.dart';
import 'package:yuai_kit/yuai_kit.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs'),
      ),
      body: ListView(
        children: const [
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                YuaiTab(
                  tabs: [
                    Tab(text: 'In Progress'),
                    Tab(text: 'Done'),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text('In Progress'),
                      ),
                      Center(
                        child: Text('Done'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
