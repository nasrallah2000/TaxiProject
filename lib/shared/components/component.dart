// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void NavigateAndFinished(context, widget) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false);
}

void NavTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void NavFrom(context, widget) {
  Navigator.pop(context, MaterialPageRoute(builder: (context) => widget));
}

void showToast({
  required String text,
  required ToastState state,
}) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0);
}

// ignore: constant_identifier_names
enum ToastState { SUCCESS, ERORR, WARNING }

Color chooseToastColor(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.ERORR:
      color = Colors.red;
      break;
    case ToastState.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

String docId() => DateTime.now().toIso8601String();


  // Future<void> launchUniversalLinkIos(Uri url) async {
  //   final bool nativeAppLaunchSucceeded = await launchUrl(
  //     url,
  //     mode: LaunchMode.externalNonBrowserApplication,
  //   );
  //   if (!nativeAppLaunchSucceeded) {
  //     await launchUrl(
  //       url,
  //       mode: LaunchMode.inAppWebView,
  //     );
  //   }
  // }