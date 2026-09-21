import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  TextEditingController txtNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculator")),
      body: Column(
        children: [
          Text("welcome to calculator", 
          style: TextStyle(fontSize: 20)),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input input number", 
              txtController: txtNumber,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input number", 
              txtController: txtNumber,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                margin:  EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "+", 
                  onPressed: () {},
                  ),
                ),

                Container(
                margin:  EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "-", 
                  onPressed: () {},
                  ),
                ),

                Container(
                margin:  EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "*", 
                  onPressed: () {},
                  ),
                ),

                Container(
                margin:  EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "/", 
                  onPressed: () {},
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}