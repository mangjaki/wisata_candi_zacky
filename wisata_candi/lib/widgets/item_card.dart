import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasi  variable yang dibutuhkan dan pasang pada konstruktor


  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO: 2. Tetapkan parameter shape, margin , dan evalotion dari cari
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(4),
      elevation: 1,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: 3. Buat Image sebagai anak dari Column
          Expanded(
            child: Image.asset(
              candi.image.asset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // TODO: 4. Buat Text sebagai anak dari Column
          // TODO: 5. Buat Text sebagai anak dari Column
        ],
      ),
    );
  }
}
