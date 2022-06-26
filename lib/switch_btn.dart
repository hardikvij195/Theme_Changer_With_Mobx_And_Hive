import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_store.dart';

class SwitchThemeBtn extends StatefulWidget {
  const SwitchThemeBtn({Key? key}) : super(key: key);

  @override
  State<SwitchThemeBtn> createState() => _SwitchThemeBtnState();
}

class _SwitchThemeBtnState extends State<SwitchThemeBtn>
    with TickerProviderStateMixin {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeStore = Provider.of<ThemeStore>(context);
    TabController tabController = TabController(
        length: 2,
        vsync: this,
        initialIndex: themeStore.themeMode.index == 2 ? 0 : 1);

    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Container(
          height: 30,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: TabBar(
            controller: tabController,
            onTap: (index) {
              if (index == 0) {
                themeStore.switchTheme(ThemeMode.dark);
              } else {
                themeStore.switchTheme(ThemeMode.light);
              }
            },
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Theme.of(context).backgroundColor),
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).backgroundColor,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 12,
              // fontFamily: "audiowide",
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              // fontFamily: "audiowide",
            ),
            tabs: const [
              Tab(text: "Dark"),
              Tab(text: "Light"),
            ],
          ),
        ),
      ),
    );
  }
}
