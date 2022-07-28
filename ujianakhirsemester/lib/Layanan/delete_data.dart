import 'package:flutter/material.dart';

import '../data.dart';
import '../data_card.dart';
import '../layanan.dart';

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  Data? data;

  String succes = "Masukan User Yang Akan Dihapus";

  TextEditingController idController = TextEditingController();

  void deleteState() {
    setState(() {
      if (succes == "Masukan User Yang Akan Dihapus") {
        succes = "User Sudah di Hapus";
      } else {
        succes = "Masukan User Yang Akan Dihapus";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        title: Text('Get Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              data != null ? DataCard(data: data!) : Text(succes),
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
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 131, 243, 137),
                        onPrimary: Colors.green),
                    onPressed: () async {
                      deleteState();
                      var id = idController.text;
                      Data? result = await Layanan.deleteData(int.parse(id));
                      if (result != null) {
                        setState(() {
                          data = result;
                        });
                      }
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
