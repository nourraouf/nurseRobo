
class Task {
  final int id, taskType;
  final String name;

  Task(this.id, this.taskType, this.name);

  Task.fromJson(Map<String, dynamic> json)
      : id = json[TaskFields.id],
        taskType = json[TaskFields.taskType],
        name = json[TaskFields.name];

  Map<String, dynamic> toJson() =>
      {TaskFields.id: id, TaskFields.taskType: taskType, TaskFields.name: name};
}
class TaskFields {
  static const id = 'id';
  static const name = 'name';
  static const taskType = 'task_type';
  static const description = 'description';
}