import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speedcode/home.dart';


void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  	return MaterialApp(
			title: 'speedcode',
			debugShowCheckedModeBanner: false,
			home: Home(),
		);
	}
}