import 'dart:ui';

import 'package:flutter/material.dart';

import '../data.dart';
import '../data_card.dart';
import '../layanan.dart';

class PatchData extends StatefulWidget {
  const PatchData({super.key});

  @override
  State<PatchData> createState() => _PatchDataState();
}

class _PatchDataState extends State<PatchData> {
  Data? data;
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        title: Text('Patch Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              data != null
                  ? DataCard(data: data!)
                  : const Text('Tidak Ada Data'),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: idController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green),
                      prefixIcon: Icon(
                        Icons.book,
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Masukan Id"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Masukan Nama"),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 131, 243, 137),
                        onPrimary: Colors.green),
                    onPressed: () async {
                      var id = int.parse(idController.text);
                      var name = nameController.text;
                      Data? result = await Layanan.patchData(id, name);

                      if (result != null) {
                        data = result;
                      }
                    },
                    child: const Text(
                      'Patch',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
