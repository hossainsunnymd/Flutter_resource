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
      drawer: Drawer(),
      // bottomNavigationBar: BottomNavigationBar(),
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
