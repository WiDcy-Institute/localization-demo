
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {

  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }

  @override
  Widget build(BuildContext context) {


    print("Current Language ${context.locale}");

    return Scaffold(
      appBar: AppBar(
        title: Text("language".tr(), style: TextStyle(fontFamily: 'NotoSansKhmer'),),
      ),
      body: ListView(
        children: [
            Card(
              elevation: 5,
              child: ListTile(
                title: Text("english".tr(), style: TextStyle(fontFamily: 'NotoSansKhmer'),),
                trailing: Checkbox(
                  value: context.locale == Locale("en","US"),
                  onChanged: (value){
                    context.setLocale(Locale("en","US"));
                  },
                ),
              ),
            ),
          Card(
            elevation: 5,
            child: ListTile(
              title: Text("khmer".tr(), style: TextStyle(fontFamily: 'NotoSansKhmer'),),
              trailing: Checkbox(
                value: context.locale == Locale("km", "KH"),
                onChanged: (value){
                  context.setLocale(Locale("km","KH"));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
