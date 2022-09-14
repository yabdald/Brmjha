part of 'dice_cubit.dart';

class DiceState {
  DiceState({this.leftDiceNumber = 1, this.rightDiceNumber = 1});
  final int leftDiceNumber;
  final int rightDiceNumber;

  DiceState copywith({int? leftD, int? rightD}) {
    return DiceState(
        leftDiceNumber: leftD ?? leftDiceNumber,
        rightDiceNumber: rightD ?? rightDiceNumber);
  }
}
