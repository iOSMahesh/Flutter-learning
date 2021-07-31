import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text Widget")),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello, How are you?",
                style: TextStyle(
                    backgroundColor: Colors.grey, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "I'm good, What about you? All good",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoMono",
                  fontStyle: FontStyle.italic
                    ),
                    textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Nice to hear you. I am learning flutter app. I am exited with its widget catalogs",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient
                  ),
                  textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ));
  }
}

final Shader linearGradient = LinearGradient(
  colors: [Colors.red, Colors.pink],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
