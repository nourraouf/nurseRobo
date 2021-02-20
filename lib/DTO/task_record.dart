
class TaskRecord {
  final int id, robot, person;
  final String taskName, dateTime, status, arg1, arg2, arg3, arg4, arg5, arg6;

  TaskRecord(
      this.id,
      this.robot,
      this.person,
      this.taskName,
      this.dateTime,
      this.status,
      this.arg1,
      this.arg2,
      this.arg3,
      this.arg4,
      this.arg5,
      this.arg6);

  TaskRecord.fromJson(Map<String, dynamic> json)
      : id = json[TaskRecordFields.id],
        robot = json[TaskRecordFields.robot],
        person = json[TaskRecordFields.person],
        taskName = json[TaskRecordFields.taskName],
        status = json[TaskRecordFields.status],
        dateTime = json[TaskRecordFields.dateTime],
        arg1 = json[TaskRecordFields.arg1],
        arg2 = json[TaskRecordFields.arg2],
        arg3 = json[TaskRecordFields.arg3],
        arg4 = json[TaskRecordFields.arg4],
        arg5 = json[TaskRecordFields.arg5],
        arg6 = json[TaskRecordFields.arg6];

  Map<String, dynamic> toJson() => {
        TaskRecordFields.id: id,
        TaskRecordFields.robot: robot,
        TaskRecordFields.person: person,
        TaskRecordFields.taskName: taskName,
        TaskRecordFields.status: status,
        TaskRecordFields.dateTime: dateTime,
        TaskRecordFields.arg1: arg1,
        TaskRecordFields.arg2: arg2,
        TaskRecordFields.arg3: arg3,
        TaskRecordFields.arg4: arg5,
        TaskRecordFields.arg6: arg6
      };
}


class TaskRecordFields {
  static const id = 'id';
  static const taskName = 'Task_name';
  static const dateTime = 'date_time';
  static const status = 'status';
  static const arg1 = 'arg1';
  static const arg2 = 'arg2';
  static const arg3 = 'arg3';
  static const arg4 = 'arg4';
  static const arg5 = 'arg5';
  static const arg6 = 'arg6';
  static const robot = 'robot';
  static const person = 'person';
}
