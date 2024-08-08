// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME_SCREEN = _Paths.HOME_SCREEN;
}

abstract class _Paths {
  _Paths._();
  static const HOME_SCREEN = '/home-screen';
}
