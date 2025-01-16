import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:me_admin_app/view/about_us/about_us.dart';
import 'package:me_admin_app/view/category/event_category.dart';
import 'package:me_admin_app/view/event/event_item.dart';
import '../../view/home.dart';
import '../../view/profile/myProfile_screen.dart';

class AppPages {
  static const HOME = '/';
  static const CATEGORY = '/Category';
  static const ITEM = '/Item';
  static const MYPROFILE = '/MyProfile';
  static const ABOUTUS = '/AboutUs';

  static final routes = [
    GetPage(
      name: HOME,
      fullscreenDialog: true,
      page: () => const HomeScreen(),
    ),
    GetPage(
        name: CATEGORY,
        fullscreenDialog: true,
        page: () => const EventCategory()
    ),
    GetPage(
        name: ITEM,
        fullscreenDialog: true,
        page: () => const EventItemList()
    ),
    GetPage(
        name: MYPROFILE,
        fullscreenDialog: true,
        page: () => const MyProfileScreen()
    ),
    GetPage(
        name: ABOUTUS,
        fullscreenDialog: true,
        page: () => const AboutUs()
    ),
  ];
}
