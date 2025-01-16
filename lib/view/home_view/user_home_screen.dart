import 'package:me_admin_app/utility/custom_drawer.dart';

import '../../core/data/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utility/app_color.dart';
import '../../utility/custom_app_bar.dart';
import 'components/poster_section.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.backgroundPurple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Aligns content at both ends
                  children: [
                    Expanded(
                      child: Text(
                        "Hello Shree",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.purple,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.wallet,
                        color: Colors.purple,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                /*Text(
                  "Lets gets somethings?",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),*/
                const PosterSection(),
                Text(
                  "Top Matches",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
