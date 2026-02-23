import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/b03_page_ui.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                'assets/images/img11.png',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.contain,
                scale: 1,
              ),
              SizedBox(height: 20),
              Text(
                'Discover Your',
                style: TextStyle(
                    fontSize: 35.0,
                    color: Color(0xFF1F41BB),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Dream Job here',
                style: TextStyle(
                    fontSize: 35.0,
                    color: Color(0xFF1F41BB),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Explore all the existing job roles based on your',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.normal),
              ),
              Text(
                'interest and study major',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          fontSize: 15,
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
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => B03PageUi(),
                        ),
                      );
                    },
                    child: Text('Register',
                        style: TextStyle(
                          fontSize: 15,
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
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
