import 'package:flutter/material.dart';
//we will first import service
import 'package:flutter/services.dart';

void main() {
  //Now we use SystemChrome
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //Lets make the Status Bar Transparent
    statusBarColor: Colors.transparent,

    //Lets make the status bar icon brightness to bright
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Status Bar Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Lets Add the app Bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //So you can see app bar color removed
        //Lets try to remove this grey color
        bottomOpacity: 0,
        elevation: 0,
        //So by giving elevation zero will truely make
        //every thing transparent

        title: Text(
          'Color is Changed Thanks',
          style: TextStyle(color: Colors.black),
        ),
      ),
      //As you can see what color we give to the app
      //bar will display above
      //Status Bar System Ui Overlay is removed.

      body: Center(
        child: Text(
          'Check the above Status Bar',
          style: TextStyle(fontSize: 29),
        ),
      ),
    );
  }
}
