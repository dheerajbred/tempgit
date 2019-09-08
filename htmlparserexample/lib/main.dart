import 'package:htmlparserexample/home.dart';
import 'package:flutter/material.dart';
import 'package:htmlparserexample/themes.dart';
import 'package:htmlparserexample/colors.dart';

void main() {
  runApp(
    ThemeAppWidget(
      initialTheme: MyThemes.getTheme(MyThemeKeys.LIGHT),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final routes = {
    '/': (context) => HomeScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      theme: ThemeApp.of(context).themeData,
      routes: routes,
    );
  }
}

class ThemeApp extends InheritedWidget {
  final _ThemeAppWidgetState data;

  const ThemeApp({
    Key key,
    @required this.data,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static _ThemeAppWidgetState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ThemeApp) as ThemeApp).data;
  }

  @override
  bool updateShouldNotify(ThemeApp old) {
    return this != old;
  }
}

class ThemeAppWidget extends StatefulWidget {
  final ThemeData initialTheme;
  final Widget child;

  ThemeAppWidget({Key key, this.initialTheme, this.child})
      : assert(initialTheme != null),
        assert(child != null),
        super(key: key);

  @override
  _ThemeAppWidgetState createState() => _ThemeAppWidgetState();
}

class _ThemeAppWidgetState extends State<ThemeAppWidget> {
  ThemeData themeData;

  void switchTheme(MyThemeKeys themeKey) {
    setState(() {
    themeData = MyThemes.getTheme(themeKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    themeData = themeData ?? widget.initialTheme;
    return ThemeApp(
      data: this,
      child: widget.child,
    );
  }
}
