import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//We successfully remove the glow here

//:) Thanks For Watching

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
        title: Text(
          'Remove Over Scroll Indicator',
        ),
      ),
      //For Removing OverScroll Indicator
      //We Use NotificationListener Widget
      //Lets See

      //Check the Response Lets Comment the Code to see the effect of OverScroll
      //Lets revert the bellow commented code
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },

        ///Thats it we successfully Remove the Glow from over list view
        //lets Try another scrolling Widget

        //We are going to use SingleChildScrollView Widget in this example
        //You Can see the Glow
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.lightGreen,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
