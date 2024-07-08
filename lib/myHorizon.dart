import 'package:flutter/material.dart';
class myHorizon extends StatefulWidget {
  const myHorizon({super.key});

  @override
  State<myHorizon> createState() => _myHorizonState();
}

class _myHorizonState extends State<myHorizon> {

  @override
  Widget build(BuildContext context) {

    const title = 'Horizontal List';
    return Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      );

  }
}
  Widget build(BuildContext context) {
    return const Placeholder();
  }

