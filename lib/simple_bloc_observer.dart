import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onEvent(BlocBase bloc, Object? event) {
    print('onEvent: $event');
  }

  @override
  void onTransition(BlocBase bloc, Transition transition) {
    print('onTransition: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError: $error');
    print('stackTrace: $stackTrace');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('onChange: $change');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('onCreate: $bloc');
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
  }

  @override
  void onDone(
    Bloc bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    // TODO: implement onDone
  }
}
