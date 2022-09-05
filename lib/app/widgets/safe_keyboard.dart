import 'package:flutter/material.dart';
import 'package:todo_app/app/utils/screen.dart';

class SafeKeyboard extends StatelessWidget {
  const SafeKeyboard(
      {Key? key,
      required this.child,
      this.horizontal = 0,
      this.vertical = 0,
      required this.parentContext})
      : super(key: key);

  final Widget child;
  final double horizontal;
  final double vertical;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal, vertical: vertical),
            child: SizedBox(height: safeHeight(parentContext), child: child)));
  }
}
