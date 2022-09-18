import 'package:calculator_app/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculator_app/widgets/widgets.dart';

class MathResult extends StatelessWidget {
  final calculatorctrl = Get.find<CalculatorController>();

  MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorctrl.firstNumber}'),
          SubResult(text: '${calculatorctrl.operation}'),
          SubResult(text: '${calculatorctrl.secondNumber}'),
          const LineSeparator(),
          MainResultText(text: '${calculatorctrl.mathResult}'),
        ],
      ),
    );
  }
}
