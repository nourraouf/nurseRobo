import 'package:doroco/DTO/person.dart';

class Nurse extends Person {
  final String startShift, endShift;
  final int department;

  Nurse(int id, String image, int user, this.startShift,
      List<int> accessedTasks, this.endShift, this.department)
      : super(id, image, user, accessedTasks);
  Nurse.fromJson(Map<String, dynamic> json)
      :startShift = json[PersonFields.startShift],
        endShift = json[PersonFields.endShift],
        department = json[PersonFields.department],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.startShift: startShift,
        PersonFields.accessedTasks: accessedTasks,
        PersonFields.endShift: endShift,
        PersonFields.department: department
      };
}
