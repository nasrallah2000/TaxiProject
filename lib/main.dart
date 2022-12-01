import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:taxi/modules/Login/views/login.dart';
import 'package:taxi/modules/Splash/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        title: 'Taxi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          splash: const SplashPage(),
          nextScreen: const LoginPage(),
          duration: 1000,
          centered: true,
          splashIconSize: double.infinity,
        ),
      ),
    );
  }
}
