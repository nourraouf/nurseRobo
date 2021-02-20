import 'package:doroco/DTO/person.dart';

class PatientMate extends Person {
  final String patient;
  final int mobile;

  PatientMate(int id, String image, int user, List<int> accessedTasks,
      this.mobile, this.patient)
      : super(id, image, user, accessedTasks);
  PatientMate.fromJson(Map<String, dynamic> json)
      : mobile = json[PersonFields.mobile],
        patient = json[PersonFields.patient],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.mobile: mobile,
        PersonFields.accessedTasks: accessedTasks,
        PersonFields.patient: patient
      };
}
