import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e04_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // ปรับรูปส้มให้ดันขึ้นไปสุดขอบ
                Image.asset(
                  'assets/images/img4.png',
                  width: width,
                  // กำหนดความสูงเพื่อให้รูปไม่กินพื้นที่เนื้อหามากเกินไป หรือจะใช้ fitWidth ตามเดิมถ้าสัดส่วนพอดีแล้ว
                  // แต่ถ้ามันยังไม่ดันขึ้น ลองใช้ fit: BoxFit.cover คู่กับ Container ที่กำหนด height
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 30,
                  left: 20,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8EEC0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  SizedBox(height: height * 0.01),
                  Text(
                    'Registered',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E232C),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Create your new account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF6A707C),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  // ... (TextFields ส่วนเดิม ไม่ได้แตะต้อง) ...
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      filled: true,
                      fillColor: const Color(0xFFF7F8F9),
                      hintText: 'Name',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF8391A1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      filled: true,
                      fillColor: const Color(0xFFF7F8F9),
                      hintText: 'E-mail',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF8391A1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      filled: true,
                      fillColor: const Color(0xFFF7F8F9),
                      hintText: 'Phone',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF8391A1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      filled: true,
                      fillColor: const Color(0xFFF7F8F9),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF8391A1),
                      ),
                    ),
                  ),

                  // --- เพิ่มส่วนข้อความ Terms & Conditions ตรงนี้ ---
                  SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By signing up you agree to our ',
                      style: GoogleFonts.urbanist(
                        fontSize: 14,
                        color: const Color(0xFF6A707C),
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            color: const Color(0xFFF79515), // สีส้ม
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            color: const Color(0xFF6A707C),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            color: const Color(0xFFF79515), // สีส้ม
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ------------------------------------------------

                  SizedBox(height: height * 0.03),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFC52A),
                          Color(0xFFF69515),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // ... (ส่วน Divider และ Social Login เดิม) ...
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFFFFFFFF),
                                Color(0xFFF79515),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'OR',
                        style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 70, 70, 70),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFFF79515),
                                Color(0xFFFFFFFF),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 40,
                        icon: Image.asset(
                          'assets/icon/google.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      SizedBox(width: 15),
                      IconButton(
                        onPressed: () {},
                        iconSize: 40,
                        icon: Image.asset(
                          'assets/icon/facebook2.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      SizedBox(width: 15),
                      IconButton(
                        onPressed: () {},
                        iconSize: 40,
                        icon: Image.asset(
                          'assets/icon/apple.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.urbanist(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1E232C),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          ' Login', // เพิ่ม Space นิดนึง
                          style: GoogleFonts.urbanist(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFF79515),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
