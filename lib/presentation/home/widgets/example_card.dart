import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  const ExampleCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Icon(
          Icons.call,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          "Conference Call",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        subtitle: Text("30 mins", style: Theme.of(context).textTheme.bodyText2),
        trailing: Icon(Icons.check_circle,
            color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
