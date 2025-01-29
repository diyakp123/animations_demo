import 'package:flutter/material.dart';
import 'package:animations_demo/animation_example/custom_painter_example/bouncing_ball_animation.dart';
import 'package:animations_demo/animation_example/explicit_example/loading_animation.dart';
import 'package:animations_demo/animation_example/explicit_example/login_animation.dart';
import 'package:animations_demo/animation_example/implicit_example/animated_shopping_cart_button.dart';
import 'package:animations_demo/animation_example/implicit_example/animated_tween_animation_builder.dart';
import 'package:animations_demo/animation_example/myanimations/simpleanimations.dart';
import 'package:animations_demo/animation_example/page_route_builder_animation/splash_animation/splash_animation.dart';

import 'explicit_example/list_animation.dart';
import 'implicit_example/animated_color_palette.dart';

class Allpagesroute extends StatelessWidget {
  Allpagesroute({super.key});

  List l = [
    ListAnimation(),
    RadialProgressAnimation(progress: 0.65, color: Colors.blue),
    LoginScreenAnimation(),
    AnimatedColorPalette(),
    ShoppingCartButton(),
    PulsatingCircleAnimation(),
    SplashAnimation(),
    BouncingBallAnimation(),
    SimpleAnimations()
  ];

  List<String> names = [
    "ListAnimation",
    "RadialProgressAnimation",
    "LoginScreenAnimation",
    "AnimatedColorPalette",
    "ShoppingCartButton",
    "PulsatingCircleAnimation",
    "SplashAnimation",
    "BouncingBallAnimation",
    "SimpleAnimations"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: l.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(names[index]),
                trailing: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(myCustomRouteTransition(
                        route: l[index],
                      ));
                    },
                    child: Text("GO to Page")),
              );
            }));
  }
}


class myCustomRouteTransition extends PageRouteBuilder {
  final Widget route;

  myCustomRouteTransition({required this.route})
      : super(pageBuilder: (context, animation, secondaryAnimation) {
          return route;
        }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        });
}
