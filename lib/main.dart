import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_demo2/demo_screen.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final langSupport = [
    Locale("en","US"),
    Locale("km","KH")
  ];

  final easyLocalization = EasyLocalization(
    child: AppDemo(),
    supportedLocales: langSupport ,
    path: 'asset/lang',
    fallbackLocale: Locale("en"),
  );

  runApp(easyLocalization);
}

class AppDemo extends StatelessWidget {

  const AppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: DemoScreen(),
    );
  }
}
