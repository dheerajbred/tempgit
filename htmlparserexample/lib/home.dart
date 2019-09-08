import 'package:htmlparserexample/themes.dart';
import 'package:htmlparserexample/pagetwo.dart';
import 'package:htmlparserexample/customdrawer.dart';
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
          child: CustomDrawer(),
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
