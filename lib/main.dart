import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tut_componentes/src/page/alert_page.dart';
import 'package:tut_componentes/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('es','ES'), // Spanish
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Calling: ${settings.name}');
        return MaterialPageRoute(builder: (ctx) => AlertPage());
      },
    );
  }
}
