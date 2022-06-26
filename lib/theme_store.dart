// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme_changer_with_mobx_and_hive/theme.dart';

import 'db.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  @observable
  ThemeMode themeMode = ThemeMode.dark;

  @computed
  ThemeMode get _themeMode => themeMode;

  @observable
  ThemeData theme = AppTheme.darkTheme;

  @computed
  ThemeData get _theme => theme;

  @action
  void switchTheme(ThemeMode mode) {
    themeMode = mode;
    theme = mode == ThemeMode.dark ? AppTheme.darkTheme : AppTheme.lightTheme;
    bool th = mode == ThemeMode.dark ? true : false;
    db.updateTheme(th);
  }
}
