
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingdemo/app_state.dart';
import 'package:themingdemo/presentation/home/widgets/theme_animation.dart';
import 'package:themingdemo/presentation/home/widgets/theme_switch.dart';

class ThemeChooserMobile extends StatelessWidget {
  const ThemeChooserMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          elevation: 25,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Container(
             // width: sizingInformation.width - 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Provider.of<AppState>(context).isDarkModeOn? Theme.of(context).appBarTheme.color :Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:  80),
                child: Column(
                  children: [
                    const ThemeAnimated(),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      Provider.of<AppState>(context).isDarkModeOn
                          ? "Zu dunkel?"
                          : "Zu hell?",
                      style: themeData.textTheme.headline1.copyWith(
                        fontWeight: FontWeight.w600,
                        height: 0.9,
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      Provider.of<AppState>(context).isDarkModeOn
                          ? "Lass die Sonne aufgehen"
                          : "Lass es Nacht werden",
                      style: themeData.textTheme.bodyText1.copyWith(
                        height: 0.9,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const ThemeSwitcher()
                  ],
                ),
              ),
            ),
          ),
        
      ),
    );
  }
}
