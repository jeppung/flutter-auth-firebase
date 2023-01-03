import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock,
              size: 120,
            ),
            const SizedBox(height: 50),
            const Text(
              "Welcome back you've been missed!",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Username",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white30,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white30,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forgot Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Sign In",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(20),
                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "---------------- Or continue with ----------------",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      border: Border.all(color: Colors.white54, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Image.asset('images/google.png'),
                  ),
                ),
                const SizedBox(width: 25),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      border: Border.all(color: Colors.white54, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'images/apple.png',
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text.rich(TextSpan(text: "Not a member? ", children: [
              TextSpan(
                  text: "Register Now",
                  style: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => debugPrint("Register")),
            ]))
          ],
        ),
      ),
    );
  }
}
