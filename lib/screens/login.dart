import 'package:flutter/material.dart';
import 'register/register.dart';
import 'forgot_password/forgot_password.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                "Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[800]),
              ),
              const SizedBox(height: 10),
              const Text(
                "Login now to track all your expenses \nand income at a place!",
              ),
              const SizedBox(height: 30),
              Text("Email"),
              const SizedBox(height: 5),
              TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Ex: abc@example.com",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                      prefixIcon: Image.asset("assets/images/atSymbol.png"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        // borderColor: Colors.blue[800],
                      ))),
              const SizedBox(height: 30),
              Text("Your Password"),
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
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordPage()),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Dashboard()),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      padding: const EdgeInsets.all(12.0),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1.50,
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
                      padding: const EdgeInsets.all(15.0),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        const SizedBox(width: 5),
                        new GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()),
                            );
                          },
                          child: new Text(
                            "Register",
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
            ]),
            ),
        ));
  }
}
