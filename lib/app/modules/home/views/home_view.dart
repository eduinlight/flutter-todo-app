import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/widgets/background.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Background(
      child: Scaffold(
          body: Column(children: [
        Container(
            width: Get.width,
            height: 230,
            decoration: BoxDecoration(color: theme.primaryColor),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.asset('assets/images/avatar.png',
                          width: 90, height: 90)),
                  const SizedBox(height: 24),
                  Text("Welcome Oliva Grace",
                      style: theme.textTheme.headline3?.merge(
                          TextStyle(color: Colors.white.withOpacity(0.85)))),
                  const SizedBox(height: 12)
                ]))
      ])),
    );
  }
}
