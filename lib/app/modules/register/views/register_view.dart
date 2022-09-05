import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/routes/app_pages.dart';
import 'package:todo_app/app/widgets/background.dart';
import 'package:todo_app/app/widgets/column_spacing.dart';
import 'package:todo_app/app/widgets/primary_button.dart';
import 'package:todo_app/app/widgets/safe_keyboard.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  void onRegisterPressed() {}

  void onSignInPressed() {
    Get.toNamed(Routes.LOGIN);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                                Text('view_register_text1'.tr,
                                    style: theme.textTheme.headline1),
                                const SizedBox(height: 15),
                                SizedBox(
                                    width: 242,
                                    child: Text('view_register_text2'.tr,
                                        style: theme.textTheme.headline3,
                                        textAlign: TextAlign.center)),
                              ]),
                        ),
                        ColumnSpacing(spacing: 20, children: [
                          TextField(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 13),
                              decoration: InputDecoration(
                                labelText: 'input_full_name_label'.tr,
                                hintText: 'input_full_name_hint'.tr,
                              )),
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
                          TextField(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 13),
                              decoration: InputDecoration(
                                labelText: 'input_confirm_password_label'.tr,
                                hintText: 'input_confirm_password_hint'.tr,
                              )),
                        ]),
                        const SizedBox(height: 35),
                        PrimaryButton(
                            onPressed: onRegisterPressed,
                            text: "button_register".tr),
                        const SizedBox(height: 25),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("view_register_text3".tr,
                                  style: theme.textTheme.headline3),
                              TextButton(
                                  onPressed: onSignInPressed,
                                  child: Text("button_sign_in".tr,
                                      style: const TextStyle(
                                          color: Color(0xFFAD491E))))
                            ])
                      ],
                    )))));
  }
}
