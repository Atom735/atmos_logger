/// Структура лог файла
class LogData {
  const factory LogData(DateTime time, int level, String type, String title,
      [String body]) = LogData._;
  const LogData._(this.time, this.level, this.type, this.title,
      [this.body = '']);

  /// Метка времени лога
  final DateTime time;

  /// Уровень сообщения
  final int level;

  /// Тип сообщения
  final String type;

  /// Заголовок сообщения
  final String title;

  /// Подробные данные сообщения
  final String body;

  LogData copyWith({
    DateTime? time,
    int? level,
    String? type,
    String? title,
    String? body,
  }) =>
      LogData(
        time ?? this.time,
        level ?? this.level,
        type ?? this.type,
        title ?? this.title,
        body ?? this.body,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LogData &&
        other.time == time &&
        other.level == level &&
        other.type == type &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode => Object.hash(time, level, type, title, body);
}
