import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String? name;
  String? username;
  String? password;
  String? confirmpassword;
  SecondScreen(
      {this.name, this.username, this.password, this.confirmpassword, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Center(child: Text(name!)),
          ),
          Container(
            child: Center(child: Text(username!)),
          ),
          Container(
            child: Center(child: Text(password!)),
          ),
          Container(
            child: Center(
                child: Text(
              confirmpassword!,
              style: TextStyle(color: Colors.blue),
            )),
          ),
        ],
      ),
    );
  }
}
