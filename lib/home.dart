import 'package:flutter/material.dart';
import 'dart:math';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottery App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Lottery winning number is 4')),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 35,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Congratulations you have won the lottery, your number is $x\n ',
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Better luck next time your number is $x \n try again',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(6);
          print(x);
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
