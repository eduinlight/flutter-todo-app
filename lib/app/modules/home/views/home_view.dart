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
                ])),
        Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text("Good afternoom",
                            style: theme.textTheme.headline4),
                      ]),
                      Text(
                        "Tasks",
                        style: theme.textTheme.headline2,
                      ),
                      Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: Container(
                              width: 100,
                              height: 50) // child widget, replace with your own
                          )
                    ])))
      ])),
    );
  }
}
