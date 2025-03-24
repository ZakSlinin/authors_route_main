import 'package:author_route_main/repositories/authors_routes/abstract_routes_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_screen_event.dart';
part 'search_screen_state.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBloc(this.routesRepository) : super(SearchScreenInitial()) {
    on<LoadSearchScreen>((event, emit) async {
      final routes = await routesRepository.getRoute();
    });
  }

  final AbstractRoutesRepository routesRepository;
}