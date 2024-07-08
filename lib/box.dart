import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class box extends StatefulWidget {
  const box({super.key});

  @override
  State<box> createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Hello'),
      ),
    );

  }
}
