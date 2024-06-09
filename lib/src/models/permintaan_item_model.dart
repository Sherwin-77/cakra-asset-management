import 'package:flutter/material.dart';

@immutable
class PermintaanItemInfo{
  const PermintaanItemInfo({
    required this.nama,
    required this.jurusan,
    required this.satuan,
    required this.jumlah,
    required this.keterangan,
    required this.tanggal,
    required this.status //pending, terima, tolak
  });
  final String nama;
  final String jurusan;
  final String satuan;
  final int jumlah;
  final String keterangan;
  final String tanggal;
  final String status;
}

final List<PermintaanItemInfo> _itemInfo = [];

class PermintaanItemInfoProvider with ChangeNotifier{
  List<PermintaanItemInfo> get itemInfo => _itemInfo;

  void addItemInfo(String nama, String jurusan, String satuan, int jumlah, String keterangan, String tanggal, String status){
    _itemInfo.add(PermintaanItemInfo(nama: nama, jurusan: jurusan, satuan: satuan, jumlah: jumlah, keterangan: keterangan, tanggal: tanggal, status: status));
    notifyListeners();
  }
}