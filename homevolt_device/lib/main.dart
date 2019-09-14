import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Volt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color color = Colors.lightGreenAccent[400];
  Widget wed = new Container(
    padding: const EdgeInsets.only(top: 250.0, left: 320),
    child: Row(
      children: <Widget>[
        new Text(
          '0.0% ',
          style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
        ),
        new SizedBox(width: 90.0),
        new Text(
          '650 V',
          style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
        ),
      ],
    ),
  );

  Widget _incrementCounter() {
    setState(() {
      print(_counter);
      if (_counter == 0) {
        color = Colors.lightGreenAccent[400];
        _counter++;
        wed = new Container(
          padding: const EdgeInsets.only(top: 250.0, left: 320),
          child: Row(
            children: <Widget>[
              new Text(
                '0.0% ',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
              new SizedBox(width: 90.0),
              new Text(
                '650 V',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        );
      } else if (_counter == 1) {
        color = Colors.yellowAccent;
        _counter++;
        wed = new Container(
          padding: const EdgeInsets.only(top: 250.0, left: 310),
          child: Row(
            children: <Widget>[
              new Text(
                '10.0% ',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
              new Image(
                width: 35.0,
                height: 35.0,
                color: Colors.red,
                image: new AssetImage('assets/24215.png'),
              ),
              new SizedBox(width: 40.0),
              new Text(
                '650 V',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        );
      } else if (_counter == 2) {
        color = Colors.red;
        _counter = 0;
        wed = new Container(
          padding: const EdgeInsets.only(top: 250.0, left: 310),
          child: Row(
            children: <Widget>[
              new Text(
                '20.0% ',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
              new Image(
                width: 35.0,
                height: 35.0,
                color: Colors.red,
                image: new AssetImage('assets/24215.png'),
              ),
              new SizedBox(width: 40.0),
              new Text(
                '650 V',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                    child: new Container(
                      width: 750.0,
                      height: 750.0,
                      decoration: new BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  new Image(
                    image: new AssetImage('assets/dpic.png'),
                  ),
                  new Container(
                    child: Column(
                      children: <Widget>[
                        wed,
                        Container(
                          padding: const EdgeInsets.only(top: 100.0, left: 250),
                          child: new Image(
                            width: 80.0,
                            height: 80.0,
                            color: Colors.green,
                            image: new AssetImage('assets/23214.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
      ),
    );
  }
}
