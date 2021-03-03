part of 'counter_cubit.dart';

class CounterState {
  int counterValue;
  String lastAction;

  // Constructor

  CounterState({
    // initialized with counter mandatory
    @required this.counterValue,
    @required this.lastAction,
  });
}
