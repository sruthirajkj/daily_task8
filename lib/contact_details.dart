import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class contact_details extends StatefulWidget {
  const contact_details({Key? key}) : super(key: key);

  @override
  State<contact_details> createState() => _contact_detailsState();
}

class _contact_detailsState extends State<contact_details> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20),
            child: InkWell(
              onTap: () async{
                ImagePicker imagepick=ImagePicker();
                XFile?imagepicked=await imagepick.pickImage(source: ImageSource.camera);
                if(imagepicked!=null){
                  var img=File(imagepicked.path);
                }


              },
              child: Container(
                width: 180,
                height: 180,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 8),
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
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
            child: TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 8),
            child: Row(
              children: [
                Text(
                  "MOBILE NUMBER",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
            child: TextFormField(
              controller: numbercontroller,
              decoration: InputDecoration(
                  labelText: "Mobile",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("submit")),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,),
            child: ListTile(
              title: Text("name"),shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5 ))),
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue)),
            ),
          )
        ]),
      ),
    );
  }
}
