import 'package:flutter/material.dart';
import 'package:ujianakhirsemester/Layanan/delete_data.dart';
import 'package:ujianakhirsemester/Layanan/get_data.dart';
import 'package:ujianakhirsemester/Layanan/patch_data.dart';
import 'package:ujianakhirsemester/Layanan/post_data.dart';
import 'package:ujianakhirsemester/Layanan/update_data.dart';
import 'package:ujianakhirsemester/data.dart';
import 'package:ujianakhirsemester/layanan.dart';

import 'data_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MainPageState();
}

class _MainPageState extends State<HomePage> {
  Data? data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 5,
          centerTitle: true,
          title: const Text('Ujian Akhir Semester'),
        ),
        body: Center(
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: size.height / 3.5,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 3,
                          blurRadius: 9,
                          offset: Offset(0, 7))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'UAS |',
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                color: Colors.green),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Gilang Andira Pratama"),
                              Text('20190801349')
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Pemograman Mobile',
                        style: TextStyle(fontSize: 27),
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.green.withOpacity(0.3),
                    highlightColor: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return PostData();
                      })));
                    },
                    child: Container(
                        width: size.width,
                        child: buildCard(Icons.upload, 'Post Data')),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.green.withOpacity(0.3),
                    highlightColor: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return GetData();
                      })));
                    },
                    child: Container(
                        width: size.width,
                        child: buildCard(Icons.download, 'Get Data')),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.green.withOpacity(0.3),
                    highlightColor: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return PatchData();
                      })));
                    },
                    child: Container(
                        width: size.width,
                        child: buildCard(
                            Icons.design_services_rounded, 'Patch Data')),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.green.withOpacity(0.3),
                    highlightColor: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return DeleteData();
                      })));
                    },
                    child: Container(
                        width: size.width,
                        child: buildCard(Icons.delete, 'Delete Data')),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.green.withOpacity(0.3),
                    highlightColor: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return UpdateData();
                      })));
                    },
                    child: Container(
                        width: size.width,
                        child: buildCard(Icons.update, 'Put Data')),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container buildCard(IconData iconData, String text) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 75,
      width: size.width,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green[200],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
