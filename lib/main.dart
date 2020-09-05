import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.blue,
          fontFamily: 'Comic Sans MS',
        ),
        home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('TEST TEST'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.fromLTRB(10, 130, 0, 5),
                    child: Text(
                      'ยินดีต้อนรับ !',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'เริ่มต้นการใช้งานโดยกรอกเบอร์โทรศัพท์ของคุณที่นี่',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 21),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 80),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone number',
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                //   child: TextField(
                //     obscureText: true,
                //     controller: passwordController,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Password',
                //     ),
                //   ),
                // ),
                // FlatButton(
                //   onPressed: () {
                //     //forgot password screen
                //   },
                //   textColor: Colors.blue,
                //   child: Text('Forgot Password'),
                // ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(200, 10, 200, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('ต่อไป'),
                      onPressed: () {
                        // print(nameController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      },
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(80, 10, 80, 70),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Facebook'),
                      onPressed: () {},
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Google'),
                      onPressed: () {},
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('ดำเนินการต่อด้วย Apple ID'),
                      onPressed: () {},
                    )),
                // Container(
                //     child: Row(
                //   children: <Widget>[
                //     Text('Does not have account?'),
                //     FlatButton(
                //       textColor: Colors.blue,
                //       child: Text(
                //         'Sign in',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       onPressed: () {
                //         //signup screen
                //       },
                //     )
                //   ],
                //   mainAxisAlignment: MainAxisAlignment.center,
                // ))
              ],
            )));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Win Win"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Text('Fuck u'),
        ),
      ),
    );
  }
}
