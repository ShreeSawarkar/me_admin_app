import 'package:flutter/material.dart';

import '../../utility/app_color.dart';
import '../../utility/custom_app_bar.dart';
import '../../utility/custom_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(viewName: 'About Us'),
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
