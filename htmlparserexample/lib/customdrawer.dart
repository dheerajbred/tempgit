
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:htmlparserexample/colors.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key key,this.themeNum}) : super(key: key);
  final int themeNum;

  @override
  CustomDrawerState createState() {
    return CustomDrawerState();
  }
}

class CustomDrawerState extends State<CustomDrawer> with SingleTickerProviderStateMixin {
  

        ListView _menuGenresList(){
          final TextEditingController _texteditcontroller = new TextEditingController();
          String searchtext = 'zzz';

    return new  ListView(
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
                            color: Colors.white),
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
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
              decoration:
              new BoxDecoration(color: MyColorsTheme2.primary1(2)),
              child: _menuGenresList()
              ),
      
    );
  }
}


class Bloc {
  final _themeController = StreamController<MyColors>();
  get changeTheme {
    _themeController.sink.add;  }
    get lightThemeEnabled {
      _themeController.stream;
    }
}

final bloc = Bloc();