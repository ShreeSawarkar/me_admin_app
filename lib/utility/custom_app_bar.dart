import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/user.dart';
import '../view/home.dart';
import 'app_color.dart';
import 'constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? viewName;
  final bool? backButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({super.key, this.viewName, this.backButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: backButton == false
              ? Builder(
                  builder: (context) => IconButton(
                    padding: const EdgeInsets.all(2),
                    //constraints: const BoxConstraints(),
                    onPressed: () {

                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu, color: AppColor.darkPurple),
                  ),
                )
              :  Padding(
                    padding: const EdgeInsets.all(10.0), // Add some padding
                    child: FloatingActionButton(
                      mini: false,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: AppColor.backgroundPurple,
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),

        ),
        title: Center(
          child: viewName != null
              ? Text(
                  viewName ?? '',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkPurple),
                )
              : const ImageIcon(
                  AssetImage("assets/images/title_name.png"),
                  size: 100.0,
                  color: AppColor.darkPurple,
                ),
        ),
        actions: [
          SizedBox(
              width: 80,
              child: InkWell(
                onTap: () {
                  Get.to(const HomeScreen());
                },
                child: const ImageIcon(
                  AssetImage("assets/images/logo.png"),
                  size: 100.0,
                  color: AppColor.darkPurple,
                ),
              ))
        ]);
  }
}
