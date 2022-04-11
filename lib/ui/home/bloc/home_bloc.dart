import 'dart:async';
import 'package:amosov/domain/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late final UserRepository userRepository;
  HomeBloc(this.userRepository) : super(HomeWaiting()) {
    on<HomeEvent>((event, emit) async {
      if (event is PressLangStat) {
        emit(StatePress());
      }
      if (event is PressNo) {
        emit(StatePress());
      }
      if (event is PressYes) {
        emit(StatePress());
      }
      if (event is PressCifra) {
        emit(StatePress());
      }
      if (event is PressDel) {
        emit(StatePress());
      }
      if (event is PressHelp) {
        userRepository.addHint();
        emit(StatePress());
      }
      if (event is PressEnter) {
        emit(StatePress());
      }
      emit(HomeWaiting());
    });
  }
}

class Secundomer {
  late DateTime _initialTime;
  Timer? _timer;
  Duration _elapsed = Duration.zero;
  run() {
    _initialTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      final now = DateTime.now();
      _elapsed = now.difference(_initialTime);
    });
  }

  Duration stop() {
    _timer!.cancel();

    return _elapsed;
  }
}
