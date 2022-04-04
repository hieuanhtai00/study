part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  CounterInitial(this.count);
  int count;
}

class CounterSuccess extends CounterState {
  CounterSuccess(this.count);
  int count;
}
