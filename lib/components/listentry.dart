import 'package:flutter/material.dart';
import 'package:speedcode/details.dart';

class ListEntry extends StatelessWidget {

	final int index;
	ListEntry({ this.index });

  @override
  Widget build(BuildContext context) {
    return InkWell(
			onTap: () {
				Navigator.push(context, MaterialPageRoute(builder: (context) => Details(index: index)));
			},
			child: Container(
				padding: EdgeInsets.all(25),
				margin: EdgeInsets.only(bottom: 15),
				decoration: BoxDecoration(
					color: Colors.white,
					borderRadius: BorderRadius.circular(20),
					boxShadow: [
						BoxShadow(
							color: Color(0x10000000),
							spreadRadius: 0,
							blurRadius: 7,
							offset: Offset(0, 3),
						),
					],
				),
				child: Row(
					children: <Widget>[

						Container(
							width: 90,
							height: 90,
							child: Stack(
								children: <Widget>[
									Hero(
										tag: '$index',
										child: Container(
											width: 83,
											height: 83,
											decoration: BoxDecoration(
												borderRadius: BorderRadius.circular(20),
												image: DecorationImage(image: AssetImage('assets/$index.jpg'), fit: BoxFit.cover),
											),
										),
									),
									Align(
										alignment: Alignment.bottomRight,
										child: Container(
											padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
											decoration: BoxDecoration(
												color: Colors.red[300],
												borderRadius: BorderRadius.circular(20),
											),
											child: Row(
												mainAxisSize: MainAxisSize.min,
												children: <Widget>[
													Icon(Icons.favorite, size: 12, color: Colors.white),
													SizedBox(width: 7),
													Text(
														'12.5k',
														style: TextStyle(fontSize: 11, color: Colors.white),
													),
												],
											),
										),
									),
								],
							),
						),

						SizedBox(width: 20),

						Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								Text(
									'\$ 12',
									style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: -2),
								),
								SizedBox(height: 10),
								Text(
									'Charming vill, Apmt',
									style: TextStyle(fontSize: 14, color: Colors.grey),
								),
								SizedBox(height: 8),
								Text(
									'3200 sq. ft		|	4BHK',
									style: TextStyle(fontSize: 13),
								),
							],
						),

					],
				),
			),
		);
  }
}
