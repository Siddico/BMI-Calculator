import 'dart:math';
import 'package:bmicalc/result.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool ismale = true;
double hieght = 120;

int age = 14;
int wieght = 60;

class _HomePageState extends State<HomePage> {
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 70, 110),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ismale
                              ? Color.fromARGB(255, 20, 70, 110)
                              : Color.fromARGB(255, 0, 167, 150),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: ismale ? Colors.white : Colors.black,
                              size: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: ismale ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 200,
                    child: VerticalDivider(
                      color: Colors.black,
                      width: 3,
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !ismale
                              ? Color.fromARGB(255, 20, 70, 110)
                              : Color.fromARGB(255, 0, 167, 150),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: !ismale ? Colors.white : Colors.black,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: !ismale ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Divider(),
          ),*/
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 167, 150),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${hieght.round().toStringAsExponential(2)}',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                      activeColor: const Color.fromARGB(255, 20, 70, 110),
                      value: hieght,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          hieght = value;
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 167, 150),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${age}',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color.fromARGB(255, 20, 70, 110),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                              heroTag: 'age-',
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              backgroundColor: Color.fromARGB(255, 20, 70, 110),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                              heroTag: 'age+',
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: 200,
                  child: VerticalDivider(
                    color: Colors.black,
                    width: 3,
                  )),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 167, 150),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${wieght}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color.fromARGB(255, 20, 70, 110),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  wieght--;
                                });
                              },
                              mini: true,
                              heroTag: 'weight-',
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              backgroundColor: Color.fromARGB(255, 20, 70, 110),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  wieght++;
                                });
                              },
                              mini: true,
                              heroTag: 'wieght+',
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 20, 70, 110),
            child: MaterialButton(
              height: 50,
              onPressed: () {
                String result =
                    (wieght / pow(hieght / 100, 2)).toStringAsExponential(2);
                //print(result.toDouble());
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BMIResult(
                    result: result,
                    age: age,
                    wieght: wieght,
                    ismale: ismale,
                    height: hieght,
                  );
                }));
              },
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
