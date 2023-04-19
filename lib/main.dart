// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_app/utils/mytheme.dart';
import 'controller/auth_controller.dart';
import 'controller/common_controller.dart';
import 'pages/splash_screen.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBSMeFe_eeBQqcagC5wrN-mlnRr86BxUO0',
      appId: '1:417156774528:web:83e6c9b2f8b108f2cc0465',
      messagingSenderId: '417156774528',
      projectId: 'the-formula-310013',
      authDomain: 'the-formula-310013.firebaseapp.com',
      storageBucket: 'the-formula-310013.appspot.com',
    ),
  );
  Get.put(AuthController());
  Get.put(CommonController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyTheme.myLightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashSreen(),
    );
  }
}
