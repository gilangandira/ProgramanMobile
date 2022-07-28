import 'dart:ui';

import 'package:flutter/material.dart';

import '../data.dart';
import '../data_card.dart';
import '../layanan.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({super.key});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  Data? data;
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        title: Text('Update Data'),
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
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Masukan Email"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: bodyController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.green),
                      prefixIcon: Icon(
                        Icons.web,
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Masukan Body Text"),
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
                      var email = emailController.text;
                      var body = bodyController.text;
                      Data? result =
                          await Layanan.putData(id, id, name, email, body);
                      if (result != null) {
                        setState(() {
                          data = result;
                        });
                      }
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
