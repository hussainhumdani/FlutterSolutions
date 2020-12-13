import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Borders',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Borders'),
        centerTitle: true,
      ),
      //For making app Scrollable
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Add Some Vertical Space
              SizedBox(height: 20),
              //*Show Border Around Simple Text
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.purple,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Hussain Humdani',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 50),

              //* Show Border Around Icon or Image
              Container(
                height: 100,
                width: 100,
                child: Icon(
                  Icons.account_box,
                  color: Colors.amber,
                  size: 100,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.purple,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple,
                      width: 5.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),

              //* Show Border Around Input Text Field
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
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
