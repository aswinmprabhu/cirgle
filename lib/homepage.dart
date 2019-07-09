import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget cardBuilder(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.fromLTRB(9.0, 7.0, 9.0, 7.0),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/google.jpg"),
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text("Developer News"),
            subtitle: Text("Google,Silicon Valley"),
            trailing: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                highlightColor: Colors.red),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Account")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Favourite")),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.black45,
                  padding: EdgeInsets.fromLTRB(0.0,15.0,0.0,5.0),
                  child:  Center(
                    child: Text(
                      "Cirgle Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: cardBuilder,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
