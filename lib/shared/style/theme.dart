import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(240, 255, 255, 255),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 27,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0.1),
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 40,
    ),
  ),
  //primaryColor: CupertinoColors.systemRed,
  primarySwatch: Colors.red,
);

// ThemeData darkTheme = ThemeData(
//     scaffoldBackgroundColor: HexColor('#212122'),
//     appBarTheme: AppBarTheme(
//         color: primaryColor,
//         elevation: 0.0,
//         centerTitle: true,
//         titleTextStyle:
//             TextStyle(fontSize: 25, color: isSecondaryColor ? secondaryColor : Colors.amber),
//         systemOverlayStyle: SystemUiOverlayStyle(
//             statusBarColor: primaryColor, statusBarIconBrightness: Brightness.light)),
//     fontFamily: 'Jana');

// ThemeData lightTheme = ThemeData(
//   scaffoldBackgroundColor: Colors.white,
//   appBarTheme: AppBarTheme(
//       //centerTitle: ,
//       systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
//       toolbarTextStyle: TextStyle(
//         color: primaryColor,
//         fontSize: 25,
//       ),
//       backgroundColor: Colors.white,
//       elevation: 0.0,
//       iconTheme: IconThemeData(color: primaryColor)),
//   fontFamily: 'Jana',
// );
