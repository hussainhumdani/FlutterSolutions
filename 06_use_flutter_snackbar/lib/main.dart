import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Working with app Bar'),
      ),
      body: Builder(builder: (BuildContext context) {
        return Center(
          child: RaisedButton(
            child: Text('Click Me'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('This is the content'),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: () {
                      print('On Press Working');
                    },
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
