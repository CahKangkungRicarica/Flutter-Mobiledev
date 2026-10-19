import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/detail_list_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makanan.namaMakanan),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              controller.makanan.gambar,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const SizedBox(
                height: 220,
                child: Center(child: Icon(Icons.fastfood, size: 64)),
              ),
            ),
          ),
      
          const SizedBox(height: 16),
          Text(
            controller.makanan.namaMakanan,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
      
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const SizedBox(width: 4),
              Text(
                controller.makanan.rating,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      
              const Spacer(),
              Text(
                "Rp ${controller.makanan.harga}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
      
          const SizedBox(height: 20),
          const Text(
            "Deskripsi",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
      
          const SizedBox(height: 6),
          Text(controller.makanan.deskripsi, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          const Text(
            "Review",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          
          const SizedBox(height: 6),
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: Text(controller.makanan.review),
            ),
          ),
        ],
      ),
    );
  }
}