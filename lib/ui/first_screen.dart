import 'dart:io';

import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State {
  List<String> _passengers = <String>["", "1", "2", "3", "4", "5"];
  String _passenger = "1";
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () {
          getImage();
        },
      ),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Form(
        child: ListView(
          children: <Widget>[
            _image == null ? Text("No images selected") : Image.file(_image),
            InputDecorator(
              decoration: InputDecoration(
                  icon: Icon(Icons.people), labelText: "Passenger"),
              isEmpty: _passenger == "",
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _passenger,
                  isDense: true,
                  onChanged: (value) {},
                  items: _passengers.map((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
              ),
            ),
            DateTimePickerFormField(
              inputType: InputType.date,
              format: DateFormat("yyyy-MM-dd"),
              decoration: InputDecoration(labelText: "Date"),
            ),
          ],
        ),
      ),
    );
  }
}
