import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      body: Container(
        child: Text(
          '详细请查看：https://backendsummary.github.io',
          style: TextStyle(fontSize: 18, color: Colors.black)
        ),
      ),
    );
  }
}