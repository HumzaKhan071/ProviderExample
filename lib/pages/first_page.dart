import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Humza Khan"),
              SizedBox(
                height: 20,
              ),
              Text("Age : 20"),
              SizedBox(
                height: 20,
              ),
              Text("BSE")
            ],
          ),
        ));
  }
}
