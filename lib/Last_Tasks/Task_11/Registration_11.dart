import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.smartphone_outlined,
                    color: Colors.white.withOpacity(1),
                    size: 110,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      'Flutter Onboarding',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Build your Onboarding flow in seconds',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 244),
            Builder(
                builder: (cxt) => SizedBox(
                      height: 60,
                      width: 140,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            cxt,
                            MaterialPageRoute(
                              builder: (cxt) => const Regestiration2_11(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text('Start',
                            style: TextStyle(color: Colors.red, fontSize: 29)),
                      ),
                    )),
            Expanded(child: Container()),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.fiber_manual_record,
                  color: Colors.white,
                  size: 13,
                ),
                Icon(Icons.fiber_manual_record, color: Colors.grey, size: 13),
                Icon(Icons.fiber_manual_record, color: Colors.grey, size: 13),
                Icon(Icons.fiber_manual_record, color: Colors.grey, size: 13),
                SizedBox(
                  height: 56,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Regestiration2_11 extends StatelessWidget {
  const Regestiration2_11({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 120),
              const Card(
                child: Icon(
                  Icons.smartphone_rounded,
                  color: Colors.red,
                  size: 110,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Say Hello To Your New App!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'You\'ve just saved a week of development and headaches.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Builder(
                builder: (cxt) => SizedBox(
                    width: 230,
                    height: 47,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          cxt,
                          MaterialPageRoute(
                            builder: (cxt) => const Regestiration3_11(),
                          ),
                        );
                      },
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: 230,
                height: 47,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 81, 78, 78), fontSize: 20),
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

// ignore: camel_case_types
class Regestiration3_11 extends StatelessWidget {
  const Regestiration3_11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 33, 37),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    hintText: 'E-mail Adress',
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 230,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 243, 33, 37),
                      ),
                    ),
                    child: const Text('Log In',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.only(left: 150),
                child: Text('OR'),
              ),
              const SizedBox(height: 16.0),
              Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: SizedBox(
                    width: 230,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 12, 27, 190)),
                      ),
                      child: const Text(
                        'Facebook Login',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
