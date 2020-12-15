import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ตั้งค่าระบบ'),),
      body: Center(
        child: Text('เนื้อหาตั้งค่า'),
      ),
    );
  }
}