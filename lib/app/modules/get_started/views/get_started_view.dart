import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:todo_app/app/routes/app_pages.dart';
import 'package:todo_app/app/widgets/background.dart';
import 'package:todo_app/app/widgets/primary_button.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);

  void onGetStartedPressed() {
    Get.toNamed(Routes.REGISTER);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Background(
        child: Scaffold(
            body: SafeArea(
                child: Column(
      children: [
        Expanded(
          child: Column(children: [
            Expanded(
              child: SvgPicture.asset(
                'assets/images/started_image.svg',
                width: 170,
                height: 170,
              ),
            ),
            Text('view_get_started_text1'.tr, style: theme.textTheme.headline1),
            const SizedBox(height: 15),
            SizedBox(
                width: 242,
                child: Text('view_get_started_text2'.tr,
                    style: theme.textTheme.headline3,
                    textAlign: TextAlign.center))
          ]),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 68),
            child: PrimaryButton(
                onPressed: onGetStartedPressed, text: "button_get_started".tr))
      ],
    ))));
  }
}
