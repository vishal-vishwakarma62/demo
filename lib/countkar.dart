import 'package:flutter/material.dart';
class countkar extends StatefulWidget {
  const countkar({super.key});

  @override
  State<countkar> createState() => _countkarState();
}

class _countkarState extends State<countkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Container'),
      ),

      body:
      Center(
        child: Container(
          height: 40,
          width: 80,
          // color: Colors.redAccent,
          child: Container(
            height: 20,
            width: 60,
           child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),)),
           //color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),


            ),

          ),
        ),
      ),
    );
  }
}
