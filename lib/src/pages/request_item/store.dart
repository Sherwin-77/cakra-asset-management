import 'package:cakra_asset_management/src/helpers/string_helper.dart';
import 'package:cakra_asset_management/src/models/common/item_unit.dart';
import 'package:cakra_asset_management/src/themed_layout.dart';
import 'package:flutter/material.dart';

class RequestItemStorePage extends StatefulWidget {
  const RequestItemStorePage({super.key});

  @override
  State<RequestItemStorePage> createState() => _RequestItemStorePageState();
}

class _RequestItemStorePageState extends State<RequestItemStorePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _resetForm() {
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permintaan Barang BMN'),
      ),
      body: ThemedLayout(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ThemedLayout(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    const Text('Program Studi'),
                    TextFormField(
                        // decoration: const InputDecoration(
                        //   labelText: 'Program Studi',
                        //   labelStyle: TextStyle(fontWeight: FontWeight.w300),
                        // ),
                        ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text('Nama Barang'),
                    TextFormField(
                        // decoration: const InputDecoration(
                        //   labelText: 'Nama Barang',
                        //   labelStyle: TextStyle(fontWeight: FontWeight.w300),
                        // ),
                        ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text('Tanggal permintaan'),
                    TextFormField(
                      // decoration: const InputDecoration(
                      //   labelText: 'Tanggal Permintaan',
                      //   labelStyle: TextStyle(fontWeight: FontWeight.w300),
                      // ),
                      keyboardType: TextInputType.datetime,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Jumlah',
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.w300),
                            ),
                            keyboardType:
                                TextInputType.number, // Assuming numeric input
                          ),
                        ),
                        const SizedBox(width: 16), // Spacer
                        Expanded(
                          child: DropdownButtonFormField<ItemUnit>(
                            decoration: const InputDecoration(
                              labelText: 'Satuan',
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.w300),
                            ),
                            items: ItemUnit.values.map((ItemUnit value) {
                              return DropdownMenuItem<ItemUnit>(
                                value: value,
                                child: Text(capitalize(value.name)),
                              );
                            }).toList(),
                            onChanged: (ItemUnit? value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16), // Spacer
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Keterangan',
                        labelStyle: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      maxLines: 5, // Multiline input
                    ),
                    const SizedBox(height: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implement simpan functionality here
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF5D00C3)),
                          ),
                          child: const Text(
                            'Simpan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: _resetForm,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF5D00C3)),
                          ),
                          child: const Text(
                            'Reset',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
