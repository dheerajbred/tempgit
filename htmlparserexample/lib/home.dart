import 'package:htmlparserexample/themes.dart';
import 'package:htmlparserexample/pagetwo.dart';
import 'package:htmlparserexample/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'password.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  bool themeSwitch = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'My',
                        style: TextStyle(
                            fontFamily: 'Plaster',
                            fontSize: 72.0,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        'Test app',
                        style: TextStyle(fontFamily: 'Plaster'),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.calculator,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Theme 1 \n(selected)',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.building,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Theme 2',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.searchLocation,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Theme 3',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.signOutAlt,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Exit',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0),
                child: Text('External links'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.home,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.envelope,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: MyColorsTheme1.reddy,
          title: Text("Theme 1"),
        ),
        body: Container(
          height: h,
          width: w,
          color: Colors.white54,
          child: ListView(
            children: <Widget>[
              FlatButton(
                child: Text("Next page"),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PageTwo(),),);
                },
                color: Colors.green,
              ),
              ListTile(
                title: Text("primary1"),
                subtitle: Container(
                  height: 50,
                  color: MyColorsTheme1.primary1(1),
                ),
              ),
              ListTile(
                title: Text("primary2"),
                subtitle: Container(
                  height: 50,
                  color: MyColorsTheme1.primary2,
                ),
              ),
              ListTile(
                title: Text("opp1"),
                subtitle: Container(
                  height: 50,
                  color: MyColorsTheme1.opp1,
                ),
              ),
              ListTile(
                title: Text("purp"),
                subtitle: Container(
                  height: 50,
                  color: MyColorsTheme1.purp,
                ),
              ),
              ListTile(
                title: Text("reddy"),
                subtitle: Container(
                  height: 50,
                  color: MyColorsTheme1.reddy,
                ),
              ),

FlatButton(
                child: Text(MyColorsTheme1.year, style: TextStyle(
                            fontFamily: 'Plaster',
                            fontSize: 50.0,
                            color: Theme.of(context).primaryColor),),
                onPressed: (){
                },
                color: Colors.white,
              ),

            ],
          ),
        )
        );
  }
}
