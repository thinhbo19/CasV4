import 'package:flutter/material.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_drawer.dart';
import '../widget/custom_end_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Home Page'),
      drawer: const CustomDrawer(),
      endDrawer: const CustomEndDrawer(),
      body: const Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}
