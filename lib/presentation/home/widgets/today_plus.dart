import 'package:flutter/material.dart';

class TodayPlus extends StatelessWidget {
  const TodayPlus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Today",
          style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 20),
        ),
        Icon(Icons.add_circle_outline),
      ],
    );
  }
}
