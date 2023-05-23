import 'package:flutter/material.dart';
import '../dashboard.dart';

class ForgotPasswordNewPasswordPage extends StatelessWidget {
  const ForgotPasswordNewPasswordPage({super.key});

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
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[800]),
              ),
              const SizedBox(height: 15),
              Text(
                  "Set your new password to login into \nyour account!"),
              const SizedBox(height: 15),
              Text(
                "Enter New Password",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "............",
                      prefixIcon: Image.asset("assets/images/lock.png"),
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
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
                              "Confirm",
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
                  ],
                ),
              )
            ]),
            ),
        ));
  }
}
