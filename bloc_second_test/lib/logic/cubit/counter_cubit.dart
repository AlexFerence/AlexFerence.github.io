import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // Setting the initial value of the Cubit
  CounterCubit()
      : super(CounterState(counterValue: 0, lastAction: 'increment'));

  // Functions that modify the state
  void increment() => emit(
        CounterState(
          counterValue: state.counterValue + 1,
          lastAction: 'increment',
        ),
      );
  void decrement() {
    if (state.counterValue > 0) {
      emit(
        CounterState(
          counterValue: state.counterValue - 1,
          lastAction: 'decrement',
        ),
      );
    }
  }
}
