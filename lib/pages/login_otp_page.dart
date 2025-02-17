import 'package:flutter/material.dart';
import 'package:casv4/services/auth_service.dart';

class LoginOtpPage extends StatelessWidget {
  const LoginOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();
    final TextEditingController otpController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Enter the 6-digit OTP sent to your phone',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: otpController,
                decoration: InputDecoration(
                  labelText: 'OTP',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                maxLength: 6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to the login page
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255,
                          255), // Optional: Change color for distinction
                    ),
                    child: const Text('Back to Login'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await authService.loginOTP(
                        otpController.text,
                      );
                      print(response);
                    },
                    child: const Text('Verify OTP'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
