import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:mpcore/mpcore.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MPScaffold(
      appBar: MPAppBar(
        context: context,
        backgroundColor:Colors.grey,
        title: Text("ABCDE"),
      ),
      body:Markdown(
        selectable: true,
        data: '## Insert emoji here😀  \n### abc ',
      )
    );
  }
}
