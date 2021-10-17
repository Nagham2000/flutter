import 'package:flutter/material.dart';
import 'package:lab/student.dart';
class attendance extends StatelessWidget {
  final Student std;
  attendance(this.std);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avvailable students'),
      ),
      body: Text('Name: ${std.name}\n'
          'Id: ${std.id}\n',
        style: TextStyle(fontSize: 25),),
    );
  }
}
