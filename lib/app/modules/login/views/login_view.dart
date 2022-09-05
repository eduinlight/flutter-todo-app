import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/routes/app_pages.dart';
import 'package:todo_app/app/widgets/background.dart';
import 'package:todo_app/app/widgets/column_spacing.dart';
import 'package:todo_app/app/widgets/primary_button.dart';
import 'package:todo_app/app/widgets/safe_keyboard.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void onSignUpPressed() {
      Get.toNamed(Routes.REGISTER);
    }

    void onLoginPressed() {
      Get.toNamed(Routes.HOME);
    }

    return Background(
        child: Scaffold(
            body: SafeArea(
                child: SafeKeyboard(
                    parentContext: context,
                    horizontal: 25,
                    vertical: 21,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('view_login_text1'.tr,
                                    style: theme.textTheme.headline1),
                                const SizedBox(height: 15),
                                SizedBox(
                                    width: 242,
                                    child: Text('view_register_text2'.tr,
                                        style: theme.textTheme.headline3,
                                        textAlign: TextAlign.center)),
                              ]),
                        ),
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Image.asset(
                                  'assets/images/login_image.png',
                                  width: 171,
                                  height: 170),
                            )),
                        Expanded(
                            child: ColumnSpacing(spacing: 20, children: [
                          TextField(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 13),
                              decoration: InputDecoration(
                                labelText: 'input_email_label'.tr,
                                hintText: 'input_email_hint'.tr,
                              )),
                          TextField(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 13),
                              decoration: InputDecoration(
                                labelText: 'input_password_label'.tr,
                                hintText: 'input_password_hint'.tr,
                              )),
                        ])),
                        TextButton(
                            onPressed: onSignUpPressed,
                            child: Text("button_forget_password".tr,
                                style: const TextStyle(
                                    color: Color(0xFFAD491E),
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold))),
                        const SizedBox(height: 15),
                        PrimaryButton(
                            onPressed: onLoginPressed, text: "button_login".tr),
                        const SizedBox(height: 25),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("view_login_text3".tr,
                                  style: theme.textTheme.headline3),
                              TextButton(
                                  onPressed: onSignUpPressed,
                                  child: Text("button_sign_up".tr,
                                      style: const TextStyle(
                                          color: Color(0xFFAD491E))))
                            ])
                      ],
                    )))));
  }
}
