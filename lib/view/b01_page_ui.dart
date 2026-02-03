import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/view/b02_page_ui.dart';

class B01PageUi extends StatefulWidget {
  const B01PageUi({super.key});

  @override
  State<B01PageUi> createState() => _B01PageUiState();
}

class _B01PageUiState extends State<B01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Image.asset(
              'assets/images/img11.png',
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              'Discover Your',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: Color(0xFF1F41BB),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Dream Job here',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: Color(0xFF1F41BB),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'Explore all the existing job roles based on your',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.normal),
            ),
            Text(
              'interest and study major',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.normal),
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => B02PageUi(),
                        ),
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.42,
                        MediaQuery.of(context).size.height * 0.06,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF1F41BB),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => B02PageUi(),
                        ),
                      );
                    },
                    child: Text('Register',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A0A0A),
                        )),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.42,
                        MediaQuery.of(context).size.height * 0.06,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFFFFFFFF),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
