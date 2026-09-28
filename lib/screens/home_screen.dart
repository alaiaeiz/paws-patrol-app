import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Halo, Amey!', style: AppTextStyles.title.copyWith(fontSize: 20)),
            Text('Mau belanja apa hari ini?', style: AppTextStyles.subtitle),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none, color: AppColors.textDark), onPressed: () {}),
          CircleAvatar(backgroundColor: AppColors.primary, child: Text('R', style: TextStyle(color: Colors.white))),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.grey.shade300)),
              child: TextField(
                decoration: InputDecoration(hintText: 'Cari produk...', border: InputBorder.none, icon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(color: Colors.orange.shade100, borderRadius: BorderRadius.circular(16)),
              child: Center(child: Text('PROMO HARI INI', style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            const SizedBox(height: 24),
            Align(alignment: Alignment.centerLeft, child: Text('Produk Pilihan', style: AppTextStyles.title.copyWith(fontSize: 18))),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                children: [
                  _buildProductCard('Whiskas', 'Rp 85.000'),
                  _buildProductCard('Me-O', 'Rp 75.500'),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory_2_outlined), label: 'Produk'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Akun Saya'),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container(color: Colors.teal.shade50)), // Gambar dummy
            const SizedBox(height: 8),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price, style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
                CircleAvatar(radius: 14, backgroundColor: AppColors.primary, child: Icon(Icons.shopping_cart, size: 16, color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}