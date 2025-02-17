import 'package:logger/logger.dart';

/// Logger紀錄過濾器
final kLogger = Logger(
  printer: PrettyPrinter(
    dateTimeFormat: DateTimeFormat.dateAndTime,
    methodCount: 8,
    errorMethodCount: 8,
  ),
);
