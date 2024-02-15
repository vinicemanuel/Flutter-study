import 'package:flutter/material.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({Key? key, required Widget child}) : 
  super(
    key: key, 
    child: child,
    notifier: ValueNotifier(0)
    );

  int? get value => notifier?.value;

  void increment() {
    notifier?.value += 1;
  }

  static HomeController? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>();
  }
}