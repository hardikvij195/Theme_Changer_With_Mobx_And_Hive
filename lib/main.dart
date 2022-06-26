import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_with_mobx_and_hive/page2.dart';
import 'package:theme_changer_with_mobx_and_hive/switch_btn.dart';

import 'db.dart';
import 'theme.dart';
import 'theme_store.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await db.init();
  bool currentTheme = db.getCurrentTheme();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(Provider(
      create: (_) => ThemeStore()
        ..themeMode = currentTheme ? ThemeMode.dark : ThemeMode.light,
      child: const MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeStore = Provider.of<ThemeStore>(context);
    return Observer(
      builder: (context) => MaterialApp(
        title: 'Theme Changer',
        debugShowCheckedModeBanner: false,
        theme: themeStore.themeMode == ThemeMode.dark
            ? AppTheme.darkTheme
            : AppTheme.lightTheme,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MobX Theme Changer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SwitchThemeBtn(),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Page2()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    "Page 2",
                    style: TextStyle(color: Theme.of(context).backgroundColor),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
