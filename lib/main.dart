import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"),),
        body: Text("Home Page"),
        drawer: Drawer(
            child: Container(
                color: Colors.white,
                child: ListView(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [

                            Text('Sandra Adams',
                              style: TextStyle(letterSpacing: 2.0,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(

                          children: [

                            Text('sandra@gmail.com', style: TextStyle(
                                letterSpacing: 2.0, fontSize: 10.0),),

                          ],


                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/anonymous.png', width: 50, height: 50,),
                            Divider(
                              color: Colors.grey,
                            ),

                            buildMenuItem(
                                icon: Icon(Icons.folder),
                                title: "My Files",
                                onClick: () {
                                  selectItem(context, 0);
                                  TextField(
                                      focusNode: FocusNode(),
                                      enableInteractiveSelection: true,

                                  );
                                }

                            ),

                            buildMenuItem(
                                icon: Icon(Icons.people),
                                title: "shared with me",
                                onClick: ()
                                     {
                                  selectItem(context, 1);
                                  TextField(
                                      focusNode: FocusNode(),
                                      enableInteractiveSelection: false,
                                  );
                                }
                            )
                            ,
                            buildMenuItem(
                                icon: Icon(Icons.watch_later),
                                title: "Recent",
                                onClick: () {
                                  selectItem(context, 2);
                                }
                            ),
                            buildMenuItem(
                                icon: Icon(Icons.restore_from_trash_outlined),
                                title: "Trash",

                                onClick: () {
                                  selectItem(context, 3);

                                      Row(
                                        children: [
                                          Divider(
                                            color: Colors.grey,
                                          ),
                                          Text('Lable')
                                        ],

                                      );
                                      Row(
                                        children: [

                                        ],
                                      );


                                }

                            ),
                          buildMenuItem(
                          icon: Icon(Icons.bookmark_outlined),
                          title: "Family",

                         onClick: () {
                           selectItem(context, 4);
                         })
                          ],

                        ),


                      )

                    ]

                )
            )
        )
    );
  }


  buildMenuItem(
      {required Icon icon, required String title, required Function onClick}) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {
        onClick();
      },
    );
  }

  selectItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Myfiles())
        );
        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SharedWithMe())
        );
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Recent())
        );
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Trash())
        );
        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Family())
        );
    }
  }

}

class Myfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyFile"),),
      body: Text("My File page"),
    );
  }

}

class SharedWithMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("shared with me"),),
      body: Text("shared with me page"),
    );
  }

}
class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recent"),),
      body: Text("Recent page"),
    );
  }

}
class Trash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trash"),),
      body: Text("Trash page"),
    );
  }

}
class Family extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Family"),),
      body: Text("Family page"),
    );
  }

}




