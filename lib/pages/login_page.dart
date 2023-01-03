import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign In Method (email & password)
  void signUserIn(String email, String password) async {
    // show loading circle
    showDialog(
      context: context,
      builder: (loadingContext) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Navigator.pop(context);

        AlertDialog alert = const AlertDialog(
          title: Text("Login Error"),
          content: Text("User not found"),
        );

        showDialog(
          context: context,
          builder: (alertContext) {
            return alert;
          },
        );
      } else if (e.code == "wrong-password") {
        Navigator.pop(context);

        AlertDialog alert = const AlertDialog(
          title: Text("Login Error"),
          content: Text("User not found"),
        );

        showDialog(
          context: context,
          builder: (alertContext) {
            return alert;
          },
        );
      }
    }

    // pop the loading screen
    Navigator.pop(context);
  }

  // Sign In Method (gmail)

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
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white30,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
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
                onPressed: () {
                  signUserIn(emailController.text, passwordController.text);
                },
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
