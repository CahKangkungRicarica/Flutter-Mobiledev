import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs; 

  Future<void> login() async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username atau password tidak boleh kosong");
    } else {

      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString(),
        });

        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
          } else {
            Get.snackbar("gagal", data['message']);
          }

        }else {
          Get.snackbar("gagal", "cek koneksi internet");
        }

      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("error" + e.toString());
      }
      
    }

    isLoading.value = false;
  }

}