import 'package:me_admin_app/utility/custom_drawer.dart';

import '../../utility/app_color.dart';
import 'package:flutter/material.dart';

import '../../utility/custom_app_bar.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(viewName: 'My Profile'),
      drawer: CustomDrawer(),
      backgroundColor: AppColor.lightPurple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Add Control Widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
