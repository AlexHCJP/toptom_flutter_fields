import 'package:flutter/material.dart';
import 'package:toptom_flutter_fields/fields/description_field.dart';
import 'package:toptom_flutter_fields/fields/email_field.dart';
import 'package:toptom_flutter_fields/fields/number_field.dart';
import 'package:toptom_flutter_fields/fields/phone_field.dart';
import 'package:toptom_flutter_fields/fields/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToptomTextField(
              icon: Icon(Icons.search),
            ),
            ToptomDescriptionField(),
            ToptomEmailField(),
            ToptomNumberField(),
            ToptomPhoneField(),

          ],
        ),
      ),
    );
  }
}
