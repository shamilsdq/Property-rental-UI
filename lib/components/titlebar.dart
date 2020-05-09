import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
			children: <Widget>[

				Expanded(
					child: Text(
						'Rent House',
						style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
					),
				),

				Icon(Icons.search, size: 19),

				SizedBox(width: 20),

				Icon(Icons.apps, size: 19),

			],
		);
  }
}
