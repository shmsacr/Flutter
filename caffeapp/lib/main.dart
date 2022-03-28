import 'package:flutter/material.dart';


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.brown,
                  backgroundImage: AssetImage('images/caffe.png'),
                ),
                const Text(
                  "Flutter Caffe",
                  style: TextStyle(
                      fontSize: 45, color: Colors.black),
                ),
                const Text(
                  "Caffe Can",
                  style: TextStyle(fontSize: 15, color: Colors.lime),
                ),
                Container(
                  width: 300,
                  child: Divider(
                    height: 30,
                    color: Colors.brown[900],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  //padding: EdgeInsets.all(10.0),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.cyan,
                    ),
                    title: Text(
                      "shmsacr@gmail.com",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  //padding: EdgeInsets.all(10.0),
                  color: Colors.brown[900],
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                    ),
                    title: Text(
                      "+90555 555 55 55",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
