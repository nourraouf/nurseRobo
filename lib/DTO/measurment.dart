
class Measurment {
  final String timeDate, patient;
  final int id;
  final num  heartRate, tempreature, pressure;
  Measurment(this.id, this.heartRate, this.tempreature, this.pressure,
      this.timeDate, this.patient);
  Measurment.fromJson(Map<String, dynamic> json)
      : id = json[MeasurmentFields.id],
        tempreature = json[MeasurmentFields.tempreature],
        heartRate = json[MeasurmentFields.heartRate],
        pressure = json[MeasurmentFields.pressure],
        timeDate = json[MeasurmentFields.timeDate],
        patient = json[MeasurmentFields.patient];

  Map<String, dynamic> toJson() => {
        MeasurmentFields.heartRate: heartRate,
        MeasurmentFields.tempreature: tempreature,
        MeasurmentFields.pressure: pressure,
        MeasurmentFields.patient: patient
      };
}
class MeasurmentFields {
  static const id = 'id';
  static const heartRate = 'heart_rate';
  static const tempreature = 'tempreture';
  static const pressure = 'pressure';
  static const timeDate = 'time_date';
  static const patient = 'patient';
}