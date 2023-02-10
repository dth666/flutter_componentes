import 'package:flutter/material.dart';
import 'package:tut_componentes/src/page/alert_page.dart';
import 'package:tut_componentes/src/page/animated_container.dart';
import 'package:tut_componentes/src/page/avatar_page.dart';
import 'package:tut_componentes/src/page/card_page.dart';
import 'package:tut_componentes/src/page/home_page.dart';
import 'package:tut_componentes/src/page/input_page.dart';
import 'package:tut_componentes/src/page/listview_page.dart';
import 'package:tut_componentes/src/page/slider_page.dart';

Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    //Otra forma de organizar el problema es que los ombres quedan regados por las clases
    AvatarPage.pageName: (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}