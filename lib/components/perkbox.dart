import 'package:flutter/material.dart';

class PerkBox extends StatelessWidget {

	final IconData icon;
	final String text;
	PerkBox({ this.icon, this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
			width: 80,
			height: 80,
			margin: EdgeInsets.all(5),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(15),
				border: Border.all(color: Colors.black),
			),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Icon(icon, size: 25),
					SizedBox(height: 5),
					Text(
						text,
						style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
					),
				],
			),
		);
  }

}
