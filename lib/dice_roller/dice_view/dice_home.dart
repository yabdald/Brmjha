import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dice_roller2/dice_roller/bloc_logic/dice_cubit.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: () {
                context.read<DiceCubit>().changeDiceFace();
              },
              child: BlocBuilder<DiceCubit, DiceState>(builder: (_, count) {
                return Image.asset('images/${count.leftDiceNumber}.png');
              }),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                context.read<DiceCubit>().changeDiceFace();
              },
              child: BlocBuilder<DiceCubit, DiceState>(builder: (_, count) {
                return Image.asset('images/${count.rightDiceNumber}.png');
              }),
            ),
          ),
        ],
      ),
    );
  }
}
