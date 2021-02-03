import 'package:flutter/material.dart';

class AppIn extends StatefulWidget {
  AppIn({Key key}) : super(key: key);

  @override
  _AppInState createState() => _AppInState();
}

class _AppInState extends State<AppIn> {
  //This variable is the counter
  //Keep in mind that i >= 0
  int i = 0;
  void increment() {
    setState(() {
      i++;
    });
  }

  void decrement() {
    if (i > 0) {
      setState(() {
        //Make i decrement, did you make it? Hint: use basic arithmetic operations!
      });
    }
  }

  //In either of these function there are two things to notice
  /*
    1. There is no return!
      The reason behind this is beacaus the function is a void and there is no need to return a value
      as this function updates the state
    state = what's shown on the screen
    2. What is setState?
      this method is used to update the state of the app
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Increment or decrement!',
        ),
        //Make the title centered by uncommentig the next line and setting the value to true
        //centerTitle: ,
        //Also play a little bit with the elevation, the lower the value is the flatter it is! 0>=elevation
        //elevation: ,
      ),
      body: Center(
        child: Text(
          i.toString(),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('Pressed the -1 button');
                  //Call the decrement function by uncommenting the next line
                  //decrement();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.exposure_minus_1,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Pressed the +1 button');
                  //Cell the increment function here!
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.plus_one,
                    color: Colors.white,
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

//By now you should be done! I hope you executed all the steps
//If you have any problem call me anytime, I'm Aaron Haddad on all social networks!
//And try to be curious and explorer the source of the different classes!
