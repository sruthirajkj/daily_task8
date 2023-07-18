import 'package:daily_task8/welcome_page.dart';
import 'package:flutter/material.dart';

class email extends StatefulWidget {
  const email({Key? key}) : super(key: key);

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
            ),
            child: Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 20, bottom: 10, right: 20),
            child: TextFormField(
              controller: emailcontroller,
              validator: (value) {
                if(value!.isEmpty){return "please enter email adress";}
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.mail),
                  hintText: "Email",
                  label: Text(
                    "Email",
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 20, bottom: 10, right: 20),
            child: TextFormField(
              controller: passwordcontroller,
              validator: (value) {
                if(value!.isEmpty){return "please enter";}
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                  label: Text(
                    "Password",
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: ElevatedButton(
                onPressed: () {
                  bool validate = formkey.currentState!.validate();
                  if (validate == false) {
                    return;
                  } else
                   if (emailcontroller.text== "admin@gmail.com"&& passwordcontroller.text=="123456")
                    {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return welcomepage();
                  }));}
                },
                child: Text("login")),
          )
        ]),
      ),
    );
  }
}
