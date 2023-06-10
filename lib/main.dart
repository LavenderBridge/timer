import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
//import 'package:slide_countdown';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var end = DateTime(2023,06,11,7,0);
  int Hours = 12;
  int Minutes = 60;
  int Seconds = 60;

  @override
  Widget build(BuildContext context) {
    var remain = DateTime.now().difference(end).inHours;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Flutter Fest",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Arial"
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SlideCountdown(
            duration: Duration(hours: 10, minutes: 2),
            slideDirection: SlideDirection.up,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 150,
            ),
            separatorStyle: TextStyle(fontSize: 120, color: Colors.white),
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            width: 400,
            height: 200,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage(
                "Images/gdsc.png",
              ),
            ),
          ),
        ],
      )),
    );
  }
}
