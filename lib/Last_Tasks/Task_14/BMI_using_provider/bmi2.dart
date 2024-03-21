import 'package:flutter/material.dart';

// ignore: camel_case_types
class bmi2 extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  // ignore: non_constant_identifier_names
  String ShortResult() {
    if (result >= 24.9) {
      return 'Overweight';
    } else if (result > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String longRessult() {
    if (result >= 24.9) {
      return 'you have a hayer than normal body. try more عشان تخس وكدا';
    } else if (result > 18.5) {
      return 'You have a normal Body Weight. Good job';
    } else {
      return 'you have a lower than normal body . try more ';
    }
  }

  const bmi2({
    super.key,
    required this.result,
    required this.isMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 27, 26, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 27, 26, 26),
        leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Your Result',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black54,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${isMale ? 'Male' : 'Female'} ',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 188, 188, 190),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    ShortResult(),
                    style: const TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '$age',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Normal BMI range : 18.5-24.9kg',
                      style: TextStyle(
                        color: Color.fromARGB(255, 168, 167, 167),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '²',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            textBaseline: TextBaseline.alphabetic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    longRessult(),
                    style: const TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 59,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Re-Calculate Your BMI',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
