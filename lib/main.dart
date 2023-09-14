import 'package:flutter/material.dart';
import 'package:points_counter/constants/buttons.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int scoreA = 0;

  int scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 150,
                          width: 200,
                          child: Center(
                              child: Text('$scoreA',
                                  style: TextStyle(fontSize: 110)))),
                      TextButtons(
                          numberOfPoints: 'Add 1 Point',
                          onPressedButton: () {
                            setState(() {
                              scoreA += 1;
                            });
                          }),
                      TextButtons(
                          numberOfPoints: 'Add 2 Points',
                          onPressedButton: () {
                            setState(() {
                              scoreA += 2;
                            });
                          }),
                      TextButtons(
                          numberOfPoints: 'Add 3 Points',
                          onPressedButton: () {
                            setState(() {
                              scoreA += 3;
                            });
                          }),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    width: 10,
                    indent: 30,
                    endIndent: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 150,
                          width: 200,
                          child: Center(
                              child: Text('$scoreB',
                                  style: TextStyle(fontSize: 110)))),
                      TextButtons(
                          numberOfPoints: 'Add 1 Point',
                          onPressedButton: () {
                            setState(() {
                              scoreB += 1;
                            });
                          }),
                      TextButtons(
                          numberOfPoints: 'Add 2 Points',
                          onPressedButton: () {
                            setState(() {
                              scoreB += 2;
                            });
                          }),
                      TextButtons(
                          numberOfPoints: 'Add 3 Points',
                          onPressedButton: () {
                            setState(() {
                              scoreB += 3;
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    scoreA = 0;
                    scoreB = 0;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.yellow),
                    width: 150,
                    height: 50,
                    child: Center(
                        child: Text('Reset',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))))),
          ],
        ),
      ),
    );
  }
}
