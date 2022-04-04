import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;
  CounterBloc() : super(CounterInitial(0)) {
    on<CounterEvent>((event, emit) {
      if (event is Increase) {
        emit(CounterSuccess(count++));
      }
    });
  }
}
