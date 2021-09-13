import 'package:digikala/module/home/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    AppView(),
  );
}

class AppView extends StatefulWidget {
  AppView({
    Key? key,
  }) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            cupertinoOverrideTheme: CupertinoThemeData(
              brightness: Brightness.dark,
            ),
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            textTheme: TextTheme(
              headline1: _textStyle(weight: FontWeight.w400, size: 96),
              headline2: _textStyle(weight: FontWeight.w400, size: 60),
              headline3: _textStyle(weight: FontWeight.w400, size: 48),
              headline4: _textStyle(weight: FontWeight.w400, size: 34),
              headline5: _textStyle(weight: FontWeight.w400, size: 24),
              headline6: _textStyle(weight: FontWeight.w700, size: 21),
              subtitle1: _textStyle(weight: FontWeight.w400, size: 17),
              subtitle2: _textStyle(weight: FontWeight.w500, size: 15),
              bodyText1: _textStyle(weight: FontWeight.w700, size: 17),
              bodyText2: _textStyle(weight: FontWeight.w400, size: 15),
              caption: _textStyle(weight: FontWeight.w400, size: 13),
              button: _textStyle(weight: FontWeight.w700, size: 15),
              overline: _textStyle(weight: FontWeight.w400, size: 11),
            ).apply(bodyColor: Colors.black).apply(fontFamily: "IranYekan"),
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            }),
          ),
          child: child!,
        );
      },

      // Use this widget to replace all fonts with body default
      home: HomeScreen(),
    );
  }

  TextStyle _textStyle({
    required FontWeight weight,
    required double size,
  }) {
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
    );
  }
}
