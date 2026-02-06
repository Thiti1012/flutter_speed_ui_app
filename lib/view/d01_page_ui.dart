import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/view/d02_page_ui.dart';
import 'package:flutter_body_health_calculator_app/view/d03_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                'assets/images/img5.png',
                fit: BoxFit.cover,
              ),
            ),
          ])
        ],
      )),
    );
  }
}
