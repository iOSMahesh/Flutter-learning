import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Button Widget")),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    // elevation: 0,
                    // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
                    side: BorderSide(color: Colors.black, width: 2)),
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                }),
            OutlinedButton(
                onPressed: () {
                  print("Outline Clicked");
                },
                child: Text("Outline")),
          ]),
        ));
  }
}
