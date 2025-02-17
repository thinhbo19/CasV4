import 'package:flutter/material.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              'Mathew Anderson',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'Marketing Director',
              style: TextStyle(color: Colors.grey),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/todo-logo.png'),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
