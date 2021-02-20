import 'package:doroco/DTO/person.dart';

class Patient extends Person {
  final String checkIn, checkOut, gender, nationality;
  final int mobile, age, stayRoom;

  Patient(
      int id,
      String image,
      int user,
      List<int> accessedTasks,
      this.checkIn,
      this.checkOut,
      this.gender,
      this.nationality,
      this.mobile,
      this.age,
      this.stayRoom) : super(id,image,user,accessedTasks);

  Patient.fromJson(Map<String, dynamic> json)
      : age = json[PersonFields.age],
        checkIn = json[PersonFields.checkIn],
        checkOut = json[PersonFields.checkOut],
        gender = json[PersonFields.gender],
        nationality = json[PersonFields.nationality],
        mobile = json[PersonFields.mobile],
        stayRoom = json[PersonFields.stayRoom],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        PersonFields.user: user,
        PersonFields.stayRoom: stayRoom,
        PersonFields.accessedTasks: accessedTasks,
        PersonFields.age: age,
        PersonFields.mobile: mobile,
        PersonFields.nationality: nationality,
        PersonFields.checkIn: checkIn,
        PersonFields.checkOut: checkOut,
        PersonFields.gender: gender
      };
}
