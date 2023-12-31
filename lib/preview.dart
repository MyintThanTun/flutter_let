import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class PreviewScreen extends StatelessWidget {
  final String title;
  final Widget ui;
  final String path;

  const PreviewScreen({required this.title,required this.ui ,required this.path,super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        title: Text(title),
        centerTitle: true,
      ),
      body: WidgetWithCodeView(
        filePath: path,
        child: ui,
      ),
    );
  }
}
