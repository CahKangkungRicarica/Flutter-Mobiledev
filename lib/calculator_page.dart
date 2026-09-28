import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_text.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/controllers/calculator_controller.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});


  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNumber1 = TextEditingController();
    TextEditingController txtNumber2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("calculator")),
      body: Column(
        children: [
          Text("welcome to calculator",
              style: TextStyle(fontSize: 20)),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input number 1",
              txtController: txtNumber1,
              keyboardType: TextInputType.number,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input number 2",
              txtController: txtNumber2,
              keyboardType: TextInputType.number,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "+", 
                  onPressed: () {
                    controller.tambah(
                      double.parse(txtNumber1.text),
                      double.parse(txtNumber2.text),
                    );
                  }),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "-", 
                  onPressed: () {
                    controller.kurang(
                      double.parse(txtNumber1.text),
                      double.parse(txtNumber2.text),
                    );
                  }),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "*", 
                  onPressed: () {
                    controller.kali(
                      double.parse(txtNumber1.text),
                      double.parse(txtNumber2.text),
                    );
                  }),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  myHint: "/", 
                  onPressed: () {
                    if (txtNumber1.text.isEmpty || txtNumber2.text.isEmpty) {
                    Get.snackbar("Warning", "angka tidak boleh kosong");
                    return;
                    }
                    controller.bagi(
                      double.parse(txtNumber1.text),
                      double.parse(txtNumber2.text),
                    );
                  }),
              ),
            ],
          ),
          Obx(
            () => Text(
              'hasil ${controller.hasilHitung.value}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}