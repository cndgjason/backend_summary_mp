import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 44,
            alignment: Alignment.centerLeft,
            child: Text('Index - $index'),
          );
        },
        itemCount: 60,
      ),
    );
  }
}

