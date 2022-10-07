import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      backgroundColor: Colors.white,
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //横轴三个子widget
              childAspectRatio: 1.0 //宽高比为1时，子widget
          ),
          children:<Widget>[
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
            MPIcon(MaterialIcons.person_outline),
          ]
      )
    );
  }
}

