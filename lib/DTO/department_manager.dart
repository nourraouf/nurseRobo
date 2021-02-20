import 'package:doroco/DTO/person.dart';


class DepartmentManager extends Person {
  final int manages;

  DepartmentManager(
      int id, String image, int user, this.manages, List<int> accessedTasks)
      : super(id, image, user, accessedTasks);
  DepartmentManager.fromJson(Map<String, dynamic> json)
      : manages = json[PersonFields.manages],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.manages: manages,
        PersonFields.user: user,
        PersonFields.accessedTasks: accessedTasks
      };
}
