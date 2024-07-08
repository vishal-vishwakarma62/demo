import 'package:demo/Demo2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  TextEditingController _Email=TextEditingController();
  TextEditingController _password=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('Email'),
            TextField(
              controller: _Email,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
            ),
            SizedBox(height: 50,),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
              ),
            ),
            SizedBox(height: 60,),
            GestureDetector(
              onTap: (){
                login();
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow
                ),
                child: Center(child: Text('submit'),),
              ),
            )
          ],
        ),
      ),
    );
  }
  Future<void> login() async {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Please all fill complete")));
    var response = await http.post(Uri.parse("https://reqres.in//login"),
        body: ({
          'email': _Email.text,
          'password': _password.text,
          // 'longitude': "82.365478",
          // 'device_token': 'Fcmtoken',
          // 'device_type': "android",
          // 'language': 'en'
        }));
    if (response.statusCode == 200) {
      var Data = response.body.toString();
      print("Correct");
      print(Data);
      print(response.statusCode.toString());
      //print(Data["id"].toString());
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Demo2()));
    } else {
      print("Wrong");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials")));
    }
  }
}
