import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var a = Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 3)),
            icon: Icon(Icons.person),
            labelText: 'Card Name',
            enabledBorder: OutlineInputBorder()),
      ),
    );
    var b = Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 3)),
            icon: Icon(Icons.search),
            labelText: 'CVV',
            enabledBorder: OutlineInputBorder()),
      ),
    );
    var c = Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 3)),
            icon: Icon(Icons.credit_card),
            labelText: 'Number',
            enabledBorder: OutlineInputBorder()),
      ),
    );
    var d = Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 3)),
            icon: Icon(Icons.calendar_today),
            labelText: 'Expiry Date',
            enabledBorder: OutlineInputBorder()),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Payment Card Demo"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                a,
                SizedBox(height: 30),
                c,
                SizedBox(height: 30),
                b,
                SizedBox(height: 30),
                d,
                SizedBox(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      "Pay",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
