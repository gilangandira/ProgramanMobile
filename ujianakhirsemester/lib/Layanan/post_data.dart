import 'dart:ui';

import 'package:flutter/material.dart';

import '../data.dart';
import '../data_card.dart';
import '../layanan.dart';

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _GetDataState();
}

class _GetDataState extends State<PostData> {
  Data? data;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        title: Text('Post Data'),
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
                      hintText: "Masukan Body"),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 131, 243, 137),
                        onPrimary: Colors.green),
                    onPressed: () async {
                      var name = nameController.text;
                      var email = emailController.text;
                      var body = bodyController.text;
                      Data? result =
                          await Layanan.postData(name, email, body);

                      if (result != null) {
                        data = result;
                      }
                    },
                    child: const Text(
                      'POST',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
