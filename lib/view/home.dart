import 'package:animations/animations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me_admin_app/view/event/add_event_item.dart';
import 'package:me_admin_app/view/home_view/user_home_screen.dart';
import '../utility/app_color.dart';
import '../utility/app_data.dart';
import '../utility/custom_app_bar.dart';
import '../utility/page_wrapper.dart';
import 'profile/myProfile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const List<Widget> screens = [
    UserHomeScreen(),
    MyProfileScreen(),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBody: true,
            extendBodyBehindAppBar: true,
            bottomNavigationBar: BottomNavyBar(
              itemCornerRadius: 10,
              selectedIndex: newIndex,
              backgroundColor: Colors.transparent,
              items: AppData.bottomNavyBarItems
                  .map(
                    (item) => BottomNavyBarItem(
                        textAlign: TextAlign.center,
                        activeColor: item.activeColor,
                        //inactiveColor: item.inActiveColor,
                        icon: item.icon,
                        title: Text(item.title)),
                  )
                  .toList(),
              onItemSelected: (currentIndex) {
                newIndex = currentIndex;
                setState(() {});
              },
            ),
            body: PageTransitionSwitcher(
              duration: const Duration(seconds: 1),
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: HomeScreen.screens[newIndex],
            ),
            ));
  }
}
