import 'package:flutter_bloc/flutter_bloc.dart';

class ModeCubitState {
  ModeCubitState({
    required this.mode,
  });
  final bool mode;
}

class ModeCubit extends Cubit<ModeCubitState> {
  ModeCubit()
      : super(
          ModeCubitState(
            mode: true,
          ),
        );

  void toggleMode() {
    emit(
      ModeCubitState(
        mode: !state.mode,
      ),
    );
  }
}
