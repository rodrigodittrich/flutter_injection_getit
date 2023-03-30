abstract class NamesRepository {
  final List<String> names;
  
  NamesRepository({
    required this.names,
  });

  List<String> fetch();
}

class LocalNamesRepository extends NamesRepository {
  final bool Function(String) filter;
  
  LocalNamesRepository({
    required this.filter,
  }) : super(names: ["Rodrigo", "Jonas", "Dittrich"]);
  
  @override
  List<String> fetch() {
    return names.where(filter).toList();
  }

}