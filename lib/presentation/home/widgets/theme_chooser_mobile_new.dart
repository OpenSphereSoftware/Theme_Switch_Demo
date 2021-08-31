
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingdemo/app_state.dart';
import 'package:themingdemo/presentation/home/widgets/moon.dart';
import 'package:themingdemo/presentation/home/widgets/star.dart';
import 'package:themingdemo/presentation/home/widgets/sun.dart';
import 'package:themingdemo/presentation/home/widgets/theme_switch.dart';

class ThemeChooserMobileNew extends StatelessWidget {
  const ThemeChooserMobileNew({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppState>(context);
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
            height: 600,
            // width: sizingInformation.width - 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: themeProvider.isDarkModeOn
                      ? const [
                          Color(0xFF94A9FF),
                          Color(0xFF6B66CC),
                          Color(0xFF200F75),
                        ]
                      : [
                          Color(0xDDFFFA66),
                          Color(0xDDFFA057),
                          Color(0xDD940B99)
                        ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
              borderRadius: BorderRadius.circular(15),
              /*color: Provider.of<ThemeService>(context).isDarkModeOn
                  ? Theme.of(context).appBarTheme.color
                  : Colors.white,*/
            ),

            child: Stack(
              children: [
                Positioned(
                    top: 70,
                    right: 50,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Star())),
                Positioned(
                    top: 150,
                    left: 60,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Star())),
                Positioned(
                    top: 40,
                    left: 200,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Star())),
                Positioned(
                    top: 50,
                    left: 50,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Star())),
                Positioned(
                    top: 100,
                    right: 200,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Star())),
                //

                AnimatedPositioned(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                    top: themeProvider.isDarkModeOn ? 100 : 130,
                    right: themeProvider.isDarkModeOn ? 100 : -40,
                    child: AnimatedOpacity(
                        duration: Duration(milliseconds: 250),
                        opacity: themeProvider.isDarkModeOn ? 1 : 0,
                        child: Moon())),
                AnimatedPadding(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.only(
                      top: themeProvider.isDarkModeOn ? 160 : 100),
                  child: Center(
                    child: Sun(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[600],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                          height: 20,
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
                          height: 30,
                        ),
                        const ThemeSwitcher()
                      ],
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
}
