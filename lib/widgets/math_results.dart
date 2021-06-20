import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_result.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl =
      Get.find<CalculatorController>(); // Busca la instancia ja creada
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.firstNumber}'),
            SubResult(text: '${calculatorCtrl.secondNumber}'),
            SubResult(text: '${calculatorCtrl.operation}'),
            LineSeparator(),
            MainResultText(text: '${calculatorCtrl.mathResult}'),
          ],
        ));
  }
}
