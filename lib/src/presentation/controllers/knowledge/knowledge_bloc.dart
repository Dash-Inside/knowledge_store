import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:knowledge/core/firebase/firebase.dart';

part 'knowledge_event.dart';
part 'knowledge_state.dart';

class KnowledgeBloc extends Bloc<KnowledgeEvent, KnowledgeState> {
  KnowledgeBloc() : super(InitialKnowledgeState()) {
    on<InitKnowledgeEvent>(_onInitKnowledgeEvent);

    add(InitKnowledgeEvent());
  }

  FutureOr<void> _onInitKnowledgeEvent(
    InitKnowledgeEvent event,
    Emitter<KnowledgeState> emit,
  ) async {
    try {
      await FirebaseI.init();
      emit(LoadedKnowledgeState());
    } catch (_) {
      emit(FailedKnowledgeState());
    }
  }
}
