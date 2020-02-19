import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
      ),
      // darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Demo Web Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fchurchmediadrop.com%2Fdownloads%2Fgradient-cosmos-stills-pack%2F&psig=AOvVaw3576jbHPH97gX7VFmhoRWL&ust=1582215936661000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCGiPWD3ucCFQAAAAAdAAAAABAF';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        drawer: Drawer(
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 400.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA22447).withOpacity(0.05),
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        spreadRadius: 3
                      )
                    ]
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                      elevation: 5,
                      shadowColor:  Colors.black.withOpacity(.05),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 27.0,
                              child: Icon(
                                FontAwesome.facebook,
                                size: 36.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  filled: true,
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  fillColor: Color(0xFFDBEDFF),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Color(0xFFDBEDFF),
                                  contentPadding: EdgeInsets.only(left: 10.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            RaisedButton(
                              onPressed: () => _launchURL(),
                              color: Colors.blue,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://facebook.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   
}
