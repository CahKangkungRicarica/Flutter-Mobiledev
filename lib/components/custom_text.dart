import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String myHint;
  final TextEditingController txtController;
  const CustomText({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}