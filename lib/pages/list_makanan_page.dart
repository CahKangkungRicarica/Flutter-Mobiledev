import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/list_makanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: controller.dataMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.dataMakanan[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Get.toNamed(Routes.detailMakananPage, arguments: makanan);
              },

              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    makanan.gambar,
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.fastfood, size: 40),
                  ),
                ),

                title: Text(
                  makanan.namaMakanan,
                  style: const TextStyle(fontSize: 20),
                ),

                subtitle: Text(
                  "Rp ${makanan.harga}",
                  style: const TextStyle(fontSize: 15),
                ),
                
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          );
        },
      ),
    );
  }
}