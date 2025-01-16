import 'package:flutter/material.dart';

import '../../utility/app_color.dart';
import '../../utility/custom_app_bar.dart';
import '../../utility/custom_drawer.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(viewName: 'Event Category'),
      drawer: const CustomDrawer(),
      backgroundColor: AppColor.lightPurple,
      body: const SafeArea(
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
      floatingActionButton: Align(
        alignment: Alignment.bottomLeft, // Align at the bottom-left
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add some padding
          child: FloatingActionButton(
            mini: true,
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: AppColor.backgroundPurple,
            child: const Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
