import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounter extends Cubit<int> {
  //initial value
  CubitCounter() : super(0); //inirtial state

  //events
  void incrementCounter() {
    emit(state + 1);
  }

  void decrementCounter() {
    if (state > 0) {
      emit(state - 1);
    }
  }
}
