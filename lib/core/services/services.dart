import 'package:get_it/get_it.dart';
import 'package:knowledge/src/presentation/controllers/knowledge/knowledge_bloc.dart';

final GetIt services = GetIt.I;

Future<void> initServices() async {
  services.registerLazySingleton<KnowledgeBloc>(
    () => KnowledgeBloc(),
  );
}
