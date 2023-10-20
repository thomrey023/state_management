import 'package:flutter/material.dart';
import 'package:state_management/utilities/constants/themes_constants.dart';
import 'package:state_management/view/commons/buttons_common.dart';
import 'package:state_management/view/screens/input_screen.dart';
import 'package:state_management/view/screens/output_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      child: Center(child: Text('MAIN')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Center(
                        child: CustomButton(
                            text: 'INPUT',
                            doOnPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const InputScreen()));
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Center(
                        child: CustomButton(
                            text: 'OUTPUT',
                            doOnPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const OutputScreen()));
                            }),
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
