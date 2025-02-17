import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:casv4/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Text(
                  'CAS',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A90E2), // Màu xanh dương
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome to Modernize',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 10),
                // Sign in with Google and Facebook
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/google.png', height: 24),
                  label: const Text('Sign in with Google'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 253, 253, 253), // Màu đỏ cho Google
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/facebook.png', height: 24),
                  label: const Text('Sign in with FB'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 255, 255, 255), // Màu xanh cho Facebook
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('or sign in with'),
                const SizedBox(height: 20),

                // Username and Password fields
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF4A90E2)), // Màu xanh khi focus
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF4A90E2)), // Màu xanh khi focus
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                // Remember this device and Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 10),

                // Sign In button
                ElevatedButton(
                  onPressed: () async {
                    // Gọi phương thức login
                    final response = await authService.login(
                      usernameController.text,
                      passwordController.text,
                    );
                    if (context.mounted) {
                      if (response.containsKey('token')) {
                        Navigator.pushReplacementNamed(context, '/login-otp');
                        Flushbar(
                          message:
                              'Login successful! Redirecting to OTP page...',
                          duration: Duration(seconds: 3),
                          flushbarPosition: FlushbarPosition.TOP,
                          borderRadius: BorderRadius.circular(8),
                          backgroundColor: Colors.green,
                          icon: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                          ),
                        ).show(context);
                      } else {
                        Flushbar(
                          message: response['reasons']['message'],
                          duration: Duration(seconds: 3),
                          flushbarPosition: FlushbarPosition.TOP,
                          borderRadius: BorderRadius.circular(8),
                          backgroundColor: Colors.red,
                          icon: Icon(
                            Icons.error_outline,
                            color: Colors.white,
                          ),
                        ).show(context);
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4A90E2),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // New to Modernize?
                TextButton(
                  onPressed: () {
                    // Chuyển đến trang đăng ký
                  },
                  child: const Text('New to Modernize? Create an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
