import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterBlocStart>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(const CounterBlocLoaded(counter: 0));
    });

    on<CounterBlocReset>((event, emit) async {
      emit(CounterBlocLoading());
      await Future.delayed(const Duration(milliseconds: 1500));
      emit(const CounterBlocLoaded(counter: 0));
    });
    on<CounterBlocIncrement>((event, emit) async {
      if (state is CounterBlocLoaded) {
        final counter = (state as CounterBlocLoaded).counter;
        emit(CounterBlocLoading());
        // await Future.delayed(const Duration(milliseconds: 500));
        emit(CounterBlocLoaded(counter: counter + event.counter));
      }
    });
  }
}
