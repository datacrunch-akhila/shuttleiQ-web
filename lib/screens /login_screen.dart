import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: 360,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/logo.png', height: 80),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to ShuttleIQ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  TextField(decoration: const InputDecoration(labelText: 'Email')),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TEMP: direct navigation
                      },
                      child: const Text('Login'),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: const Text('Create an account'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
