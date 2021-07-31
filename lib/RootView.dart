import 'package:flutter/material.dart';
import 'package:flutter_application/ButtonWidget.dart';
import 'package:flutter_application/HomeView.dart';
import 'package:flutter_application/ImageWidget.dart';
import 'package:flutter_application/TextWidget.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter Leaner", initialRoute: "/", routes: {
      "/": (context) => HomeView(),
      "/textWidget": (context) => TextWidget(),
      "/imageWidget": (context) => ImageWidget(),
      "/buttonWidget": (context) => ButtonWidget()
    });
  }
}
