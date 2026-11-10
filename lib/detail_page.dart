import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String brand;
  final String image;
  final String description;
  final String price;
  final int stock;

  const DetailPage({
    super.key,
    required this.name,
    required this.brand,
    required this.image,
    required this.description,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    final habis = stock == 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  image,
                  height: 280,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      height: 280,
                      child: Icon(Icons.smartphone, size: 80),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Chip(label: Text(brand)),
            Text(
              name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              habis ? 'Stok habis' : 'Stok tersedia: $stock unit',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: habis ? Colors.red : Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 16),
            Text(description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}