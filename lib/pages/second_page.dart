import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Abdullah Khan"),
              SizedBox(
                height: 20,
              ),
              Text("Age : 19"),
              SizedBox(
                height: 20,
              ),
              Text("BSE")
            ],
          ),
        ));
  }
}
