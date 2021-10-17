import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'student.dart';
import 'attendance.dart';

void main() {
  runApp(Main());
}

List<Student> students = [
  Student(name: 'Nagham Hejja', id: '1234'),
  Student(name: 'Deema Mohammad', id: '5678'),
  Student(name: 'Raghad Ahmad', id: '9856'),
  Student(name: 'Sara Ali', id: '5409'),
];


class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage(), routes: <String, WidgetBuilder>{
      '/b': (BuildContext context) => attendance(students[0]),
    });
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text('Student App'),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          StudentCard(
            students[0],
            std: students[0],
          ),
          StudentCard(
            students[1],
            std: students[1],
          ),
          StudentCard(
            students[2],
            std: students[2],
          ),
          StudentCard(
            students[3],
            std: students[3],
          ),
        ],
      ),
    );
  }
}

class StudentCard extends StatefulWidget {
  final Student std;

  StudentCard(Student student, {required this.std});

  @override
  _StudentCardState createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            height: 160.0,

            child:
            Card(
                elevation: 10.0,
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Name: ',
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      this.widget.std.name,
                                      style: TextStyle(
                                          fontSize: 22, letterSpacing: 2.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Id: ',
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      this.widget.std.id,
                                      style: TextStyle(
                                          fontSize: 22, letterSpacing: 2.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //Image.asset('images/anonymous.jpg',width: 40,height: 40,),
                            CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/images/anonymous.png'),
                              radius: 40.0,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: widget.std.check
                                    ? Icon(
                                  Icons.check_box,
                                  color: Colors.green,

                                )
                                    : Icon(
                                  Icons.check_box_outline_blank,
                                  color: Colors.green,
                                ),
                                onPressed: () {
                                  widget.std.check = !(widget.std.check);
                                  setState(() {});
                                }),
                          ],
                        ),
                  Row(

                      children: [
                        TextButton(
                          child: Text('attendent students'),
                          onPressed: (
                              ) {

                            Navigator.pushNamed(context, '/b');

                          },



                        )

                          ],
                        ),

]
                    )


                )
            )
    )
        );

  }}



