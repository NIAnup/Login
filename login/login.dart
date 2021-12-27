import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Welcome',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text('login and sign up Ni.bete',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10.9,
                    fontWeight: FontWeight.w600)),
          ),
          Column(
            children: [
              SizedBox(
                width: 80.0,
                height: 60.0,
              ),
              Image.network(
                  "https://img.freepik.com/free-vector/business-team-putting-together-jigsaw-puzzle-isolated-flat-vector-illustration-cartoon-partners-working-connection-teamwork-partnership-cooperation-concept_74855-9814.jpg?size=626&ext=jpg"),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(top: 4, left: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )),
                  child: MaterialButton(
                      minWidth: 220.0,
                      height: 60.0,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Log()));
                      },
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55)),
                      child: Text('Log in  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)))),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: EdgeInsets.only(top: 4, left: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )),
                  child: MaterialButton(
                      minWidth: 220.0,
                      height: 60.0,
                      onPressed: () {},
                      color: Colors.cyanAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55)),
                      child: Text('Sign Up ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)))),
            ],
          ),
        ],
      ),
    );
  }
}

class Log extends StatefulWidget {
  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:
                  Icon(Icons.arrow_back_ios, size: 20.0, color: Colors.black)),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 38.9,
                          fontWeight: FontWeight.w600)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 9.0,
                    ),
                    Center(
                      child: Text('WE ARE WAITING ',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 10.9,
                              fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Eamil"),
                          SizedBox(height: 6.0),
                          makeInput(
                            label: "password",
                            obscureText: true,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 4, left: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )),
                            child: MaterialButton(
                                minWidth: 220.0,
                                height: 60.0,
                                onPressed: () {},
                                color: Colors.greenAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(55)),
                                child: Text('Log in  ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('already have account?',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 15.0)),
                        Text('Sign Up',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 19.0)),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                        "https://www.cdc.gov/coronavirus/2019-ncov/images/vaccines/COVID-Vaccines2.png?_=34472"),
                  ],
                )
              ],
            ),
          ),
        )));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
        SizedBox(
          height: 4,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54))),
        )
      ],
    );
  }
}
