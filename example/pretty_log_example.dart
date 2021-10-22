import 'package:pretty_log/pretty_log.dart';

void main() {
  [
    EscapeCommand.black,
    EscapeCommand.blue,
    EscapeCommand.cyan,
    EscapeCommand.green,
    EscapeCommand.magenta,
    EscapeCommand.red,
    EscapeCommand.white,
    EscapeCommand.yellow
  ].forEach((element) {
    print('Hello Vim'.color(element));
  });

  print('我是'.red(reset: false));
  print('VIM');
  print('大师'.yellow());
  print('OK');
}
