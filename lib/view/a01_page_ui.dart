import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/a02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xFFF89AEE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/img7.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.contain,
                    scale: 1,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                'Discover Your',
                style: GoogleFonts.outfit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              Text(
                'Own Dream House',
                style: GoogleFonts.outfit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Column(children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  'et.Eget viverra urna, vestibulum egestas faucibus',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  'egestas. Sagittis nam velit volutpat eu nunc.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 60),
              ]),
              Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sing in',
                          style: GoogleFonts.outfit(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.45,
                          MediaQuery.of(context).size.height * 0.07,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(0),
                        )),
                        backgroundColor: Color(0xFFF89AEE),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => A02PageUi(),
                          ),
                        );
                      },
                      child: Text('Register',
                          style: GoogleFonts.outfit(
                            fontSize: 25,
                            color: Color(0xFF545151),
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.45,
                          MediaQuery.of(context).size.height * 0.07,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        backgroundColor: Color(0xFFF3F3F3),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
