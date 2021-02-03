//Make sure to run the app on ur phone or the eumulator at first!

/*
  Hello DSC people! Hope y'all are doin' good. So as promised this is a guided project, a rather simple one as asked.
  In this proj we will practice some frontend end as well as my persoanl favourite part, the backend!

  The point will be to make a splash screen, and another screen with both increment and decrement buttons and a counter

  Let's start by discovering what we have here!
*/

//---------------------------STEPS TO FOLLOW---------------------------//
/*
  1. Run the app on your phone or on the emulator
  2. Read the lines ranging between 40--44, do what was asked there!
  3. Go to line 78, add your name between the simple qutations
  4. Read and execute lines 86-->90
  5. Make sure to read all the comments and write down any questions you have!
  6. Head over to lib/appin.dart
*/
//---------------------------STEPS TO FOLLOW---------------------------//

//This is the import line! In here we import the different classes that contain the methods we will use!
//For this project we will only have material.dart, which is a basic Flutter class tha contains different widgets allowing us
//to create a material app.
//MaterialApp = AppBar + Body + BottomAppBar

import 'dart:async';

import 'package:app1/appin.dart';
import 'package:flutter/material.dart';

//as with any programming language we always have a main function. also know as "Leftila",
//it launches the execution of our code!
void main() {
  //The run app function calls the widget that will first be shown
  runApp(
    //So this is will be our main widget, nvm it, we will understand it later
    //If you're curious CTRL+the widget to explore its source
    //PS: The best programmers are the most curious ones!
    MaterialApp(
      //I think that by here you have the app running on either your phone or the emulator!
      //In the top right corner, you might have noticed a banner saying "debug"
      //------------------------------------------------------------------------//
      //Uncomment the next line and set its value to false, what do you notice?
      //debugShowCheckedModeBanner: [value],
      //------------------------------------------------------------------------//
      color: Colors.black,
      //The home position means what the MaterialApp will show! in our case the MyApp widget is shown!
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //This is initstate, remember we talked about stateful widgets? the inistate is used to run a
  //certain function upon the launch of the app
  @override
  void initState() {
    super.initState();
    //This is a Timer, in our case we use to execute a function after a certain time
    //But 5 sec is rather long, change it to 1, feels more natural right?
    Timer(Duration(seconds: 5), () {
      //This is a Navigator, it is a flutter class used to take the user from a view to another!
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AppIn(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          //Put your name between the next simple quotations
          '',
          style: TextStyle(
            //The textstyle is a widget allowing us to personalize the text
            //As you notice the text color is black, set it to white!
            color: Colors.black,
            //Try playing with the fontsize!
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
