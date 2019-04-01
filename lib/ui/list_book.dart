import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: Firestore.instance.collection('books').snapshots(),
      builder: (context, snapshort) {
        if (snapshort.hasData) {
          print(snapshort.data);
          return buildList(snapshort.data);
        } else {
          return CircularProgressIndicator();
        }
      },
    ));
  }

  Widget buildList(List data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: data.elementAt(index)['title'],
            subtitle: data.elementAt(index)['author']);
      },
    );
  }
}
