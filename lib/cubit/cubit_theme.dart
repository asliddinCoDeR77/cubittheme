import 'package:cubittheme/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppModeCubit extends Cubit<AppMode> {
  AppModeCubit() : super(AppMode.day);

  void toggleMode() {
    emit(state == AppMode.day ? AppMode.night : AppMode.day);
  }
}
