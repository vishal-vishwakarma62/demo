import 'package:flutter/material.dart';
class mylistviewbuilder extends StatefulWidget {
  const mylistviewbuilder({super.key});

  @override
  State<mylistviewbuilder> createState() => _mylistviewbuilderState();
}

class _mylistviewbuilderState extends State<mylistviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewBuilder',style: TextStyle(fontSize: 20,color: Colors.blue),),
      ),
      body: SizedBox(
          child: Container(
            height: 220,
            width: 400,
            color: Colors.red,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  Column(
                    children: [
                      SizedBox(
                        height: 220,
                        width: 200,
                        child:  Card(
                          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          child: Padding(
                            padding:  const EdgeInsets.all(10),
                            child: SizedBox(
                              height: 50,
                                child: Column(
                                children: [
                                  Image.asset('assets/j.png'),
                                  Text('Name: Vishal'),
                                  Text('Price:70L'),
                                  Text('Categry:Vehicle'),
                                  Icon(Icons.phone),

                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );

                },),
            ),
          ),
        ),
      );

  }
}
