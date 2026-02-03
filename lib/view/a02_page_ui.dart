import 'package:flutter/material.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  // 1. ฟังก์ชันสร้างแถบสถานะจำลอง (Fake Status Bar)
  Widget _buildFakeStatusBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0), // เว้นขอบ
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // เวลา
          const Text(
            "9:41",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // กลุ่มไอคอน (สัญญาณ, Wifi, แบต)
          Row(
            children: const [
              Icon(Icons.signal_cellular_alt, size: 18),
              SizedBox(width: 5),
              Icon(Icons.wifi, size: 18),
              SizedBox(width: 5),
              Icon(Icons.battery_full, size: 18),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      // 2. ไม่ใช้ AppBar ปกติ เพื่อให้เราจัดหน้าจอได้เองทั้งหมด

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // --- ส่วนที่ 1: แถบสถานะจำลอง ---
              _buildFakeStatusBar(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                // 3. ใช้ Padding ในการจัดหน้า เว้นขอบไว้ 30 พิกเซล
                child: Column(
                  children: [
                    const SizedBox(height: 10),

                    // --- ส่วนที่ 2: ปุ่มย้อนกลับ (ทำเอง) ---
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.black),
                        onPressed: () {
                          // โค้ดสำหรับกดกลับ
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                        },
                      ),
                    ),

                    const SizedBox(height: 10),

                    // --- ส่วนที่ 3: หัวข้อและเนื้อหา ---
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF464444),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 40),

                    // --- ส่วนที่ 4: ช่องกรอกข้อมูล ---
                    // ช่อง Username
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username , Email & Phone Number',
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: const Color(0xFFF3F3F3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(20),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // ช่อง Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: const Color(0xFFF3F3F3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(20),
                      ),
                    ),

                    // ปุ่ม Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // --- ส่วนที่ 5: ปุ่ม Sign In ---
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF89AEE), // สีชมพู
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // --- ส่วนที่ 6: เส้นคั่น Or Sign up With ---
                    Row(
                      children: const [
                        Expanded(child: Divider(color: Color(0xFFF89AEE))),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Or Sign up With',
                              style: TextStyle(color: Colors.grey)),
                        ),
                        Expanded(child: Divider(color: Color(0xFFF89AEE))),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // --- ส่วนที่ 7: ปุ่ม Social Media ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialButton(
                            Icons.g_mobiledata, Colors.green), // Google
                        const SizedBox(width: 20),
                        _buildSocialButton(
                            Icons.facebook, Colors.blue), // Facebook
                        const SizedBox(width: 20),
                        _buildSocialButton(Icons.apple, Colors.black), // Apple
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper: สร้างปุ่มวงกลม Social Media
  Widget _buildSocialButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFF3F3F3),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color, size: 30),
    );
  }
}
