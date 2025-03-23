import 'package:author_route_main/repositories/authors_routes/abstract_routes_repository.dart';
import 'package:dio/dio.dart';

import 'models/authors_route.dart';

class RoutesRepository implements AbstractRoutesRepository {
  RoutesRepository({required this.dio});

  final Dio dio;

  @override
  Future<List<Routes>> getRoute() async {
    final response = await dio.get('http://localhost:8001/routes');

    final data = response.data as Map<String, String>;
    final routesList =
        data.entries
            .map((e) => Routes(name: e.key, description: (e.value)))
            .toList();

    return routesList;
  }
}
