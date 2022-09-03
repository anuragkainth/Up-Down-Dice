import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.blue.shade700,
          titleTextStyle: TextStyle(
            fontFamily: 'MMD-Regular',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int left = 1, right = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 220.0,
          ),
          Row(
            children: const [
              Expanded(
                child: Text(
                  'A',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'MMD-Regular',
                    fontSize: 60.0,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'V',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'MMD-Regular',
                    fontSize: 60.0,
                    // fontStyle: FontStyle.italic,
                ),
               ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        left = Random().nextInt(6) + 1; // 1-6
                        if(left==1){
                          right = 6;
                        }
                        else if(left == 4){
                          right = 3;
                        }
                        else if(left == 2){
                          right = 5;
                        }
                        else if(left == 6){
                          right = 1;
                        }
                        else if(left == 3){
                          right = 4;
                        }
                        else if(left == 5){
                          right = 2;
                        }
                      });
                    },
                    child: Image.asset('images/dice$left.png')
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: ( ) {
                      setState(() {
                        right = Random().nextInt(6) + 1; // 1-6
                        if(right==1){
                          left = 6;
                        }
                        else if(right == 4){
                          left = 3;
                        }
                        else if(right == 2){
                          left = 5;
                        }
                        else if(right == 6){
                          left = 1;
                        }
                        else if(right == 3){
                          left = 4;
                        }
                        else if(right == 5){
                          left = 2;
                        }
                      });
                    },
                    child: Image.asset('images/dice$right.png')
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
