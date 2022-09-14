import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dice_roller/bloc_logic/dice_cubit.dart';
import 'dice_roller/dice_view/dice_home.dart';

void main() {
  return runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (_) => DiceCubit(),
          child: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: const Text('Dicee'),
              backgroundColor: Colors.red,
            ),
            body: DicePage(),
          ),
        )),
  );
}
