class EscapeCommand {
  const EscapeCommand(String color) : command = '$_startingMaker$color';

  final String command;

  static const _startingMaker = '\x1B';
  static const black = EscapeCommand('[30m');
  static const red = EscapeCommand('[31m');
  static const green = EscapeCommand('[32m');
  static const yellow = EscapeCommand('[33m');
  static const blue = EscapeCommand('[34m');
  static const magenta = EscapeCommand('[35m');
  static const cyan = EscapeCommand('[36m');
  static const white = EscapeCommand('[37m');
  static const reset = EscapeCommand('[0m');

  @override
  String toString() => command;
}

extension StringColorX on String {
  String color(EscapeCommand command, {bool reset = true}) {
    return '$command${toString()}${reset ? EscapeCommand.reset : ''}';
  }

  String black({bool reset = true}) => color(EscapeCommand.black, reset: reset);

  String red({bool reset = true}) => color(EscapeCommand.red, reset: reset);

  String green({bool reset = true}) => color(EscapeCommand.green, reset: reset);

  String yellow({bool reset = true}) =>
      color(EscapeCommand.yellow, reset: reset);

  String blue({bool reset = true}) => color(EscapeCommand.blue, reset: reset);

  String magenta({bool reset = true}) =>
      color(EscapeCommand.magenta, reset: reset);

  String cyan({bool reset = true}) => color(EscapeCommand.cyan, reset: reset);

  String white({bool reset = true}) => color(EscapeCommand.white, reset: reset);
}
