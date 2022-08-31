import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'connect',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final database = FirebaseDatabase.instance.reference();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  String recivedData = 'Nothing tell now';
  String dataToBeSent = 'NULL';
  Widget build(BuildContext context) {
    final massage = database.child('massage');
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('recived data : ' + recivedData),
            TextField(
              decoration: InputDecoration(
                labelText: 'send the following',
              ),
              onChanged: (data) {
                setState(() {
                  dataToBeSent = data;
                });
              },
            ),
            TextButton(
              child: Text('send data'),
              onPressed: () async {
                massage.set(dataToBeSent);
              },
            ),
          ],
        ),
      ),
    );
  }
}
