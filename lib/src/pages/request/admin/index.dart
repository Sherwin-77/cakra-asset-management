import 'package:cakra_asset_management/src/pages/dashboard/index.dart';
import 'package:cakra_asset_management/src/pages/request/admin/acceptance.dart';
import 'package:cakra_asset_management/src/themed_layout.dart';
import 'package:flutter/material.dart';
import 'package:cakra_asset_management/src/models/permintaan_item_model.dart';
import "package:provider/provider.dart";

class PermintaanPageAdmin extends StatefulWidget {
  const PermintaanPageAdmin({super.key});

  @override
  State<PermintaanPageAdmin> createState() => _PermintaanPageAdminState();
}

class _PermintaanPageAdminState extends State<PermintaanPageAdmin> {
  @override
  Widget build(BuildContext context) {
    final permintaanItemInfoList = Provider.of<PermintaanItemInfoProvider>(context); 

    List<String> jurusanList = permintaanItemInfoList.itemInfo.map((item) => item.jurusan).toSet().toList();

    Widget terima = const Icon(
      Icons.check_circle,
      color: Colors.green,
    );

    Widget tolak = const Icon(
      Icons.close_rounded,
      color: Colors.red,
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Permintaan Barang (Admin)'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardPage(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
          actions: <Widget>[
            IconButton( 
              icon: const Icon(Icons.search),
              onPressed: () {
                // Implement search functionality here
              },
            ),
          ],
        ),

        body: Column(
          children: [
            const TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              tabs: [
                Tab(
                  child: Text("History"),
                ),
                Tab(
                  child: Text("Daftar Permintaan"),
                ),
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ThemedLayout(
                    child: SingleChildScrollView(
                      child: Container(
                        // color: Colors.grey.shade300,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            // const Text(
                            //   'Riwayat Anda', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
                            // ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 1,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.separated(
                                      itemCount:
                                          permintaanItemInfoList.itemInfo.length,
                                      itemBuilder: (context, index){
                                        if (permintaanItemInfoList
                                                .itemInfo[index].status !=
                                            'pending') {
                                          return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          permintaanItemInfoList
                                                              .itemInfo[index]
                                                              .jurusan,
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight.bold),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "(${permintaanItemInfoList
                                                                  .itemInfo[index]
                                                                  .tanggal})",
                                                          style: const TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  30),
                                                          color: Colors.purple),
                                                      child: const Padding(
                                                        padding: EdgeInsets.all(5),
                                                        child: Text(
                                                          "Status",
                                                          style: TextStyle(
                                                              color: Colors.white),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(permintaanItemInfoList
                                                            .itemInfo[index].nama),
                                                        const SizedBox(width: 30),
                                                        Text(
                                                          (permintaanItemInfoList
                                                                  .itemInfo[index]
                                                                  .jumlah)
                                                              .toString(),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Text(permintaanItemInfoList
                                                            .itemInfo[index]
                                                            .satuan),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(
                                                          right: 13),
                                                      child: (permintaanItemInfoList.itemInfo[index].status == "terima") ? terima : tolak,
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder:
                                                            (BuildContext context) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                permintaanItemInfoList
                                                                    .itemInfo[index]
                                                                    .keterangan),
                                                            actions: [
                                                              TextButton(
                                                                  onPressed: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      const Text("OK")),
                                                            ],
                                                          );
                                                        });
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.grey.shade400,
                                                      foregroundColor: Colors.black,
                                                      elevation: 0,
                                                      minimumSize: const Size(80, 30)),
                                                  child: const Text("Lihat Keterangan",
                                                      style:
                                                          TextStyle(fontSize: 10)),
                                                )
                                              ]);
                                        }else{
                                          return Container();
                                        }
                                      },
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          child: const Divider(
                                            color: Colors.grey,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //To Another page
                  ThemedLayout(
                    child: ListView.builder(
                      itemCount: jurusanList.length,
                      itemBuilder: (context, index){
                        final pendingItems = permintaanItemInfoList.itemInfo.where((item) => item.jurusan == jurusanList[index] && item.status == 'pending').toList();
                        return ListTile(
                          leading: Text(jurusanList[index]),
                          trailing: 
                          // Container(
                            // child: Row(
                            //   children: [ 
                            //     pendingItems.isNotEmpty
                            //     ? Text(pendingItems.length.toString())
                            //     : Container(),
                            //     const SizedBox(width: 5),
                                const Icon(Icons.arrow_circle_right),
                            // ]),
                          // ),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AcceptancePage(jurusanArg: jurusanList[index]),
                                ),
                            );
                          },
                        );
                      },
                    )
                  )
                  
                ],
              ),
            ),
          ],
        ),

        // body: ThemedLayout(
        //   child: SingleChildScrollView(
        //     child: Container(
        //       // color: Colors.grey.shade300,
        //       padding: const EdgeInsets.symmetric(horizontal: 30),
        //       child: Column(
        //         children: [
        //           // const Text(
        //           //   'Riwayat Anda', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
        //           // ),
        //           SizedBox(
        //             height: 40,
        //           ),
        //           Container(
        //             height: MediaQuery.of(context).size.height * 1,
        //             child: Expanded(
        //               child: ListView.separated(
        //                 itemCount: permintaanItemInfoList.itemInfo.length,

        //                 itemBuilder: (context, index){
        //                   return Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                         children: [
        //                           Row(
        //                             children: [
        //                               Text(permintaanItemInfoList.itemInfo[index].jurusan, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        //                               SizedBox(width: 5,),
        //                               Text("(" + permintaanItemInfoList.itemInfo[index].tanggal + ")", style: TextStyle(fontSize: 10),),
        //                             ],
        //                           ),
        //                           SizedBox(height: 10,),
        //                           Container(
        //                             child: Padding(
        //                               padding: const EdgeInsets.all(5),
        //                               child: Text("Status", style: TextStyle(color: Colors.white),),
        //                             ),
        //                             decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(30),
        //                               color: Colors.purple
        //                             ),
        //                           )
        //                         ],
        //                       ),
        //                       SizedBox(height: 10,),
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                         children: [
        //                           Row(
        //                             children: [
        //                               Text(permintaanItemInfoList.itemInfo[index].nama),
        //                               SizedBox(width: 30),
        //                               Text((permintaanItemInfoList.itemInfo[index].jumlah).toString(),),
        //                               SizedBox(width: 10),
        //                               Text(permintaanItemInfoList.itemInfo[index].satuan),
        //                             ],
        //                           ),
        //                           Container(
        //                             margin: EdgeInsets.only(right: 13),
        //                             child: pending,
        //                           )
        //                         ],
        //                       ),
        //                       SizedBox(height: 10,),
        //                       ElevatedButton(onPressed: (){
        //                         showDialog(context: context, builder: (BuildContext context){
        //                           return AlertDialog(
        //                             title: Text(permintaanItemInfoList.itemInfo[index].keterangan),
        //                             actions: [
        //                               TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("OK")),
        //                             ],
        //                           );
        //                         });
        //                       },
        //                       child: Text("Lihat Keterangan", style: TextStyle(fontSize: 10)),
        //                       style: ElevatedButton.styleFrom(
        //                         backgroundColor: Colors.grey.shade400,
        //                         foregroundColor: Colors.black,
        //                         elevation: 0,
        //                         minimumSize: Size(80, 30)
        //                       ),

        //                       )
        //                     ]
        //                   );

        //                 },
        //                 separatorBuilder: (context, index){
        //                   return Container(
        //                     margin: const EdgeInsets.symmetric(vertical: 5),
        //                     child: const Divider(
        //                       color: Colors.grey,
        //                     ),
        //                   );
        //                 },
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

        // floatingActionButton: FloatingActionButton(
        //   // backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        //   tooltip: 'Add Permintaan',
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const PermintaanStore()));
        //   },
        //   child: const Icon(Icons.add, color: Colors.white, size: 28),
        // ),
      ),
    );
  }
}
