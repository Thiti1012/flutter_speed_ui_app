import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/view/a02_page_ui.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: (Column(
          children: [
            SizedBox(height: 0.010 * MediaQuery.of(context).size.height),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                color: Color(0xFFF89AEE),
                // ทำให้ขอบด้านล่างมนตามรูป
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              // ใส่รูปภาพตรงนี้ (อย่าลืม import รูปเข้า assets ใน pubspec.yaml)
              child: Center(
                child: Image.asset(
                  'assets/images/img7.png', // <-- เปลี่ยนเป็น path รูปของคุณ
                  fit: BoxFit.contain, // ปรับขนาดรูปให้พอดี
                  scale: 0.8, // ปรับย่อ/ขยายรูปตามต้องการ
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Discover Your',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.075,
                fontWeight: FontWeight.bold,
                color: Color(0xFF464444),
              ),
            ),
            Text(
              'Own Dream House',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.075,
                fontWeight: FontWeight.bold,
                color: Color(0xFF464444),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.033,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'Diam maecenas mi non sed ut odio. Non, justo, sed facilisi',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.033,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'et.Eget viverra urna, vestibulum egestas faucibus',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.033,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'egestas. Sagittis nam velit volutpat eu nunc.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.033,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 80),
            Row(
              children: [
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sing in',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.45,
                      MediaQuery.of(context).size.height * 0.07,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(0),
                    )),
                    backgroundColor: Color(0xFFF89AEE),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => A02PageUi(),
                      ),
                    );
                  },
                  child: Text('Register',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF545151),
                      )),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.45,
                      MediaQuery.of(context).size.height * 0.07,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(20),
                    )),
                    backgroundColor: Color(0xFFF3F3F3),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
