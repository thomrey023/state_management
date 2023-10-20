// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:state_management/core/providers/input_output_provider.dart';
import 'package:state_management/utilities/constants/themes_constants.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var inputOutputRead = context.read<InputOutput>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: CColors.trueWhite,
        appBar: AppBar(),
        body: Container(
          color: CColors.trueWhite,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Center(child: Text('INPUT')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: InputOutputWidget(
                        inputOutput: inputOutputRead,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputOutputWidget extends StatelessWidget {
  final InputOutput inputOutput;
  const InputOutputWidget({
    Key? key,
    required this.inputOutput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inputOutputWatch = context.watch<InputOutput>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          inputOutputWatch.input.toString(),
          style: const TextStyle(
              color: CColors.primaryTextLightColor, fontSize: 30.0),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => inputOutputWatch.increment(),
                  icon: const Icon(Icons.add_rounded,
                      size: 30.0, color: CColors.secondaryButtonLightColor)),
              IconButton(
                  onPressed: () => inputOutputWatch.decrement(),
                  icon: const Icon(Icons.remove,
                      size: 30.0, color: CColors.secondaryButtonLightColor)),
            ],
          ),
        ),
      ],
    );
  }
}
