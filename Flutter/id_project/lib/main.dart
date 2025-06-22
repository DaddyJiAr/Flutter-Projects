import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IDCard(),
  ));
}

class IDCard extends StatefulWidget {
  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {
  
  int yearLevel = 3; // default si one
  

  String getYearLevel(int yearLevel) {
    switch (yearLevel) {
      case 1:
        return "1st";
      case 2:
        return "2nd";
      case 3:
        return "3rd";
      case 4:
        return "4th";
      default:
        return "Error";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          "ID Card", // di na need indicate yung child: kineme
          style: TextStyle(color: Colors.white), 
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (yearLevel + 1 > 4) yearLevel = 1;
              else yearLevel++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[400],

        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/id_picture.jpg"),
                radius: 100,
              ),
            ),
            Divider(
              height: 60, // di yung height ng line, rather yung space na ino-occupy nya. thickness dapat sa kapal
              color: Colors.grey[500],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox( // parang breakline na class ko sa java
              height: 10,
            ),
            Text(
              "Jan Rei I. Santiago",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent[200],
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "CURRENT YEAR LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox( // parang breakline na class ko sa java
              height: 10,
            ),
            Text(
              "${getYearLevel(yearLevel)} Year",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent[200],
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "santiagojanrei@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[50],
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
        ),
    );
  }
}

