import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cirgle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Meetups"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), title: Text('Meetups')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.computer), title: Text('Projects')),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.deepPurple,
            onTap: _onItemTapped,
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(50),
                    ),
                    Text("stuff"),
                    Padding(
                      padding: EdgeInsets.all(50),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
