import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter/views/auth/loginScreen.dart';
import 'package:twitter/views/auth/welcome_screen.dart';
import 'package:twitter/utility/consts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:twitter/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
