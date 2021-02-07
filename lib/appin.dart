import 'package:flutter/material.dart';

class AppIn extends StatefulWidget {
  AppIn({Key key}) : super(key: key);

  @override
  _AppInState createState() => _AppInState();
}

class _AppInState extends State<AppIn> {
  int i = 0;
  void increment() {
    setState(() {
      i++;
    });
  }

  void decrement() {
    if (i > 0) {
      setState(() {
        i--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Increment or decrement! MAH',
        ),
        centerTitle: true,
        elevation: 30,
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
                  decrement();
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
                  increment();
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
