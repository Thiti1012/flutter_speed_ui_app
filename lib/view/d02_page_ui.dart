import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d04_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class D02PageUi extends StatefulWidget {
  const D02PageUi({super.key});

  @override
  State<D02PageUi> createState() => _D02PageUiState();
}

class _D02PageUiState extends State<D02PageUi> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
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
                      SizedBox(height: MediaQuery.of(context).padding.top + 10),
                      Row(
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
                          const Spacer(),
                          const Icon(Icons.signal_cellular_alt, size: 18),
                          const SizedBox(width: 5),
                          const Icon(Icons.wifi, size: 18),
                          const SizedBox(width: 5),
                          const Icon(FontAwesomeIcons.batteryFull, size: 18),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        'Welcome back! Glad \n to see you, Again!',
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1E232C),
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          filled: true,
                          fillColor: const Color(0xFFF7F8F9),
                          hintText: 'Enter your email',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF8391A1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          filled: true,
                          fillColor: const Color(0xFFF7F8F9),
                          hintText: 'Enter your password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF8391A1),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color(0xFF8391A1),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const D04PageUi(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF6A707C),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xFF1E232C),
                            elevation: 0,
                          ),
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xFFE8ECF4),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Or Login with',
                              style: GoogleFonts.urbanist(
                                color: const Color(0xFF6A707C),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xFFE8ECF4),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFE8ECF4)),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/icon/facebook1.png',
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFE8ECF4)),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/icon/google.png',
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFE8ECF4)),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/icon/apple.png',
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account? ',
                              style: GoogleFonts.urbanist(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF1E232C),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const D03PageUi(),
                                  ),
                                );
                              },
                              child: Text(
                                'Register Now',
                                style: GoogleFonts.urbanist(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF35C2C1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
