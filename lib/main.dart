import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/view/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      //เรียกใช้งานานี้เป็นจุดเริ่มต้นของแอป
      FlutterSpeedUIAPP());
}

class FlutterSpeedUIAPP extends StatefulWidget {
  const FlutterSpeedUIAPP({super.key});

  @override
  State<FlutterSpeedUIAPP> createState() => _FlutterSpeedUIAPPState();
}

class _FlutterSpeedUIAPPState extends State<FlutterSpeedUIAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ซ่อนแถบ debug
      debugShowCheckedModeBanner: false,
      //กำหนด HomeUi เป็นหน้าแรกของแอป
      home: HomeUi(),
      //กำหนดฟอนต์ทั่วทั้งแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          //นำฟอนต์ Kanit มาใช้แทนฟอนต์ดีฟอลต์
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
