import 'package:flutter/material.dart';

class RowSpacing extends StatelessWidget {
  const RowSpacing({Key? key, required this.children, this.spacing = 0})
      : super(key: key);

  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = children;
    if (spacing > 0) {
      list = [];
      for (int i = 0; i < children.length; i++) {
        list.add(children[i]);
        if (i < children.length - 1) {
          list.add(SizedBox(height: spacing));
        }
      }
    }
    return Row(children: list);
  }
}
