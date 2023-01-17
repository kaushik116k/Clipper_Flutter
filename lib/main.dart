import 'package:flutter/material.dart';
import 'GreenClipper.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: GreenClipper(),
                    child: Container(
                      color: Colors.lightGreenAccent.withOpacity(0.7),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(16.0),
                    child: Text("Welcome.. \nto bangalore",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        height: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 250, bottom: 16, right: 16),
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          color: Colors.green,
                          child: Center(
                            child: Text("Page 1", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Container(
                          color: Colors.yellow,
                          child: Center(
                            child: Text("Page 2", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Container(
                          color: Colors.lime,
                          child: Center(
                            child: Text("Page 3", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        )
    );
  }
}

