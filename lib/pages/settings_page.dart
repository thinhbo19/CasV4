import 'package:flutter/material.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_drawer.dart';
import '../widget/custom_end_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings Page'),
      drawer: const CustomDrawer(),
      endDrawer: const CustomEndDrawer(),
      body: const Center(
        child: Text('Settings Page Content'),
      ),
    );
  }
}
