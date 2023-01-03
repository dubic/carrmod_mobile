

import 'dart:developer';

import 'package:carrmod_mobile/controllers/splash_controller.dart';
import 'package:carrmod_mobile/intro.dart';
import 'package:carrmod_mobile/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  log('starting services ...');
  await GetStorage.init();

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  // await Get.putAsync(() => DbService().init());
  // await Get.putAsync(SettingsService()).init();
  log('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrmod',
      theme: ThemeData(
          primaryColor: Colors.orange,
          fontFamily: 'Montserrat',
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
              subtitle1: TextStyle(fontSize: 18),
              button: TextStyle(fontSize: 16),
              bodyText1: TextStyle(fontSize: 15)),
          iconTheme: const IconThemeData(color: Colors.orange), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(secondary: Colors.orange[500])
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/intro', page: () => const Intro()),
      ],
    );
  }
}

