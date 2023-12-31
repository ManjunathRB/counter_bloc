part of 'counter_bloc_bloc.dart';

abstract class CounterBlocState extends Equatable {
  const CounterBlocState();
  @override
  List<Object> get props => [];
}

class CounterBlocInitial extends CounterBlocState {}

class CounterBlocLoading extends CounterBlocState {}

class CounterBlocLoaded extends CounterBlocState {
  const CounterBlocLoaded({required this.counter});
  final int counter;

  @override
  List<Object> get props => [counter];
}
