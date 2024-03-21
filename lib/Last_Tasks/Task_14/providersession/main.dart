import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/Providerdata/ChangeNotifierPrrovider.dart';
import 'package:flutercoursetwo/Last_Tasks/Task_14/providersession/Screens/HomeScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyAppProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3:
              true //  MaterialApp مجموعة من الأنماط والتصاميم البصرية التي تطبق على عناصر واجهة المستخدم بناءً على
          ),
      home: const HomeScreen(),
    );
  }
}
