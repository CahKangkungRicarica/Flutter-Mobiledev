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
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[700],
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  ),
  child: Text(myHint, style: TextStyle(fontSize: 20)),
);
  }
}