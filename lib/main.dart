import 'package:flutter/material.dart';

void main() {
  runApp(LayoutProject());
}

class LayoutProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Layout Project",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex:1 ,
            child: Container(
              padding:EdgeInsets.all(10) ,
              height: 500,
            //  width: 300,
             // color: Colors.amberAccent,
              child: Column(
                children: [
                  Container(
                    padding:EdgeInsets.all(8) ,
                   // height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FA), border: Border.all(width: 1)),
                    child: const Center(
                        child: Text(
                      "Strawberry Pavlova",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                    )),
                  ),
                  Container(
                    padding:EdgeInsets.all(10) ,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FA), border: Border.all(width: 1)),
                    child: const Center(
                        child: Text(
                            "Pavlova is meringue-based\ndessert named after the russian\n ballerien Anna Pavlova.\nPavlova featues a crisp crust and \nsoft light inside, topped with fruit \nand whipped cream",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                  ),
                  Container(
                      padding:EdgeInsets.all(8) ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE6F0FA), border: Border.all()),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                              children: [
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                                Icon(Icons.star),
                              ]),
                              Text(
                                "170 Reviews",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                        ],
                      )),
                  Container(
                    padding:EdgeInsets.all(8) ,
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FA),
                      border: Border.all(
                        width: 1
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.book),
                            Text("PREP"),
                            Text("25 min")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.punch_clock),
                            Text("COOK"),
                            Text("1 hr")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.ac_unit_outlined),
                            Text("FEEDS"),
                            Text("4-6")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 500,
              //width: 600,
              color: Colors.green,
              child: Image.asset(
                "assets/images/shevanti.jpg",
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Practice app layout",
     theme: ThemeData(primarySwatch: Colors.orange),
     home: HomePage(),
   );
  }

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text("Layout Design"),
      ),
      body: Container(
        height:450,
        width:double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color:Colors.green,
                child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                          width:double.infinity,
                          decoration: BoxDecoration(
                            color:Color(0xffE6F0FA),
                            border: Border.all(
                               width: 1
                            )
                          ),
                            child: Center(child: Text("Strawberry Pavlova",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),))
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffE6F0FA),
                            border: Border.all(width: 1)
                          ),
                          //color: Colors.E6F0FA,
                          child: Center(child: Text("Pavlova is meringue-based\ndessert named after the russian\n ballerien Anna Pavlova.\nPavlova featues a crisp crust and \nsoft light inside, topped with fruit \nand whipped cream",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                        ),
                        Row(

                        ),
                        Row()
                  ],
                )
              ),
            ),
            Expanded(
                flex:7,
              child: Container(
                child:Image.asset("assets/images/shevanti.jpg",fit: BoxFit.fill),
                //width: 600,
                //color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }

}*/

/*
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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
