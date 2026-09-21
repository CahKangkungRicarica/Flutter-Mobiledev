import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String myHint;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.myHint,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(myHint),
    );
  }
}