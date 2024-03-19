import 'dart:math';

import 'package:flutercoursetwo/bmi2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutercoursetwo/ChangeNotifierProvider.dart';

class MyApp extends StatelessWidget {
  const MyApp({required Key key}) : super(key: key);

  void main() {
    runApp(
      ChangeNotifierProvider(
        create: (context) => MyAppProvider(),
        child: MyApp(key: UniqueKey()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final MyAppProvider myModel = Provider.of<MyAppProvider>(context);

    return SafeArea(
      child: Scaffold(
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  myModel.updateIsMale(true);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: myModel.isMale
                                        ? Colors.purple
                                        : Colors.black54,
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
                                          color: myModel.isMale
                                              ? Colors.white
                                              : Colors.white,
                                        ),
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
                                  myModel.updateIsFemale(true);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: myModel.isMale
                                        ? Colors.black54
                                        : Colors.purple,
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.female_rounded,
                                          size: 60, color: Colors.white),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${myModel.height.round()}",
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: myModel.height,
                          max: 220,
                          min: 50,
                          activeColor: Colors.white,
                          thumbColor: Colors.purple,
                          onChanged: (value) {
                            myModel.updateHeight(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Weight',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 168, 167, 167),
                                ),
                              ),
                              Text(
                                '${myModel.weight}',
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      myModel.updateWeight(myModel.weight + 1);
                                    },
                                    heroTag: "weight++",
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      myModel.updateWeight(myModel.weight - 1);
                                    },
                                    heroTag: "weight--",
                                    mini: true,
                                    child: const Icon(Icons.remove),
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
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Age',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 168, 167, 167),
                                ),
                              ),
                              Text(
                                '${myModel.age}',
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      myModel.updateAge(myModel.age + 1);
                                    },
                                    heroTag: "age++",
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  FloatingActionButton(
                                    shape: const CircleBorder(),
                                    onPressed: () {
                                      myModel.updateAge(myModel.age - 1);
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
                ),
              ),
              Builder(
                builder: (context) => SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      double result =
                          myModel.weight / pow(myModel.height / 100, 2);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bmi2(
                            age: myModel.age,
                            isMale: myModel.isMale,
                            result: result,
                          ),
                        ),
                      );
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    color: Colors.purple,
                    child: const Text(
                      'Calculate Your BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
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
