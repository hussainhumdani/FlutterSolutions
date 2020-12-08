import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Field Drop Shadow',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
        centerTitle: true,
        title: Text('Text Field Dropshadow'),
      ),
      body: SafeArea(
        //Lets first create the Column in which we place text field
        //Thanks for watching
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //You can see that there is no shadow
              //Now Lets add shadows
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Lets use Material For Shadow'),
              ),
              //Lets add first TextField
              Material(
                //elevation will add drop shadow
                elevation: 18,
                //This is the shadow color
                shadowColor: Colors.purple,
                child: TextField(
                  //Letst add some docoration
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              //Lets see how we can use Container for shadow
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Using Conatainer For Shadow'),
              ),

              Container(
                //shadows are displaying perfectly but we have to
                //give some style to the text field
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                //add container Decoration
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    //Above the shadow color
                    //Now add some blur
                    blurRadius: 25,
                    //set the offset value
                    //dx represent x axis
                    //dy represent y axis
                    //we want to add shadow to the y axis 10
                    offset: const Offset(0, 10),
                    //Lets see the result
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
