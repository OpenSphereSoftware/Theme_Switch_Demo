

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingdemo/app_state.dart';
import 'package:themingdemo/presentation/home/widgets/example_card.dart';
import 'package:themingdemo/presentation/home/widgets/theme_chooser_mobile.dart';
import 'package:themingdemo/presentation/home/widgets/theme_chooser_mobile_new.dart';
import 'package:themingdemo/presentation/home/widgets/today_plus.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Icon(Icons.menu),
        ),
        title: Row(
          children: <Widget>[
            Spacer(),
            Text('Dark Mode', style: Theme.of(context).textTheme.bodyText2),
            SizedBox(
              width: 10,
            ),
            Switch(
              value: Provider.of<AppState>(context, listen: false).isDarkModeOn,
              onChanged: (booleanValue) {
                Provider.of<AppState>(context, listen: false)
                    .updateTheme(booleanValue);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 32, top: 32),
              child: TodayPlus()
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ExampleCard()
            ),
            SizedBox(height: 59,),
            ThemeChooserMobile(),
            SizedBox(height: 50,),
            ThemeChooserMobileNew(),
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}