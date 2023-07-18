import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class registration_form extends StatefulWidget {
  const registration_form({Key? key}) : super(key: key);

  @override
  State<registration_form> createState() => _registration_formState();
}

class _registration_formState extends State<registration_form> {
  var fkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController placecontroller = TextEditingController();
  TextEditingController postcontroller = TextEditingController();
  int clicked = 1;
  List<String> District = [
    "Alappuzha",
    " Ernakulam",
    " Kozhikode",
    'Palakkad',
    "Kollam",
    " Kannur",
    "Kasaragod",
    " Idukki",
    "Kottayam",
    "Thrissur",
    "Pathanamthitta",
    "Malappuram",
    "Wayanad",
    "Thiruvananthapuram"
  ];
  String? selectedDistrict;
  adding()async{
    FirebaseFirestore.instance.collection("registration").add(
        {"name": namecontroller.text,
        "email":emailcontroller.text,
        "number":numbercontroller.text,
        "post":postcontroller.text,
        "place":placecontroller.text});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Form")),
      body: Form(
          key: fkey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "NAME",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                  child: TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "EMAIL",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "NUMBER",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                  child: TextFormField(
                    controller: numbercontroller,
                    decoration: InputDecoration(
                        labelText: "Number",
                        hintText: "Number",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Male"),
                    ),
                    Radio(
                        value: 1,
                        groupValue: clicked,
                        onChanged: (v) {
                          setState(() {
                            clicked = v!;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Female"),
                    ),
                    Radio(
                        value: 2,
                        groupValue: clicked,
                        onChanged: (v) {
                          setState(() {
                            clicked = v!;
                          });
                        }),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "PLACE",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                  child: TextFormField(
                    controller: placecontroller,
                    decoration: InputDecoration(
                        labelText: "Place",
                        hintText: "Place",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "POST",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                  child: TextFormField(
                    controller: postcontroller,
                    decoration: InputDecoration(
                        labelText: "Post",
                        hintText: "Post",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 15,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("DISTRICT",style: TextStyle(fontSize: 15),),
                      DropdownButton(
                          hint: Text("please choose the district"),
                          value: selectedDistrict,
                          items: District.map((district)
                          {return DropdownMenuItem(child: new Text(district),value: district,);}).toList(),
                          onChanged: (newvalue) {
                            setState(() {
                              selectedDistrict = newvalue.toString();
                            });
                          }),
                    ],
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(
                //       top: 8.0, bottom: 8, left: 15, right: 15),
                //   child: Row(
                //     children: [
                //       Text(
                //         "DISTRICT",
                //         style: TextStyle(fontSize: 15),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 8, left: 15, right: 15),
                //   child: TextFormField(
                //     controller: namecontroller,
                //     decoration: InputDecoration(
                //         labelText: "District",
                //         hintText: "District",
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(5)))),
                //   ),
                // ),
                ElevatedButton(onPressed: () {}, child: Text("submit"))
              ]),
            ],
          )),
    );
  }
}
