import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("WELCOME",style: TextStyle(fontSize: 50),)),);
  }
}
