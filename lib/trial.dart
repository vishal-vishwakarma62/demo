import 'package:flutter/material.dart';
class trial extends StatefulWidget {
  const trial({super.key});

  @override
  State<trial> createState() => _trialState();
}

class _trialState extends State<trial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
          // width: 100,
          // height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/j.png',height: 120,),
                    Text("a"),
                    // Spacer(flex: 1,),
                    // Text("B")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("a"),
                    Spacer(flex: 1,),
                    Text("B")
                  ],
                ),
              ),

            ],
          ),
          )
          ],
        ),
      ),
    );
  }
}
