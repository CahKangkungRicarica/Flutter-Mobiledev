import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());
  final RxString statuslogin = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login page")),
      body: Column(
        children: [
          Obx(
            () => Text(
              "welcome to my app ${statuslogin.value}",
              style: const TextStyle(fontSize: 20),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
            ), 
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
            ),
          ),

          CustomButton(
            myHint: "login",
            onPressed: () => controller.login(),
          ),
        ],
      ),
    );
  }
}