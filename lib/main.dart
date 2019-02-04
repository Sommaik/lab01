import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
                text: "Camera",
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.account_box),
                text: "Box",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.add_alarm),
            Icon(Icons.account_box),
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World test ...."),
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text("$counter"),
//             Text("value 2"),
//             Text("value 3"),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//           print("counter value $counter");
//         },
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World test ...."),
//       ),
//       body: Text("$counter"),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: () {
//           counter++;
//           print("counter value $counter");
//         },
//       ),
//     );
//   }
// }
