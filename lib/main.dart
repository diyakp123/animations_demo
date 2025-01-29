import 'package:flutter/material.dart';
import 'package:animations_demo/animation_example/allpagesroute.dart';
import 'package:animations_demo/animation_example/custom_painter_example/bouncing_ball_animation.dart';
import 'package:animations_demo/animation_example/explicit_example/list_animation.dart';
import 'package:animations_demo/animation_example/explicit_example/login_animation.dart';
import 'package:animations_demo/animation_example/implicit_example/animated_color_palette.dart';
import 'package:animations_demo/animation_example/implicit_example/animated_shopping_cart_button.dart';
import 'package:animations_demo/animation_example/implicit_example/animated_tween_animation_builder.dart';
import 'package:animations_demo/animation_example/myanimations/simpleanimations.dart';
import 'package:animations_demo/animation_example/page_route_builder_animation/splash_animation/splash_animation.dart';
import 'package:animations_demo/pageviewexample.dart';

import 'animation_example/explicit_example/loading_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
        // home:SimpleAnimations()
        home: Allpagesroute(),
        // home: Homepage(),
     
    );
  }
}

