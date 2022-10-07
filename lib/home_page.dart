import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';
import './summary_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPMainTabView(
      tabs: [
        MPMainTabItem(
          activeTabWidget: Container(
            width: 80,
            height: 80,
            child: renderIcon(
              icon: MaterialIcons.home,
              title: '后端总结',
              isActive: true,
            ),
          ),
          inactiveTabWidget: Container(
            width: 80,
            height: 80,
            child: renderIcon(
              icon: MaterialIcons.home,
              title: '后端总结',
              isActive: false,
            ),
          ),
          builder: (context) => AHomePage(),
        ),
        MPMainTabItem(
          activeTabWidget: Container(
            width: 80,
            height: 80,
            child: renderIcon(
              icon: MaterialIcons.person_outline,
              title: '关于我们',
              isActive: true,
            ),
          ),
          inactiveTabWidget: Container(
            width: 80,
            height: 80,
            child: renderIcon(
              icon: MaterialIcons.person_outline,
              title: '关于我们',
              isActive: false,
            ),
          ),
          builder: (context) => MySecondPage(),
        )
      ],
    );
  }

  Widget renderIcon({
    required String icon,
    required String title,
    required bool isActive}) {
    return Column(
      children: [
        MPIcon(
            icon,
            color: isActive ? Colors.blue : Colors.grey
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isActive ? Colors.blue : Colors.grey
          ),
        ),
      ],
    );
  }
}