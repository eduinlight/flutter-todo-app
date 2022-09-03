import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/widgets/background.dart';
import 'package:todo_app/app/widgets/primary_button.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  void onRegisterPressed() {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Background(
        child: Scaffold(
            body: SafeArea(
                child: Column(
      children: [
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('view_register_text1'.tr, style: theme.textTheme.headline1),
            const SizedBox(height: 15),
            SizedBox(
                width: 242,
                child: Text('view_register_text2'.tr,
                    style: theme.textTheme.headline3,
                    textAlign: TextAlign.center)),
          ]),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(children: const [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 68),
            child: PrimaryButton(
                onPressed: onRegisterPressed, text: "button_register".tr))
      ],
    ))));
  }
}
