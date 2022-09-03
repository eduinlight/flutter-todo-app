import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final onPressed = this.onPressed;
    final theme = Theme.of(context);
    final text = this.text;

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                elevation: 0,
                minimumSize: const Size.fromHeight(60))
            .copyWith(
                backgroundColor: MaterialStateProperty.all(theme.primaryColor)),
        onPressed: onPressed,
        child: Text(text));
  }
}
