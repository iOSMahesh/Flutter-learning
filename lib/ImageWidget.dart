import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Image Widget")),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset("images/Online-Coloring-1.png", height: 400,fit: BoxFit.contain),
            Image.network("https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
            SizedBox(height: 30),
            Icon(
              Icons.access_alarm,
              color: Colors.red[900],
            )
          ],)
        ));
  }
}
