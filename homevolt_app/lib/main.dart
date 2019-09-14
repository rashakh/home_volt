import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: new Stack(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage('assets/Dashboard.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 397.0, left: 55.0),
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Secondpage()),
                    );
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 80.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  var _string = 'Choose node';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: new Stack(
            children: <Widget>[
              new Image(
                image: new AssetImage('assets/Home.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 285.0, left: 155.0),
                child: new GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter devise Name',
                                        hintStyle: new TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black87),
                                        fillColor:
                                            Colors.white54.withOpacity(0.5),
                                        filled: true,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      validator: (value) => value.isEmpty
                                          ? 'Please enter a name '
                                          : null,
                                      onSaved: (value) {},
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: DropdownButton(
                                      hint: Text(_string),
                                      iconEnabledColor: Colors.deepOrange[300],
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Node_1',
                                          child: Text(
                                            'Node_1',
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Node_2',
                                          child: Text(
                                            'Node_2',
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Node_3',
                                          child: Text(
                                            'Node_3',
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Node_4',
                                          child: Text(
                                            'Node_4',
                                          ),
                                        ),
                                      ],
                                      onChanged: (e) {
                                        _string = e;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      child: Text("Add"),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 80.0, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 570.0, left: 110.0),
                child: new GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 70.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
