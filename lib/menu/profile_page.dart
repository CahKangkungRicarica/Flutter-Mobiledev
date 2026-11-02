import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Profil Saya",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              const Icon(Icons.account_circle, size: 60, color: Colors.blue),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  "Admin Testing",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Edit"),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Pengganti BalanceBox
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue.shade100),
            ),
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet, color: Colors.blue),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text("SaldoPay", style: TextStyle(fontSize: 16)),
                ),
                const Text(
                  "Rp 150.000",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          const Text(
            "Pengaturan Akun",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // Pengganti MenuTile
          ListTile(
            leading: const Icon(Icons.location_on, color: Colors.blue),
            title: const Text("Alamat Pengiriman"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),

          ListTile(
            leading: const Icon(Icons.receipt_long, color: Colors.blue),
            title: const Text("Riwayat Pesanan"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),

          ListTile(
            leading: const Icon(Icons.local_offer, color: Colors.blue),
            title: const Text("Promo & Voucher"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),

          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.blue),
            title: const Text("Makanan Favorit"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          const SizedBox(height: 24),

          const Text(
            "Umum",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.blue),
            title: const Text("Pusat Bantuan"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(height: 1, color: Colors.black12),

          ListTile(
            leading: const Icon(Icons.language, color: Colors.blue),
            title: const Text("Bahasa"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}