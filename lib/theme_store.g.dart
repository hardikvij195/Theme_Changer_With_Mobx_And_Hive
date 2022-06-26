// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStore on _ThemeStore, Store {
  Computed<ThemeMode>? _$_themeModeComputed;

  @override
  ThemeMode get _themeMode =>
      (_$_themeModeComputed ??= Computed<ThemeMode>(() => super._themeMode,
              name: '_ThemeStore._themeMode'))
          .value;
  Computed<ThemeData>? _$_themeComputed;

  @override
  ThemeData get _theme => (_$_themeComputed ??=
          Computed<ThemeData>(() => super._theme, name: '_ThemeStore._theme'))
      .value;

  late final _$themeModeAtom =
      Atom(name: '_ThemeStore.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$themeAtom = Atom(name: '_ThemeStore.theme', context: context);

  @override
  ThemeData get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(ThemeData value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  late final _$_ThemeStoreActionController =
      ActionController(name: '_ThemeStore', context: context);

  @override
  void switchTheme(ThemeMode mode) {
    final _$actionInfo = _$_ThemeStoreActionController.startAction(
        name: '_ThemeStore.switchTheme');
    try {
      return super.switchTheme(mode);
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode},
theme: ${theme}
    ''';
  }
}
