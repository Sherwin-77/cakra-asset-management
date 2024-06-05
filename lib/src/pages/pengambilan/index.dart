import 'package:cakra_asset_management/src/themed_layout.dart';
import 'package:flutter/material.dart';

class PengambilanIndexPage extends StatefulWidget {
  const PengambilanIndexPage({super.key});

  @override
  State<PengambilanIndexPage> createState() => _PengambilanIndexPageState();
}

class _PengambilanIndexPageState extends State<PengambilanIndexPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pengambilan Aset BMN'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Implement search functionality here
              },
            ),
          ],
        ),
        body: ThemedLayout(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: const TabBar(
                isScrollable: false,
                tabs: [
                  Tab(child: Text('Riwayat')),
                  Tab(child: Text('Pengambilan')),
                ],
                ),
              ),
              
            Expanded(
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: TabBarView(
                children: [
                  // Riwayat Tab Content
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          margin: const EdgeInsets.all(8),
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Laptop',
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/bg-office.jpeg", 
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Expanded(
                                                flex: 3,
                                                child: Text("ACER"),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text("10"),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text("BUAH"),
                                              )
                                              
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            width: 95,
                                            height:25,
                                            child:  OutlinedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              padding: MaterialStateProperty.all(
                                                const EdgeInsets.all(0)
                                              ),
                                            ),
                                            child: const Text("Lihat Keterangan", 
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),),
                                          ),
                                          )
                                          
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Tanggal Pengambilan : ",style: TextStyle(fontSize: 12)),
                                    Text("25 April 2024", style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                const Divider(),

                                const SizedBox(width: 16),
                                Align(
                                  alignment: Alignment.center,
                                  child: FilledButton(
                                     onPressed: () => showDialog(
                                          context: context,
                                          builder: (context) => deleteRiwayat(context)
                                      ),
                                    child: Icon(Icons.delete),
                                    style: ButtonStyle(
                                      // backgroundColor: Colors.red,
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  // Pengambilan Tab Content
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          margin: const EdgeInsets.all(8),
                          elevation: 4,
                          child: Padding(
                           padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 25.0),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Laptop',
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/bg-office.jpeg", 
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Expanded(
                                                flex: 3,
                                                child: Text("ACER"),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text("10"),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text("BUAH"),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            width: 95,
                                            height:25,
                                            child:  OutlinedButton(
                                            onPressed: () {
                                            },
                                            style: ButtonStyle(
                                              padding: MaterialStateProperty.all(
                                                const EdgeInsets.all(0)
                                              ),
                                            ),
                                            child: const Text("Lihat Keterangan", 
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),),
                                          ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Tanggal Pengambilan : ",style: TextStyle(fontSize: 12)),
                                    Text("25 April 2024", style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,),),
                                  ],
                                ),
                                const Divider(),
                                const SizedBox(width: 16),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: FilledButton(
                                    onPressed: () => showDialog(
                                          context: context,
                                          builder: (context) => sudahDiambil(context)
                                      ),
                                    child: const Text("SUDAH DIAMBIL"),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        )
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            ),
          ]),
        ),
      ),
    );
  }
}

deleteRiwayat(BuildContext context) {
    return AlertDialog(
      // title: const Text('Reset settings?'),
      content: const Text(
        'Apakah Anda yakin ingin menghapus riwayat yang dipilih ? '
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('BATALKAN'),
          ),
          TextButton(onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('YA'),
          ),
      ]
    );
  }


  sudahDiambil(BuildContext context) {
    return AlertDialog(
      // title: const Text('Reset settings?'),
      content: const Text(
        'Apakah Anda yakin sudah mengambil dan mengecek aset Anda ?  '
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('BATALKAN'),
          ),
          TextButton(onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('YA'),
          ),
      ]
    );
  }