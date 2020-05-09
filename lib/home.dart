import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedcode/components/listentry.dart';
import 'package:speedcode/components/titlebar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.white,
			body: Column(
				children: <Widget>[

					SizedBox(height: 20),

					Padding(
						padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
						child: TitleBar(),
					),

					Container(
						padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
						child: Text(
							'Co-Working Space',
							style: TextStyle(fontSize: 57, fontWeight: FontWeight.bold, height: 0.95),
						),
					),

					Expanded(
						child: ListView.builder(
							padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
							itemCount: 5,
							itemBuilder: (BuildContext context, int index) {
								return ListEntry(index: index+1);
							},
						),
					),

				],
			),
		);
  }
}
