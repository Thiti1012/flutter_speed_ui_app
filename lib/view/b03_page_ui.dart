import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/view/b02_page_ui.dart';
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
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
            child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            Text(
              'Create Account',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F41BB),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              'Create an account so you can explore all the',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'all the existing jobs',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                filled: true,
                fillColor: Color(0xFFF1F4FF),
                hintText: 'Email',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                filled: true,
                fillColor: Color(0xFFF1F4FF),
                hintText: 'Password',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                filled: true,
                fillColor: Color(0xFFF1F4FF),
                hintText: 'Confirm Password',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFF1F41BB),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => B02PageUi()));
              },
              child: Text('Already have an account'),
              style: TextButton.styleFrom(
                textStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF494949),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Text(
              'Or continue with',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F41BB),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.google,
                      size: 22, color: Color(0xFF000000)),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.17,
                      MediaQuery.of(context).size.height * 0.055,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.facebook,
                      size: 22, color: Color(0xFF000000)),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.17,
                      MediaQuery.of(context).size.height * 0.055,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(FontAwesomeIcons.apple,
                      size: 22, color: Color(0xFF000000)),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.17,
                      MediaQuery.of(context).size.height * 0.055,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
