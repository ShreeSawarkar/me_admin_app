import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me_admin_app/controller/add_event_controller.dart';
import 'package:me_admin_app/controller/home_controller.dart';
import 'package:me_admin_app/core/routes/app_pages.dart';
import 'package:me_admin_app/firebase_options.dart';
import 'package:me_admin_app/utility/app_theme.dart';
import 'package:me_admin_app/view/home.dart';

import 'package:provider/provider.dart';
import 'core/data/data_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  //? Register All Controllers
  Get.put(HomeController());
  Get.put(AddEventController());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider()),
        /*ChangeNotifierProvider(
            create: (context) => UserProvider(context.dataProvider)),*/

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meemee Event Admin',
      home: const HomeScreen(),
      initialRoute: AppPages.HOME,
      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
      theme: AppTheme.lightAppTheme,
    );
  }
}

