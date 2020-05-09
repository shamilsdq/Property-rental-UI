import 'package:flutter/material.dart';
import 'package:speedcode/components/perkbox.dart';

class Details extends StatelessWidget {

  final int index;
  Details({ this.index });

  final List<Map<String, dynamic>> list = [
    {'icon': Icons.wifi, 'text': 'WiFi'},
    {'icon': Icons.fastfood, 'text': 'Food'},
    {'icon': Icons.call, 'text': 'Call'},
    {'icon': Icons.local_laundry_service, 'text': 'Laundry'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[

                Hero(
                  tag: '$index',
                  child: Container(
                    height: 400,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(image: AssetImage('assets/$index.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                  child: Text(
                    'Co-Working Space',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: Text(
                    'East Market, NY',
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
                    style: TextStyle(fontSize: 14, height: 1.9, color: Colors.grey[400]),
                  ),
                ),

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Facilities',
              style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return PerkBox(icon: list[index]['icon'], text: list[index]['text'],);
              },
            ),
          ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Row(
              children: <Widget>[

                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.remove, size: 20),
                        Text(
                          '1H',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: -2),
                        ),
                        Icon(Icons.add, size: 20),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white
                          ),
                        ),
                        Text(
                          '\$15,00',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          
        ],
      ),
    );
  }

}
