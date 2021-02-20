import 'package:doroco/DTO/person.dart';


class Doctor extends Person {
  final int department;

  Doctor(
      int id, String image, int user, this.department, List<int> accessedTasks)
      : super(id, image, user, accessedTasks);
  Doctor.fromJson(Map<String, dynamic> json)
      : department = json[PersonFields.department],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.department: department,
        PersonFields.accessedTasks: accessedTasks
      };
}
