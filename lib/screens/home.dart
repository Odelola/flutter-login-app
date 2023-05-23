import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "MaxPense",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[800]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "A place where you can track all your \nexpenses and incomes...",
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Let's Get Started...",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.50,
                        ),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png"),
                        const SizedBox(width: 10),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.all(12.0),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.50,
                        ),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Continue with Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset("assets/images/atSymbol.png"),
                      ],
                    ),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.all(15.0),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      const SizedBox(width: 5),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: new Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blue[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                    // padding: EdgeInsets.all(top:)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
