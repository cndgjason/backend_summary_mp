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
      },
      navigatorObservers: [MPCore.getNavigationObserver()],
    );
  }
}
