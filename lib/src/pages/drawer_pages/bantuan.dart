import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bantuan', style: TextStyle(color: Colors.white)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.list_rounded,
              size: 30,
              color: Colors.white,
            )),
        actions: [],
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 0,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Text('Bagaimana cara menambahkan produk baru?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Untuk menambahkan produk baru, buka menu produk dan tekan tombol tambah. '
                      'Isi detail produk seperti nama, harga, dan jumlah. '
                      'Pastikan untuk menyimpan perubahan setelah selesai.',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Text('Bagaimana cara mengubah stok produk?',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Anda dapat mengubah stok produk dengan masuk ke halaman detail produk '
                      'dan mengedit jumlah stok yang tersedia. '
                      'Pastikan untuk menyimpan perubahan setelah selesai.',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Text('Bagaimana cara melakukan penjualan produk?',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Untuk melakukan penjualan produk, masuk ke menu penjualan '
                      'dan pilih produk yang ingin dijual. '
                      'Masukkan jumlah produk yang terjual dan simpan transaksi.',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),

              child: ExpansionTile(
                title: Text('Apakah ada laporan yang tersedia?',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Ya, aplikasi ini menyediakan laporan penjualan dan stok produk. '
                      'Anda dapat mengakses laporan ini dari menu laporan dan '
                      'memilih rentang waktu yang diinginkan.',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
