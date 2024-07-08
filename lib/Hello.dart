import 'package:demo/myList.dart';
import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
              height: 50,
              width: 100,
              color: Colors.blue,child: Center(child: Text('Container',style: TextStyle(color: Colors.yellow),))),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
    // the number of items in the list
    itemCount: 8,

    // display each item of the product list
    itemBuilder: (context, index) {
      return Column(
        children: [
          SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const myList()));
              },
              child: Card(
                // In many cases, the key isn't mandatory

                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 40,
                        child: Text('ravi'))),
              ),
            ),
          ),
        ],
      );
    }));
  }
}
