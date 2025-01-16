import 'package:flutter/material.dart';
import 'app_color.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: AppColor.backgroundPurple,
          ),
          child: Text('Hello'),
        ),
        ListTile(
          title: const Text('Event Category'),
          onTap: () {
            Navigator.pushNamed(context, '/Category');
          },
        ),
        ListTile(
          title: const Text('Event Item'),
          onTap: () {
            Navigator.pushNamed(context, '/Item');
          },
        ),
        ListTile(
          title: const Text('My Profile'),
          onTap: () {
            Navigator.pushNamed(context, '/MyProfile');
          },
        ),
        ListTile(
          title: const Text('About Us'),
          onTap: () {
            Navigator.pushNamed(context, '/AboutUs');
          },
        ),
      ]),
    );
  }
}
