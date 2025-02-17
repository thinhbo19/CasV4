import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 20), // Adjust the top padding here
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'DASHBOARDS',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Modern'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Analytical'),
            trailing: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('9', style: TextStyle(color: Colors.white)),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('eCommerce'),
            onTap: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'APPLICATIONS',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          ExpansionTile(
            leading: Icon(Icons.person),
            title: Text('Users'),
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 50),
                title: Text('Social Profile'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 50),
                title: Text('Profile'),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: ExpansionTile(
                  title: Text('Card'),
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 70),
                      title: Text('Style 01'),
                      onTap: () {},
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 70),
                      title: Text('Style 02'),
                      onTap: () {},
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 70),
                      title: Text('Style 03'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.analytics_outlined),
            title: Text('Analytical'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            title: Text('eCommerce'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.disabled_by_default_outlined),
            title: Text('Disable'),
            enabled: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
