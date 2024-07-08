import 'package:flutter/material.dart';
class driven extends StatefulWidget {
  const driven({super.key});

  @override
  State<driven> createState() => _drivenState();
}

class _drivenState extends State<driven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       endDrawer: Drawer(
      backgroundColor: Colors.yellow,
      child: DrawerHeader(
        margin: EdgeInsets.only(bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Jane doe',style: TextStyle(fontSize: 25),),
          SizedBox(height: 40,),
          Text('Post',style: TextStyle(fontSize: 16),),
          SizedBox(height: 40,),
          Text('Archieve',style: TextStyle(fontSize: 16),),
          SizedBox(height: 40,),
          Text('Your activity',style: TextStyle(fontSize: 16),),
          SizedBox(height: 40,),
          Text('QR code',style: TextStyle(fontSize: 16),),
          SizedBox(height: 40,),
          Text('Saved',style: TextStyle(fontSize: 16),),
          SizedBox(height: 40,),
          Text('Discover People',style: TextStyle(fontSize: 16),),
        ],
        ),
        curve: Curves.bounceIn,
      ),
    ),
    );
  }
}
