import 'package:flutter/material.dart';

import '../data.dart';
import '../data_card.dart';
import '../layanan.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  Data? data;
  TextEditingController idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Get Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
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
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 131, 243, 137),
                        onPrimary: Colors.green),
                    onPressed: () async {
                      var id = idController.text;
                      Data? result = await Layanan.getData(int.parse(id));
                      if (result != null) {
                        setState(() {
                          data = result;
                        });
                      }
                    },
                    child: const Text(
                      'Get Data',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
