import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File _image;
Future oc() async{
  var image=await ImagePicker.pickImage(source: ImageSource.camera);
  setState(() {
   _image=image; 
  });

}
Future og() async{
  var picture=await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
   _image=picture; 
  });

}

Future <void> od(){
  return showDialog(
    context: context,
    builder:(BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: StadiumBorder(),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                onTap: oc,
                child: Text('open camera'),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
               GestureDetector(
                onTap: og,
                child: Text('open camera'),
              ),
            ],
          ),
        ),
      );
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('cam'),
     ),
      body: Center(
        child: _image==null?Text('no image'):Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: od,
        child: Icon(Icons.camera),
      ),
    );
  }
}