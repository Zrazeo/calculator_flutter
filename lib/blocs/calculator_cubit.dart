import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorState {
  CalculatorState({
    this.calculation = '',
    this.result = 0.0,
  });

  final String calculation;
  final double result;

  CalculatorState copyWith({
    String? calculation,
    double? result,
  }) {
    return CalculatorState(
      calculation: calculation ?? this.calculation,
      result: result ?? this.result,
    );
  }
}

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void updateCalculation(String value) {
    final updatedCalculation = state.calculation + value;
    emit(state.copyWith(calculation: updatedCalculation));
  }

  void clearValues() {
    emit(state.copyWith(calculation: '', result: 0));
  }

  void deleteLastCharacter() {
    if (state.calculation.isNotEmpty) {
      final updatedCalculation =
          state.calculation.substring(0, state.calculation.length - 1);
      emit(state.copyWith(calculation: updatedCalculation));
    }
  }

  void calculateResult() {
    final String expression = state.calculation;

    try {
      final Parser p = Parser();
      final Expression exp = p.parse(expression);
      final ContextModel cm = ContextModel();

      final double calculatedResult = exp.evaluate(EvaluationType.REAL, cm);

      emit(state.copyWith(result: calculatedResult));
    } catch (e) {
      emit(state);
    }
  }

  void toggleSign() {
    final newResult = -state.result;
    emit(state.copyWith(result: newResult));
  }
}
