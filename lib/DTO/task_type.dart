import 'package:doroco/DTO/task.dart';

class TaskType {
  final int id;
  final String description, name;

  TaskType(this.id, this.description, this.name);

  TaskType.fromJson(Map<String, dynamic> json)
      : id = json[TaskFields.id],
        name = json[TaskFields.name],
        description = json[TaskFields.description];
  Map<String, dynamic> toJson() => {
        TaskFields.id: id,
        TaskFields.name: name,
        TaskFields.description: description
      };

}
