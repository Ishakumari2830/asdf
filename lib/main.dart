import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('sized box'),
      ),
      //sized box: box having size
        //only use for giving size will not provide any bg color
      body:  //ConstrainedBox( //will be use when we use expand shrink
       // constraints: BoxConstraints(
         // minWidth: 100,
        //  minHeight: 20,
          //maxHeight: 40,
        //  maxWidth: 400,
        //),
         Row(
           children:[
             SizedBox.square(
              //we can use simple SizedBox also
              //three type 1st one is .expand where we dont need widht n height ,it will take ke whole screensize
              //2nd one is .shrink where min widht n hi8is required if not defined then it will not showany box
              //we can use .square where we need to define dimension
              dimension: 100,

              child: ElevatedButton(
                onPressed: (){

                },
                child: Text('click'),

              ),),


             //when we need space btwn two sizedbox then we use sizedbox
             SizedBox(
               width: 20,
             ),
             //if we use column then we need height to give the space in sizedbox


             SizedBox.square(

               dimension: 100,

               child: ElevatedButton(
                 onPressed: (){

                 },
                 child: Text('click'),

               ),),
      ],


         ),


      // This trailing comma makes auto-formatting nicer for build methods.
      //MAIN diff btwn sized box n container ,container is having many attributes but sized box have only one size

    );
  }
}
