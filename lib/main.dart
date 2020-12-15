import 'package:flutter/material.dart';
import 'package:flutter_layout/screens/bottomnav/account_screen.dart';
import 'package:flutter_layout/screens/bottomnav/home_screen.dart';
import 'package:flutter_layout/screens/bottomnav/news_screen.dart';
import 'package:flutter_layout/screens/bottomnav/notification_screen.dart';
import 'package:flutter_layout/screens/bottomnav/report_screen.dart';
import 'package:flutter_layout/screens/drawermenu/cancel_account_screen.dart';
import 'package:flutter_layout/screens/drawermenu/setting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
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

  // สร้างตัวแปรแบบ list เก็บรายการหน้าของ tab bottom
  int _currentIndex = 0;
  String _title = 'หน้าหลัก';

  List<Widget> _children = [
    HomeScreen(),
    NewsScreen(),
    NotificationScreen(),
    ReportScreen(),
    AccountScreen()
  ];

  // เขียนเงื่อนไขเพื่อสลับเปลี่ยน Tab
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          _title = 'หน้าหลัก';
          break;
        case 1:
          _title = 'ข่าวสาร';
          break;
        case 2:
          _title = 'แจ้งเตือน';
          break;
        case 3:
          _title = 'รายงาน';
          break;
        case 4:
          _title = 'บัญชี';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_title'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.email), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera), onPressed: () {})
        ],
      ),
      body: _children[_currentIndex],
      drawer: SafeArea(
          child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              accountName: Text('Samit Koyom'),
              accountEmail: Text('samit@gmail.com'),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  image: DecorationImage(
                      image: AssetImage('assets/images/greenbg3.jpg'),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('ตั้งค่าระบบ'),
              onTap: () {
                // การเปลี่ยนไปหน้า Setting
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => SettingScreen()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('ยกเลิกบัญชี'),
              onTap: () {
                // การเปลี่ยนไปหน้า CancelAccount
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => CancelAccountScreen()
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('ออกจากระบบ'),
              onTap: () {},
            ),
          ],
        ),
      )
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.teal,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            title: Text('หน้าหลัก', style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases, color: Colors.white,),
            title: Text('ข่าวสาร',style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.white,),
            title: Text('แจ้งเตือน',style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart, color: Colors.white,),
            title: Text('รายงาน',style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.white,),
            title: Text('บัญชี',style: TextStyle(color: Colors.white))
          ),
        ]
      ),

    );
  }
}
