
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SlidrRight extends PageRouteBuilder{
  final Widget? page;
  SlidrRight({this.page}) : super(
      pageBuilder: (context,animation,animationtwo)=> page! ,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context,animation,animationtwo,child){
        const begin = Offset(1, 0.0);
        const end = Offset.zero;
        var tween = Tween(begin: begin, end:end );
        //final offsetAnimation = animation.drive(tween);
        var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
        return SlideTransition(position: tween.animate(curveAnimation),child: child);
      }
  );
}

class ScaleTransitionMethod extends PageRouteBuilder{
  final Widget? page;
  ScaleTransitionMethod({this.page}) : super(
      pageBuilder: (context,animation,animationtwo)=> page! ,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context,animation,animationtwo,child){
        const begin = 0.0;
        const end = 1.0;
        var tween = Tween(begin: begin, end:end );
        //final offsetAnimation = animation.drive(tween);
        var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);
        return ScaleTransition(scale:tween.animate(curveAnimation) ,child: child);
      }
  );
}

class RotationTransitionMethod extends PageRouteBuilder{
  final Widget? page;
  RotationTransitionMethod({this.page}) : super(
      pageBuilder: (context,animation,animationtwo)=> page! ,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context,animation,animationtwo,child){
        const begin = 0.0;
        const end = 1.0;
        var tween = Tween(begin: begin, end:end );
        //final offsetAnimation = animation.drive(tween);
        var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.linear);
        return RotationTransition(turns:tween.animate(curveAnimation) ,child: child);
      }
  );
}

class SizeTransitionMethod extends PageRouteBuilder{
  final Widget? page;
  SizeTransitionMethod({this.page}) : super(
      pageBuilder: (context,animation,animationtwo)=> page! ,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context,animation,animationtwo,child){
        return Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        );
      }
  );
}

class FadeTransitionMethod extends PageRouteBuilder{
  final Widget? page;
  FadeTransitionMethod({this.page}) : super(
      pageBuilder: (context,animation,animationtwo)=> page!,
      transitionDuration:const Duration(seconds: 1),
      transitionsBuilder: (context,animation,animationtwo,child){

        return FadeTransition(
          opacity: animation,
          child: child,
        );
      }
  );
}