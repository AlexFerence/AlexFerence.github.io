import 'package:bloc/bloc.dart';

/// {@template counter_observer}
/// [BlocObserver] for the counter application which
/// observes all [Cubit] state changes.
/// {@endtemplate}

class CounterObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    // handle the onChange logic here
    print('counter observer');
    print('${cubit.runtimeType} $change');
    print('${cubit.runtimeType} ${change.nextState}');
    // super means overriding
    super.onChange(cubit, change);
  }
}
