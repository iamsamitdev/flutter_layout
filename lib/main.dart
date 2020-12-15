import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.email), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Welcome'),
      ),
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
              leading: Icon(Icons.home),
              title: Text('หน้าหลัก'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text('ข่าวสาร'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('บัญชีผู้ใช้'),
              onTap: () {},
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
        backgroundColor: Colors.teal,
        currentIndex: 0,
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
