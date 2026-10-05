import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  String username = "";
  String nama_lengkap = "";
  String email = "";
  String noWa = "";
  String agama = "";
  String jenisKelamin = "";

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null) {
      username = args["username"] ?? "";
      nama_lengkap = args["nama_lengkap"] ?? "";
      email = args["email"] ?? "";
      noWa = args["noWa"] ?? "";
      agama = args["agama"] ?? "";
      jenisKelamin = args["jenisKelamin"] ?? "";
    }
  }
}