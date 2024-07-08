// import 'package:demo/signup.dart';
// import 'package:demo/signup.dart';
import 'package:demo/Checklist.dart';
import 'package:demo/Demo2.dart';
import 'package:demo/Hello.dart';
import 'package:demo/Login1.dart';
import 'package:demo/box.dart';
import 'package:demo/countkar.dart';
import 'package:demo/first.dart';
import 'package:demo/iconmage.dart';
import 'package:demo/myHome.dart';
// import 'package:demo/building.dart';
import 'package:demo/myList.dart';
import 'package:demo/mylistviewbuilder.dart';
import 'package:demo/place_order1.dart';
import 'package:demo/transfer.dart';
import 'package:demo/trial.dart';
// import 'package:demo/First.dart';
// import 'package:demo/LoginDemo.dart';
// import 'package:demo/splash.dart';
import 'package:flutter/material.dart';
// import 'package:demo/SignUp.dart';
void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  get home => null;



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //

          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  first()

    );
  }

}


