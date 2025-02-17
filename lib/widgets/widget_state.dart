import 'package:flutter/material.dart';
import 'package:multi_player/utils.dart';

mixin LifecycleMixin<T extends StatefulWidget>
    on State<T>, WidgetsBindingObserver {
  @mustCallSuper
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @mustCallSuper
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @mustCallSuper
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    kLogger.d('AppLifecycleState: $state');
    super.didChangeAppLifecycleState(state);
  }
}
