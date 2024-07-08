import 'package:demo/Demo2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as  http;
class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)
                    ),
                    hintText: "Enter the email"
                  ),
                ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(  
                  contentPadding: EdgeInsets.all(7),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)
                  ),
                  hintText: "Enter the passward"
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                login();
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black
                ),
                child: Center(child: Text("SingUp",style: TextStyle(color: Colors.white),),),
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
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: ({
            'email': _email.text,
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
        print("Wronggooooooooooooooooooooooooooo");
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid credentials")));
      }
    }
}
