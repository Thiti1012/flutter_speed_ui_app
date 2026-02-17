import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d05_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d06_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class D05PageUi extends StatefulWidget {
  const D05PageUi({super.key});

  @override
  State<D05PageUi> createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
  @override
  bool _isObscure = true;
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
                        'OTP Verification',
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1E232C),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'Enter the verification code we just sent on your email address.',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF8391A1),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: 70,
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
                                fillColor: const Color(0xFFF7F8F9),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFE8ECF4),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF35C2C1),
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: height * 0.03),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => D06PageUi(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xFF1E232C),
                            elevation: 0,
                          ),
                          child: Text(
                            'Verify',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
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
