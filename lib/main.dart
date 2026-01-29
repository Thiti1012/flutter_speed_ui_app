import 'package:flutter/material.dart';

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
    return Scaffold();
  }
}
