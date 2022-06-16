import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class calendar extends StatefulWidget {
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Detail",
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) =>
                  [PopupMenuItem(child: Text("Settings"))])
        ],
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.5,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.white, Color(0xffD4E0F5)],
                          center: Alignment.topLeft,
                          radius: 1,
                          stops: [0.5, 1]),
                    ),
                  ),
                  Container(
                    height: size.height * 0.5,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Colors.white, Color(0xffD4E0F5)],
                          center: Alignment.bottomRight,
                          radius: 1,
                          stops: [0.5, 1]),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  child: Calendar(
                    startOnMonday: true,
                    weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
                    onRangeSelected: (range) =>
                        print('Range is ${range.from}, ${range.to}'),
                    isExpandable: true,
                    eventDoneColor: Colors.green,
                    selectedColor: Colors.pink,
                    todayColor: Colors.blue,
                    eventColor: Colors.grey,
                    locale: 'de_DE',
                    todayButtonText: 'Heute',
                    expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                    dayOfWeekStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 11),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
