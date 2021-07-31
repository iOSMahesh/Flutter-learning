import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            "Flutter Learns",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "RobotoMono",
              color: Colors.white70,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Chirag Patel"),
                  accountEmail: Text("iosdev.chirag@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                  )),
              ListTile(leading: Icon(Icons.mail), title: Text("Account")),
            ],
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text("Text Widget"),
                onTap: () {
                  print("Text Widget");
                  Navigator.pushNamed(context, "/textWidget");
                },
              ),
              ListTile(
                title: Text('Image Widget'),
                onTap: () {
                  Navigator.pushNamed(context, "/imageWidget");
                },
              ),
              ListTile(
                title: Text('Button Widget'),
                onTap: () {
                  Navigator.pushNamed(context, "/buttonWidget");
                },
              ),
              ListTile(
                title: Text('Login Form'),
                onTap: () {
                  Navigator.pushNamed(context, "/loginForm");
                },
              )
            ],
          ),
        ));
  }
}
