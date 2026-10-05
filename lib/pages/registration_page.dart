import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/components/custom_textfield.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtNamaLengkap = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtNoWa = TextEditingController();
  final TextEditingController txtAgama = TextEditingController();

  final RxBool isPerempuan = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
            const SizedBox(height: 12),
            CustomTextfield(
              myHint: "input nama lengkap",
              txtController: txtNamaLengkap,
            ),
            const SizedBox(height: 12),
            CustomTextfield(
              myHint: "input email",
              txtController: txtEmail,
            ),
            const SizedBox(height: 12),
            Card(
              child: Obx(
                () => SwitchListTile(
                  title: Text(
                    isPerempuan.value
                        ? "Jenis Kelamin: Perempuan"
                        : "Jenis Kelamin: Laki-laki",
                  ),
                  secondary: Icon(
                    isPerempuan.value ? Icons.female : Icons.male,
                    color: isPerempuan.value ? Colors.pink : Colors.blue,
                  ),
                  value: isPerempuan.value,
                  onChanged: (newValue) {
                    isPerempuan.value = newValue;
                  },
                ),
              ),
            ),
            const SizedBox(height: 12),
            CustomTextfield(
              myHint: "input no WA",
              txtController: txtNoWa,
            ),
            const SizedBox(height: 12),
            CustomTextfield(
              myHint: "input agama",
              txtController: txtAgama,
            ),
            const SizedBox(height: 24),
            CustomButton(
              myHint: "Send",
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    "username": txtUsername.text,
                    "nama_lengkap": txtNamaLengkap.text,
                    "email": txtEmail.text,
                    "noWa": txtNoWa.text,
                    "agama": txtAgama.text,
                    "jenisKelamin":
                        isPerempuan.value ? "Perempuan" : "Laki-laki",
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}