import 'log_data.dart';
import 'logger.dart';

class LoggerPrefix extends Logger {
  LoggerPrefix(this.prefix, [Logger? subLogger]) : super(subLogger);

  String prefix;

  @override
  void log(LogData data) =>
      subLogger?.log(data.copyWith(title: '$prefix: ${data.title}'));

  LoggerPrefix withSuffix(String s) => LoggerPrefix('$prefix$s', subLogger);
  LoggerPrefix withPrefix(String s) => LoggerPrefix('$s$prefix', subLogger);
}
