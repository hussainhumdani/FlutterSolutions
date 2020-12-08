import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Show Dialog',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
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
        title: Text('Show Alert Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Lets add Dialog widget and show it with
            //the help of show dialog function
            RaisedButton(
              color: Colors.amber,
              child: Text('Dialog'),
              onPressed: () {
                //Using showDialog function
                showDialog(
                    context: context,
                    //There is more settings in the show dialog method
                    //lets see
                    //what is barier
                    //the black overlay that cover the
                    //screen when we show the dialg
                    //the region color will be changed
                    //throw the barrierColor property
                    barrierColor: Colors.yellow.withOpacity(0.2),
                    //Lets
                    //See the result(  )
                    //Yellow color around the green Card

                    //Thats it guys hope this video will help you
                    //But
                    //Here is the problem
                    //Child is deprecated
                    //We use builder instead
                    //Lets use it

                    //This builder is the new method
                    //to show the dialog
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                          width: 100,
                          height: 200,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              'Dialog',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),

            //Working properly
            //Now we use the other widget that help us to sho Dialog
            RaisedButton(
              color: Colors.amber,
              child: Text('Simple Dialog Widget'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text('Title'),
                        //There is padding issue in the
                        //children
                        children: [
                          Text('this is the Child'),
                          Text('this is the Child'),
                        ],
                        //We use content padding
                        contentPadding: EdgeInsets.all(20),
                      );
                    });
              },
            ),

            //Cool
            // Now use the AlertDialog Widget
            RaisedButton(
              color: Colors.amber,
              child: Text('Alert Dialog Widget'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      //change simple dialog to alert dialog
                      return AlertDialog(
                        //this is the alert title
                        title: Text('Title'),
                        content: Text('this is the content'),

                        //Lets add the button
                        //Which will close the alert Dialog

                        actions: [
                          //Place any widget here
                          RaisedButton(
                            child: Text('Close'),
                            //callBack that trigger on
                            //every button tap
                            //this red underline is for
                            //I just forget the comma
                            onPressed: () {
                              //Now pop the Route from
                              //the navigation stack
                              Navigator.pop(context);
                            },
                          ),
                        ],

                        //now we can see the change
                        //the Alert Dialog widget
                        //already have pretty padding
                        // contentPadding: EdgeInsets.all(100),
                      );
                    });
              },
            ),

            //Lets try to see If we don't use
            //Any of these Dialog widget
            RaisedButton(
              color: Colors.amber,
              child: Text('show just container'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      //Now I am just try to render the Text First
                      //Wraping with center
                      //for removing I try to click
                      //on the screen it does not pop() automatically
                      //goin back using back button
                      //Wrapping with material will cover the all
                      //screen
                      // Did not see any changes
                      return Container(
                          width: 100,
                          height: 100,
                          child: Material(child: Center(child: Text('Hello'))));
                      //you can see the
                      //red hello
                      //Lets do some experimentation
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
