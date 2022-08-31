import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String enterdData = '';
  String recived = 'no data recived yet';
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final database = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              onChanged: (txt) {
                setState(() {
                  enterdData = txt;
                });
              },
            ),
            TextButton(
              child: Text(
                'send',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
              style: ButtonStyle(),
              onPressed: () {},
            ),
            Text(
              recived,
              style: TextStyle(fontSize: 18),
            ),
            TextButton(
              child: Text(
                'recive',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
              style: ButtonStyle(),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
