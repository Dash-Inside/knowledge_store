part of 'knowledge_bloc.dart';

abstract class KnowledgeEvent extends Equatable {
  const KnowledgeEvent();

  @override
  List<Object> get props => [];
}

class InitKnowledgeEvent extends KnowledgeEvent {}
