import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/c02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/img5.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.45),
                  Image.asset(
                    'assets/images/img3.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D02PageUi(),
                        ),
                      );
                    },
                    child: Text('Login',
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        )),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        MediaQuery.of(context).size.height * 0.07,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Color(0xFF1E232C),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D03PageUi(),
                        ),
                      );
                    },
                    child: Text('Register',
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          color: Color(0xFF1E232C),
                          fontWeight: FontWeight.w500,
                        )),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        MediaQuery.of(context).size.height * 0.07,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Color(0xFFFFFFFF),
                      side: BorderSide(color: Color(0xFF1E232C), width: 1),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Continue as Guest',
                    style: GoogleFonts.outfit(
                      fontSize: 15,
                      color: Color(0xFF35C2C1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
