import 'package:flutter/material.dart';
import '../dashboard.dart';
import '../login.dart';

class RegisterVerifyPage extends StatelessWidget {
  const RegisterVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ImageIcon(
                  AssetImage("assets/images/chevronLeft.png"),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[800]),
              ),
              const SizedBox(height: 15),
              Text(
                  "We have sent an email to your email \naccount with a verification code!"),
              const SizedBox(height: 15),
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "EX: 123456",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        // borderColor: Colors.blue[800],
                      ))),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Register",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        padding: const EdgeInsets.all(12.0),
                      ),
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
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                      // padding: EdgeInsets.all(top:)
                    )
                  ],
                ),
              )
            ]),
            ),
        ));
  }
}
