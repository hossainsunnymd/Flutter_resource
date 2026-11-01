import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false,primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Drawer Header', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                mySnackBar('Home tapped', context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                mySnackBar('Messages tapped', context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                mySnackBar('Settings tapped', context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.message),label: 'Contact'),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile'),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {mySnackBar('add', context);},
      ),
      appBar: AppBar(
        title: Text('Inventory', style: TextStyle(color: Colors.white)),
        titleSpacing: 0,
        backgroundColor: Colors.green,
        centerTitle: false,
        toolbarHeight: 60,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar('Comment', context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              mySnackBar('search', context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar('settings', context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar('email', context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      body: Text('Hello flutter'),
    );
  }
}
