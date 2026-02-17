import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/a01_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUi extends StatelessWidget {
  const A02PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            height: screenHeight < 980.0 ? 980.0 : screenHeight,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StreamBuilder<DateTime>(
                        stream: Stream.periodic(
                          const Duration(seconds: 1),
                          (_) => DateTime.now(),
                        ),
                        initialData: DateTime.now(),
                        builder: (context, snapshot) {
                          final now = snapshot.data ?? DateTime.now();
                          final hh = now.hour.toString().padLeft(2, '0');
                          final mm = now.minute.toString().padLeft(2, '0');
                          return Text(
                            '$hh:$mm',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          );
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.signal_cellular_4_bar, size: 15),
                          SizedBox(width: 4),
                          Icon(Icons.wifi, size: 15),
                          SizedBox(width: 4),
                          Icon(Icons.battery_full_sharp, size: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Text(
                    'Welcome Back',
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF464444),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Column(children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing  ',
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'elit. Diam maecenas mi non sed ut odio. Non, justo,',
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'sed facilisi et. ',
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                Positioned(
                  top: 230,
                  left: 28,
                  right: 28,
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Usename,Email & Phone Number',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 245, 245),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 22,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 245, 245),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 22,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.roboto(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => A01PageUi(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF89AEE),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 3,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFFFFFF),
                                    Color(0xFFF89AEE),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Or Sign up With',
                            style: GoogleFonts.roboto(
                              color: const Color.fromARGB(255, 70, 70, 70),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 3,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFF89AEE),
                                    Color(0xFFFFFFFF),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(99),
                            child: Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 238, 238),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 237, 174, 229),
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icon/google.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(99),
                            child: Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 238, 238),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 237, 174, 229),
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icon/facebook1.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(99),
                            child: Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 238, 238),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 237, 174, 229),
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icon/apple.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
