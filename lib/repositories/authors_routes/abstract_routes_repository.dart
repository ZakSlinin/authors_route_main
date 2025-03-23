import 'package:author_route_main/repositories/authors_routes/models/authors_route.dart';

abstract class AbstractRoutesRepository {
  Future<List<Routes>> getRoute();
}