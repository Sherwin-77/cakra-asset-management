import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang', style: TextStyle(color: Colors.white)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.list_rounded,
              size: 30,
              color: Colors.white,
            )),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "CAKRA ASSET MANAGEMENT",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "Dibuat oleh Kelompok Cakra",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "IF-A Sore, Semester IV, Juli 2024",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              const Text(
                "Pengembangan Mobile Flutter",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anggota",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Karina Desi Liady",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "(221111905)",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Rein Jonathan Thomas",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "(221110904)",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Sherwin Prasetya Makmur",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "(221110711)",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Vincent Stanley",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "(221110003)",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Wilson Tovano",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "(221113421)",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
