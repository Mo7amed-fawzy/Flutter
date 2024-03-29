import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              SizedBox(width: 150),
              Text(
                'Sign Up to Brand',
                style: TextStyle(
                  color: Color.fromARGB(198, 55, 70, 152),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      elevation: 9,
                      shadowColor: const Color.fromARGB(255, 84, 80, 80),
                      minimumSize: const Size(150, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 19),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 9,
                      shadowColor: const Color.fromARGB(255, 142, 136, 136),
                      backgroundColor: Colors.white,
                      minimumSize: const Size(150, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.g_translate,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Google',
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 222, 218, 218),
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or Log in using Email',
                      style: TextStyle(color: Color.fromRGBO(101, 101, 90, 1)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 222, 218, 218),
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'User Name',
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0.5, vertical: 1.0),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0.5, vertical: 1.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0.5, vertical: 1.0),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text.rich(TextSpan(
                          text: 'accept the ',
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms & Conditions',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // code to open / launch terms of service link here
                                  }),
                          ]))),
                  const SizedBox(height: 4),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        backgroundColor:
                            const Color.fromARGB(255, 94, 170, 233),
                        padding: const EdgeInsets.symmetric(
                            // for bottn size not place
                            horizontal: 60,
                            vertical: 20),
                      ),
                      child: const Text(
                        'Creat an account',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Existing Member?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  'image/task_12.jpeg',
                  width: 600,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
