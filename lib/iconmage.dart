import 'package:flutter/material.dart';
class iconmage extends StatefulWidget {
  const iconmage({super.key});

  @override
  State<iconmage> createState() => _iconmageState();
}

class _iconmageState extends State<iconmage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar: AppBar(
        title: Text('image'),
      ),
      body:  Stack(
        children: <Widget>[

        Image.asset('assets/j.png'),
      Padding(
        padding: const EdgeInsets.only(left: 400),
        child: Icon(Icons.favorite_border),
      )
          
        ],
      )
    );
  }
}
