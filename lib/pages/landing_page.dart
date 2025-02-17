import 'package:flutter/material.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    // Bắt đầu đếm ngược 3 giây và chuyển hướng sau khi hoàn thành
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo của ứng dụng
            Image.asset(
              'assets/logo.png', // Đường dẫn đến logo trong thư mục assets
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            // Dòng chữ chào mừng
            const Text(
              'Chào mừng đến với CAS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Thanh tiến trình
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
