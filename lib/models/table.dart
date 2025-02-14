import 'package:cowork/models/chair.dart';

class Table{
  String id;
  String name;
  int total_number_of_chairs;
  List<Chair> Chaires;
  Table(
  {
    required this.id,
    required this.name,
    required this.total_number_of_chairs,
    required this.Chaires,
}
      );
}