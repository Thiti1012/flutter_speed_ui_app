import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/b03_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B02PageUi extends StatefulWidget {
  const B02PageUi({super.key});

  @override
  State<B02PageUi> createState() => _B02PageUiState();
}

class _B02PageUiState extends State<B02PageUi> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  'Login here',
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1F41BB),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Welcome back youve',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF000000),
                  ),
                ),
                Text(
                  'been missed!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
                        vertical: 20.0, horizontal: 10.0),
                    filled: true,
                    fillColor: const Color(0xFFF1F4FF),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: height * 0.025),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 10.0),
                    filled: true,
                    fillColor: const Color(0xFFF1F4FF),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: height * 0.02),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot your password?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1F41BB),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      width * 0.9,
                      height * 0.07,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color(0xFF1F41BB),
                    elevation: 5,
                    shadowColor: const Color(0xFF1F41BB).withOpacity(0.4),
                  ),
                ),
                SizedBox(height: height * 0.03),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const B03PageUi()),
                    );
                  },
                  child: Text(
                    'Create new account',
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
                    _buildSocialButton(icon: FontAwesomeIcons.google),
                    SizedBox(width: width * 0.04),
                    _buildSocialButton(icon: FontAwesomeIcons.facebookF),
                    SizedBox(width: width * 0.04),
                    _buildSocialButton(icon: FontAwesomeIcons.apple),
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

  Widget _buildSocialButton({required IconData icon}) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(icon, size: 20, color: const Color(0xFF000000)),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        fixedSize: const Size(60, 44),
        backgroundColor: const Color(0xFFECECEC),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
