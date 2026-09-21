import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statuslogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          Text("welcome to my app " + statuslogin, 
          style: TextStyle(fontSize: 20)),
          
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username", 
              txtController: txtUsername,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password", 
              txtController: txtPassword,
              ),
          ),

          CustomButton(
            myHint: "login", 
            onPressed: () {
              String username = txtUsername.text.toString();
              String password = txtPassword.text.toString();

              if (username == "admin" && password == "admin") {
                  statuslogin = "admin";
                  print("sukses login");
                } else {
                  statuslogin = "failed";
                  print("gagal login");
                } 

            },
          ),
        ],
      )
    );
  }
}