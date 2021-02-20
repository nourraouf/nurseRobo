import 'package:doroco/DTO/person.dart';


class HospitalManager extends Person {
  final int manages, managerOffice;

  HospitalManager(int id, String image, int user, this.manages,
      List<int> accessedTasks, this.managerOffice)
      : super(id, image, user, accessedTasks);
  HospitalManager.fromJson(Map<String, dynamic> json)
      : manages = json[PersonFields.manages],
        managerOffice = json[PersonFields.managerOffice],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.manages: manages,
        PersonFields.accessedTasks: accessedTasks,
        PersonFields.managerOffice: managerOffice
      };
}
