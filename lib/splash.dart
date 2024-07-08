import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "B",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "C",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "D",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "E",
                style: TextStyle(fontSize: 20),
              ),
              Image.asset(
                'assets/j.png',
                height: 200,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name', suffixIcon: Icon(Icons.remove_red_eye),


                ),
                keyboardType: TextInputType.number,
              )
            ],
          ),
        ),
      ),
    );
  }
}
