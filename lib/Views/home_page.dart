import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/second_screen.dart';

class HomePage extends StatelessWidget {
  final TextEditingController namTextController = TextEditingController();
  final TextEditingController passTextController = TextEditingController();
  final TextEditingController conTextController = TextEditingController();
  final TextEditingController usrTextController = TextEditingController();
  String? text;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            CircleAvatar(),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: namTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter your name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter your username'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: conTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.password, size: 20, color: Colors.amber),
              ),
              obscureText: true,
              // for passwords
              obscuringCharacter: '*',
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: usrTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Enter your password'),
              obscureText: true,
              // for passwords
              obscuringCharacter: '*',
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondScreen(
                          name: namTextController.text,
                          username: passTextController.text,
                          password: conTextController.text,
                          confirmpassword: usrTextController.text,
                        )));
              },
              child: const Text('Login'),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.amber),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
          ],
        ));
  }
}
