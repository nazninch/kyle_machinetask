import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/view/login/login_view.dart';

void main() {
  runApp(const Dine8App());
}

class Dine8App extends StatelessWidget {
  const Dine8App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dine8",
      home: const LoginView(),
    );
  }
}