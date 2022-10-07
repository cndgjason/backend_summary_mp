import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';
import './second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPMainTabView(
      tabs: [
        MPMainTabItem(
          activeTabWidget: Container(
            width: 44,
            height: 44,
            child: renderIcon(
              icon: MaterialIcons.home,
              title: 'Home',
              actived: true,
            ),
          ),
          inactiveTabWidget: Container(
            width: 44,
            height: 44,
            child: renderIcon(
              icon: MaterialIcons.home,
              title: 'Home',
              actived: false,
            ),
          ),
          builder: (context) => _HomePage(),
        ),
        MPMainTabItem(
          activeTabWidget: Container(
            width: 44,
            height: 44,
            child: renderIcon(
              icon: MaterialIcons.light,
              title: 'Second',
              actived: true,
            ),
          ),
          inactiveTabWidget: Container(
            width: 44,
            height: 44,
            child: renderIcon(
              icon: MaterialIcons.light,
              title: 'Second',
              actived: false,
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
    required bool actived,
  }) {
    return Column(
      children: [
        MPIcon(icon, color: actived ? Colors.blue : Colors.grey),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: actived ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _HomePage extends StatelessWidget {
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

class _SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 44,
            alignment: Alignment.centerLeft,
            child: Text('Second - $index'),
          );
        },
        itemCount: 1000,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      name: 'Template',
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/second');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Hello, MPFlutter!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
