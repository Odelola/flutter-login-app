import 'package:flutter/material.dart';
import 'register_verify.dart';
import '../login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              const SizedBox(height: 10),
        
              Row(
                children: [
                  Text("Create an"),
                  Text(" account ", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[800])
                    ),
                  Text("to access all the "),
                ]
              ),
              Row(
                children: [
                  Text("features of "),
                  Text("Maxpense!", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    )
                    ),
                ]
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
              const SizedBox(height: 20),
              Text("Your Name"),
              const SizedBox(height: 5),
              TextFormField(
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Ex. Saul Ramirez",
                      prefixIcon: Image.asset("assets/images/user.png"),
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        // borderColor: Colors.blue[800],
                      ))),
              const SizedBox(height: 20),
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
              const SizedBox(height: 30),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterVerifyPage()),
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
