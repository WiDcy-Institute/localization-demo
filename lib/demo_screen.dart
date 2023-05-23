import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_demo2/language_screen.dart';

class DemoScreen extends StatefulWidget {

  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appName".tr(), style: TextStyle(fontFamily: 'NotoSansKhmer'),),
      ),
      body: Center(
        child: Text("welcome".tr(), style: TextStyle(fontFamily: 'NotoSansKhmer'),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.language),
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  LanguageScreen()));
        },
      ),
    );
  }
}
