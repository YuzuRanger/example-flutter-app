import 'package:flutter/material.dart';
import 'package:untitled/classes.dart';
import 'styles.dart';

class MediumButton extends StatelessWidget {
  final String buttonName;
  final Widget route;
  final Function function;
  final List<dynamic> args;
  final double l;
  final double t;
  final double r;
  final double b;
  final int color;

  MediumButton(
      {required this.buttonName,
        required this.route,
        required this.function,
        required this.args,
        this.l = 25.0,
        this.t = 20.0,
        this.r = 20.0,
        this.b = 25.0,
        this.color = defaultColor});

  @override
  Widget build(BuildContext context) {
    var button =
    Text(buttonName, textAlign: TextAlign.center);

    return Padding(
        padding: EdgeInsets.all(DEFAULT_PADDING),
        child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Color(color),
            child: MaterialButton(
                minWidth: 0.8 * MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(l, t, r, b),
                onPressed: () {
                  if (route is Widget) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => route,
                            settings: RouteSettings(arguments: args)));
                  } else if (function is Function) {
                    function(args, context);
                  } else {}
                },
                child: button)));
  }
}

class RouteButton extends StatelessWidget {
  final String buttonName;
  final Widget route;
  final double l;
  final double t;
  final double r;
  final double b;
  final int color;
RouteButton(
    {required this.buttonName,
      required this.route,
      this.l = 25.0,
      this.t = 20.0,
      this.r = 20.0,
      this.b = 25.0,
      this.color = defaultColor});

@override
Widget build(BuildContext context) {
  var button =
  Text(buttonName, textAlign: TextAlign.center);

  return Padding(
      padding: EdgeInsets.all(DEFAULT_PADDING),
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(color),
          child: MaterialButton(
              minWidth: 0.8 * MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(l, t, r, b),
              onPressed: () {
                if (route is Widget) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => route,
                          settings: RouteSettings()));
                } else {}
              },
              child: button)));
}
}