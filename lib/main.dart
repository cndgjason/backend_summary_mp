import 'package:backend_summary_mp/page/detail_page.dart';
import 'package:backend_summary_mp/page/list_page.dart';
import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';
import 'page/home_page.dart';

void main() {
  runApp(MyApp());
  MPCore().connectToHostChannel();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPApp(
      title: '后端总结',
      routes: {
        '/': (context) => HomePage(),
        '/list':(context) => ListPage(),
        '/detail':(context) => DetailPage()
      },
      navigatorObservers: [MPCore.getNavigationObserver()],
    );
  }
}
