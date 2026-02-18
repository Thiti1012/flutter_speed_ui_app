import 'package:flutter/material.dart';

import 'package:flutter_speed_ui_app/view/e06_page_ui.dart';

import 'package:google_fonts/google_fonts.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFF8EEC0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, size: 18),
              color: const Color(0xFFFFFFFF),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'OTP Verification',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1E232C),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      Center(
                        child: Image.asset(
                          'assets/images/img2.png',
                          height: height * 0.3,
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(height: 30),

                      Text(
                        'Enter OTP',
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1E232C),
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'An 4 digit code has been sent to your email',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF575757),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // --- ส่วนช่อง OTP แบบชิดซ้าย ---

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // เปลี่ยนเป็นชิดซ้าย

                        children: [
                          // ใช้ for loop หรือ spread operator สร้างช่อง input พร้อมระยะห่าง

                          for (int i = 0; i < 4; i++) ...[
                            SizedBox(
                              width: 60, // กำหนดความกว้างตายตัว

                              height: 60,

                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: GoogleFonts.urbanist(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF1E232C),
                                ),
                                decoration: InputDecoration(
                                  counterText: "",
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  filled: true,
                                  fillColor: const Color(0xFFE3E3E3),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE8ECF4),
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // เพิ่มระยะห่างขวา ยกเว้นตัวสุดท้าย

                            if (i < 3) const SizedBox(width: 20),
                          ],
                        ],
                      ),

                      // ------------------------------

                      const SizedBox(height: 20),

                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'You should receive the OTP in ',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xFF8391A1),
                            ),
                            children: [
                              TextSpan(
                                text: '30 Second',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFF79515),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const E06PageUi(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Verify',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
