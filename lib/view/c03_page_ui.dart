import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/c02_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final bool isSmallScreen = height < 700;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
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
                      const Icon(FontAwesomeIcons.batteryEmpty, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: isSmallScreen ? 30.0 : 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.03),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF34A751),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/img10.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    'Create your account',
                    style: GoogleFonts.poppins(
                        fontSize: 27, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    'Name',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6F6F6F)),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      filled: true,
                      fillColor: const Color(0xFFFAFAFA),
                      hintText: 'ex: John smith',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Email',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6F6F6F)),
                  ),
                  const SizedBox(height: 10),
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
                      fillColor: const Color(0xFFFAFAFA),
                      hintText: 'ex: John.smith@gmail.com',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Password',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6F6F6F)),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      filled: true,
                      fillColor: const Color(0xFFFAFAFA),
                      hintText: '**********',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Confirm Password',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF6F6F6F)),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      filled: true,
                      fillColor: const Color(0xFFFAFAFA),
                      hintText: '**********',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Icon(
                          isChecked
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: const Color(0xFF34A751),
                          size: 25.0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: 'I understood the ',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color(0xFF000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'terms & policy.',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF00B140),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                        backgroundColor: const Color(0xFF00B140),
                        elevation: 0,
                      ),
                      child: Text(
                        'SIGN UP',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Center(
                    child: Text(
                      'or sign in with',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF6F6F6F)),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.18,
                        height: width * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/google.png',
                            fit: BoxFit.contain,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Container(
                        width: width * 0.18,
                        height: width * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/facebook1.png',
                            fit: BoxFit.contain,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Container(
                        width: width * 0.18,
                        height: width * 0.12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/twitter.png',
                            fit: BoxFit.contain,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account? ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF888888),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const C02PageUi()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'SIGN IN',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF00B140),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
