import 'package:components_lab/src/pages/animated_container_page.dart';
import 'package:components_lab/src/pages/input_page.dart';
import 'package:components_lab/src/pages/listview_page.dart';
import 'package:components_lab/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'container': (context) => AnimatedContainerPage(),
    'inputs': (context) => InputPage(),
    'sliders': (context) => SliderPage(),
    'list': (context) => ListViewPage()
  };
}
