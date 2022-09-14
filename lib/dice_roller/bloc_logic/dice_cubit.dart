import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'dice_state.dart';

class DiceCubit extends Cubit<DiceState> {
  DiceCubit() : super(DiceState());

  void changeDiceFace() {
    emit(state.copywith(
        leftD: Random().nextInt(6) + 1, rightD: Random().nextInt(6) + 1));
  }
}
