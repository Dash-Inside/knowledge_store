part of 'knowledge_bloc.dart';

abstract class KnowledgeState extends Equatable {
  const KnowledgeState();

  @override
  List<Object> get props => [];
}

class InitialKnowledgeState extends KnowledgeState {}

class LoadedKnowledgeState extends KnowledgeState {}

class FailedKnowledgeState extends KnowledgeState {}
