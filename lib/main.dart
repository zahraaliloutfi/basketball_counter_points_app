import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

//state object
class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    teamAPoints++;
    print('add $teamAPoints point');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Pints Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    '$teamAPoints',
                    style: TextStyle(fontSize: 200),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('add $teamAPoints point');
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    child: Text(
                      'add 1 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 2;
                      });
                    },
                    child: Text(
                      'add 2 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    child: Text(
                      'add 3 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                ]),
                Container(
                  height: 460,
                  child: VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Color.fromARGB(255, 214, 214, 214),
                  ),
                ),
                Column(children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    '$teamBPoints',
                    style: TextStyle(fontSize: 200),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'add 1 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'add 2 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'add 3 point',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50)),
                  ),
                ]),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
