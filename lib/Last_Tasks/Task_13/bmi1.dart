import 'dart:math';

import 'package:flutercoursetwo/Last_Tasks/Task_13/bmi2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi1());
}

class Bmi1 extends StatefulWidget {
  const Bmi1({super.key});

  @override
  Bmi1State createState() => Bmi1State();
}

class Bmi1State extends State<Bmi1> {
  double height = 171;
  int age = 21;
  int weight = 65;
  bool isMale = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Expanded(
                  // for padding in first row
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            //  بتفصلي زرار GestureDetector
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20),
                                  color:
                                      isMale ? Colors.purple : Colors.black54,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.male_rounded,
                                        size: 60, color: Colors.white),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: isMale
                                              ? Colors.white
                                              : Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20),
                                  color:
                                      isMale ? Colors.black54 : Colors.purple,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.female_rounded,
                                        size: 60, color: Colors.white),
                                    Text("Female",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.black54),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220,
                          min: 50,
                          activeColor: Colors.white,
                          thumbColor: Colors.purple,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ],
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Colors.black54),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 168, 167, 167)),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  shape: const CircleBorder(),

                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  // دا مجرد tage للتمييز
                                  heroTag: "weight++",
                                  mini: true, child: const Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  shape: const CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  // دا مجرد tage للتمييز
                                  heroTag: "weight--",
                                  mini: true, child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Colors.black54),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 168, 167, 167)),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  shape: const CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: "age++",
                                  mini: true,
                                  child: const Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  shape: const CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: "age--",
                                  mini: true,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              Builder(
                  builder: (cxt) => SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        //onPressed: () => Navigator.pushNamed(context, "/"),
                        onPressed: () {
                          double result = weight /
                              pow(height / 100, 2); // ال 2 دي  يعني برفع اس 2
                          Navigator.push(
                            cxt,
                            MaterialPageRoute(
                              builder: (cxt) => bmi2(
                                age: age,
                                isMale: isMale,
                                result: result,
                              ),
                            ),
                          );
                        },
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(12),
                                topEnd: Radius.circular(12))),
                        color: Colors.purple,
                        child: const Text(
                          'Calcolate Your BMI',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
