import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('eswar');
          },
        ),*/
        title: Text('App demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Eswar'),
              accountEmail: Text('eswarrajan222@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('XYZ'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('xyz'),
                ),
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 30,
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20.0),
          ),
          child: Container(
            padding: EdgeInsets.all(10.0),
            height: 100,
            width: 375,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Failure will never overtake me if my definition to succeed is strong enough',
                  style: TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 10.0),
                Text(
                  '-APJ ABDUL KALAM',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyApp1()));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      //backgroundColor: Colors.grey,
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key key}) : super(key: key);

  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                'https://images.pexels.com/photos/1770809/pexels-photo-1770809.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                fit: BoxFit.fill,
              ),
              height: 290,
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.fill,
              ),
              height: 290,
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                fit: BoxFit.fill,
              ),
              height: 290,
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                'https://images.pexels.com/photos/1894350/pexels-photo-1894350.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                fit: BoxFit.fill,
              ),
              height: 290,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              elevation: 30,
              child: Icon(Icons.navigate_next),
              backgroundColor: Colors.red,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp2()));
              },
            ),
            FloatingActionButton(
              elevation: 30,
              child: Icon(Icons.navigate_before),
              backgroundColor: Colors.red,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
          ]),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key key}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  final tabs = [
    MyApp_(),
    myapp(),
    Center(
      child: Text(
        'Chat on Progress....:)',
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.amberAccent),
      ),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        child: Icon(Icons.navigate_before),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => MyApp()));
        },
      ),
      //floatingActionButtonLocation:
      //FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        iconSize: 40,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: ('home'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
              color: Colors.white,
            ),
            label: ('BMI'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            label: ('chat'),
            backgroundColor: Colors.pink,
          ),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}

class myapp extends StatefulWidget {
  const myapp({Key key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  double height_ = 0.0;
  double weight_ = 0.0;
  int bmi_ = 0;
  String condition_ = 'Select Data';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 55.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            height: size.height * 0.35,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BMI CALCULATION",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 44,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '$bmi_',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Text(
                  "Condition: $condition_",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 35,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Choose Data",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Text(
                  "Height:$height_ cm",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Slider(
                  value: height_,
                  min: 0,
                  max: 250,
                  onChanged: (height) {
                    setState(() {
                      height_ = height;
                    });
                  },
                  divisions: 250,
                  label: "$height_",
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.black,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Weight:$weight_ Kg",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Slider(
                  value: weight_,
                  min: 0,
                  max: 200,
                  onChanged: (weight) {
                    setState(() {
                      weight_ = weight;
                    });
                  },
                  divisions: 200,
                  label: "$weight_",
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.black,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          bmi_ = (weight_ / ((height_ / 100) * (height_ / 100)))
                              .round()
                              .toInt();
                          if (bmi_ >= 18.5 && bmi_ <= 25) {
                            condition_ = "Normal";
                          } else if (bmi_ > 25 && bmi_ <= 30) {
                            condition_ = "OverWeight";
                          } else if (bmi_ > 30) {
                            condition_ = "Obesity";
                          } else {
                            condition_ = "UnderWeight";
                          }
                        });
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class MyApp_ extends StatefulWidget {
  const MyApp_({Key key}) : super(key: key);

  @override
  _MyApp_State createState() => _MyApp_State();
}

class _MyApp_State extends State<MyApp_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVT6AAQn4kamGZ62G5omyEpxmvfPL0WgZsKQ&usqp=CAU',
            fit: BoxFit.fill,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
