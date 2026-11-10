import 'package:flutter/material.dart';
import 'package:tugasiphone/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Smartphone',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> phones = [
      {
        'name': 'iPhone 18 Pro',
        'brand': 'Apple',
        'price': 'Rp 21.999.000',
        'stock': '12',
        'image': 'https://images.unsplash.com/photo-1759588071781-2c3ba9128497?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
        'description': 'Generasi terbaru dengan chip tercepat dan kamera telefoto yang makin tajam.'
      },
      {
        'name': 'iPhone 17 Pro',
        'brand': 'Apple',
        'price': 'Rp 18.999.000',
        'stock': '8',
        'image': 'https://images.unsplash.com/photo-1736173155811-e8142fd553ee?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
        'description': 'Bodi titanium yang tangguh dengan performa kencang dan baterai awet.'
      },
      {
        'name': 'iPhone 16 Pro',
        'brand': 'Apple',
        'price': 'Rp 16.499.000',
        'stock': '3',
        'image': 'https://images.unsplash.com/photo-1607936854279-55e8a4c64888?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
        'description': 'Dilengkapi tombol Camera Control, cocok untuk yang suka mengabadikan momen.'
      },
      {
        'name': 'iPhone 15 Pro',
        'brand': 'Apple',
        'price': 'Rp 13.999.000',
        'stock': '0',
        'image': 'https://images.unsplash.com/photo-1709178295038-acbeec786fcf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
        'description': 'iPhone pertama dengan USB-C dan bodi titanium yang ringan.'
      },
      {
        'name': 'iPhone 14 Pro',
        'brand': 'Apple',
        'price': 'Rp 11.499.000',
        'stock': '15',
        'image': 'https://images.unsplash.com/photo-1650580809796-39361e4d77f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
        'description': 'Punya Dynamic Island dan kamera utama 48 MP dengan harga lebih terjangkau.'
      },
      // Gambar di bawah ini placeholder, ganti dengan link gambar HP aslinya.
      {
        'name': 'Galaxy S25 Ultra',
        'brand': 'Samsung',
        'price': 'Rp 21.499.000',
        'stock': '10',
        'image': 'data:image/webp;base64,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',
        'description': 'Flagship Samsung dengan S Pen dan kamera 200 MP untuk zoom jarak jauh.'
      },
      {
        'name': 'Xiaomi 15',
        'brand': 'Xiaomi',
        'price': 'Rp 12.999.000',
        'stock': '7',
        'image': 'https://tse4.mm.bing.net/th/id/OIP.6qYsDQIgnXl8dS6ovnj8xwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
        'description': 'Ukuran ringkas tapi bertenaga, dengan kamera Leica dan pengisian daya cepat.'
      },
      {
        'name': 'Pixel 9 Pro',
        'brand': 'Google',
        'price': 'Rp 15.999.000',
        'stock': '4',
        'image': 'https://tse4.mm.bing.net/th/id/OIF.1KcW1HD6HBjyd8AgVeg1kw?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
        'description': 'Hasil foto terbaik berkat pemrosesan AI Google dengan Android murni.'
      },
      {
        'name': 'OPPO Reno 13',
        'brand': 'OPPO',
        'price': 'Rp 7.999.000',
        'stock': '18',
        'image': 'https://tse4.mm.bing.net/th/id/OIP.DBNrbTxvgQVyX1XieGNVwAAAAA?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
        'description': 'Desain tipis dan stylish dengan kamera potret yang menonjol.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Smartphone'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        leading: const Icon(Icons.smartphone),
      ),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (context, index) {
          final phone = phones[index];
          final habis = phone['stock'] == '0';

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            color: Colors.blueGrey,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  phone['image']!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.smartphone, color: Colors.white),
                    );
                  },
                ),
              ),
              title: Text(
                phone['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '${phone['price']}  •  ${habis ? 'Stok habis' : 'Stok ${phone['stock']}'}',
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      name: phone['name']!,
                      brand: phone['brand']!,
                      image: phone['image']!,
                      description: phone['description']!,
                      price: phone['price']!,
                      stock: int.parse(phone['stock']!),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}