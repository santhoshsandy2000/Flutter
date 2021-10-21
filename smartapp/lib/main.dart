import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onPressed;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.indigo,
          tooltip: "home menu",
          onPressed: () {},
          child: const Icon(Icons.home),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.search),
            Icon(Icons.more),
          ],
          flexibleSpace: Center(child: Icon(Icons.camera)),
          title: Text('App bar'),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.blueAccent,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'MENU',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('HOME'),
                ),
                ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text('HELP&FEEDBACK'),
                ),
                ListTile(
                  leading: Icon(Icons.library_add),
                  title: Text('LIBRARY'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('SETTING'),
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          Container(
            width: 500,
            child: Text('footer button'),
          )
        ],
      ),
    );
  }
}
