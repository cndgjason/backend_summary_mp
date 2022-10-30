import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return MPScaffold(
        appBar: MPAppBar(context: context,backgroundColor:Colors.grey,),
        body:
        ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) =>
                Container(
                  child: GestureDetector(
                    child: MPIcon(MaterialIcons.person_outline),
                    onTap: (){
                      Navigator.of(context).pushNamed('/detail');
                    },
                  ),
                )
        )
    );
  }
}

