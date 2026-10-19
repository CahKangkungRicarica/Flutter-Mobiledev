import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/list_makanan_page.dart';
import 'package:flutter_application_1/pages/detail_list_makanan_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routes {
  static const String registration = "/registration";
  static const String listMakananPage = "/list_makanan";
  static const String detailMakananPage = "/detail_list_makanan";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(
      name: registration, 
      page: ()=> RegistrationPage()
      ),

    GetPage(
      name: listMakananPage, 
      page: ()=> ListMakananPage()
      ),

    GetPage(
      name: confirm_registration, 
      page: ()=> ConfirmRegistrationPage()
      ),

    GetPage(
      name: detailMakananPage, 
      page: () => DetailMakananPage()
      ),
  ];
}