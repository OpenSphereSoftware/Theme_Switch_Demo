
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingdemo/app_state.dart';

class Sun extends StatelessWidget {
  const Sun({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppState>(context);
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.1)
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.1)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.1)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              ),
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: const [Color(0xDDFC554F), Color(0xDDFFF79E)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
