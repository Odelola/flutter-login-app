import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ImageIcon(
                AssetImage("assets/images/chevronLeft.png"),
              ),
            ),
            const SizedBox(height: 150),
            Center(
              child: Align(
                alignment: Alignment.center,
                
                child: Text("DASHBOARD",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
              ),
            ),
      
            ],
          ),
        ),
      ),
      );
  }
}
