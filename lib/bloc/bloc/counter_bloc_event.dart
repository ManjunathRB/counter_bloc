part of 'counter_bloc_bloc.dart';

@immutable
abstract class CounterBlocEvent extends Equatable {
  const CounterBlocEvent();
  @override
  List<Object> get props => [];
}

class CounterBlocStart extends CounterBlocEvent {}

class CounterBlocReset extends CounterBlocEvent {}

class CounterBlocIncrement extends CounterBlocEvent {
  final int counter = 1;
}
