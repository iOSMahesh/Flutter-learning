
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<StatefulWidget> {
  String email = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Image.asset("images/Online-Coloring-1.png" ,fit: BoxFit.cover, height: 200),
            SizedBox(height: 30),
            TextFormField(
              initialValue: "iosdev@gmail.com",
              onChanged: (value) {
                email = value;
                setState(() {
                  print("setState");
                });
              },
              decoration:
                  InputDecoration(labelText: "Email", hintText: "Enter Email"),
            ),
            TextFormField(
              onChanged: (value) {
                pass = value;
                setState(() {
                  print("setState");
                });
              },
              decoration: InputDecoration(
                  labelText: "Password", hintText: "Enter password"),
              obscureText: true,
            ),
            SizedBox(height: 50,),
            OutlinedButton(
                onPressed: () {
                  print("Outline Clicked");
                },
                child: Text("Login"),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(200, 40)
                )
            ),
                
          ],
        ),
      ) ,
    );
  }
}
