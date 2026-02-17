import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/b02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B03PageUi extends StatefulWidget {
  const B03PageUi({super.key});

  @override
  State<B03PageUi> createState() => _B03PageUiState();
}

class _B03PageUiState extends State<B03PageUi> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1F41BB),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  'Create an account so you can explore all the existing jobs',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF000000),
                  ),
                ),
                SizedBox(height: height * 0.05),
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
                    fillColor: const Color(0xFFF1F4FF),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: height * 0.02),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    filled: true,
                    fillColor: const Color(0xFFF1F4FF),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: height * 0.02),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    filled: true,
                    fillColor: const Color(0xFFF1F4FF),
                    hintText: 'Confirm Password',
                  ),
                ),
                SizedBox(height: height * 0.05),
                SizedBox(
                  width: double.infinity,
                  height: height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xFF1F41BB),
                      elevation: 5,
                      shadowColor: const Color(0xFF1F41BB).withOpacity(0.4),
                    ),
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const B02PageUi()),
                    );
                  },
                  child: Text(
                    'Already have an account',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF494949),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Text(
                  'Or continue with',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1F41BB),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(60, 44),
                        backgroundColor: const Color(0xFFECECEC),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(FontAwesomeIcons.google,
                          size: 20, color: Color(0xFF000000)),
                    ),
                    SizedBox(width: width * 0.04),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(60, 44),
                        backgroundColor: const Color(0xFFECECEC),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(FontAwesomeIcons.facebookF,
                          size: 20, color: Color(0xFF000000)),
                    ),
                    SizedBox(width: width * 0.04),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(60, 44),
                        backgroundColor: const Color(0xFFECECEC),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(FontAwesomeIcons.apple,
                          size: 20, color: Color(0xFF000000)),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
