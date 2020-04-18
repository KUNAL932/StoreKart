import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shop From Nearby'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'StoreKart',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
//
                Container(
                    height: 90,
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Sign Up'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
//                  navigation function starts
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GrossoryList()),

                        );



//                  navigation function starts
                      },
                    )

                )

              ],
            )));
  }
}

class GrossoryList extends StatefulWidget {
  @override
  _GrossoryListState createState() => _GrossoryListState();
}

class _GrossoryListState extends State<GrossoryList> {
  int wheatQuantityInKg = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("StoreKart"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,20,20,0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text("ITEMS",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text("Add",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  child: Text("Quantity",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                )
              ],

            ),
            SizedBox(height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
//                  padding: EdgeInsets.fromLTRB(70,10,5,0),
                  child: Text("Wheat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                Container(
//                  padding: EdgeInsets.fromLTRB(0,10,5,0),
                  child: FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          wheatQuantityInKg += 1;
                        });
                      },
                      icon: Icon(Icons.add),
                      label: Text("1"),
                    color: Colors.white,
                      ),
                ),


                Container(
//                  padding: EdgeInsets.fromLTRB(0,10,5,60),
                  child: Text(
                    '$wheatQuantityInKg',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),

    );
  }
}

//class Store extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.grey[900],
//        title: Text("Stores Near Me"),
//      ),
//    );
//  }
//}



//onPressed: () {
//Navigator.pop(context);
//}


