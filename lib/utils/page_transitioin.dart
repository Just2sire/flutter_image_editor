import 'package:flutter/material.dart';

class MyCustomRouteTransition extends PageRouteBuilder {
  final Widget widget;
  MyCustomRouteTransition({required this.widget})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );

            // Slide transition example
            // final tween = Tween<Offset>(
            //   begin: const Offset(0, -1),
            //   end: Offset.zero,
            // ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut),);

            // return SlideTransition(
            //   position: tween,
            //   child: child,
            // );
          },
        );
}
