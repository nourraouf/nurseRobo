
 class Person {
  final String image ;
  final int id,user;
  final List<int> accessedTasks;

  Person(
      this.id, this.image, this.user, this.accessedTasks);
  Person.fromJson(Map<String, dynamic> json)
      : id = json[PersonFields.id],
        image = json[PersonFields.image],
        user = json[PersonFields.user],
        accessedTasks = json[PersonFields.accessedTasks];

  Map<String, dynamic> toJson() => {
    PersonFields.user: user,
    PersonFields.accessedTasks: accessedTasks
  };
}
class PersonFields {
  static const id = 'id';
  static const image = 'image';
  static const user = 'user';
  static const manages = 'manages';
  static const accessedTasks = 'acessed_tasks';
  static const department = 'department';
  static const managerOffice = 'manager_office';
  static const startShift = 'start_shift';
  static const endShift = 'end_shift';
  static const age = 'age';
  static const checkIn = 'check_in';
  static const checkOut = 'check_out  ';
  static const gender = 'gender';
  static const nationality = 'nationality';
  static const mobile = 'mobile';
  static const stayRoom = 'stay_room';
  static const patient = 'Patient';
  static const reception = 'reception';
}