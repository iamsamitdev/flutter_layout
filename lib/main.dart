import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), 
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.email), 
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.camera), 
            onPressed: (){}
          )
        ],
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}