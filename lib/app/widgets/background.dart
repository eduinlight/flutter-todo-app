import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      child,
      Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset('assets/images/started_circle.svg',
            width: Get.width / 2, height: Get.width / 2),
      ),
    ]);
  }
}
