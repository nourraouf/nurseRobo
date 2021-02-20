import 'package:doroco/DTO/person.dart';

class Receptionist extends Person {
  final reception;

  Receptionist(
      int id, String image, int user, List<int> accessedTasks, this.reception)
      : super(id, image, user, accessedTasks);
  Receptionist.fromJson(Map<String, dynamic> json)
      : reception = json[PersonFields.reception],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.accessedTasks: accessedTasks,
        PersonFields.reception: reception,
      };
}
