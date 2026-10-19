import 'package:get/get.dart';
import 'package:flutter_application_1/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}