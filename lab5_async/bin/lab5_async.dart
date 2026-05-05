Future<String> fetchMessage() async {
  await Future.delayed(Duration(seconds: 2));
    return 'Привет из будущего!';
}


void main() async {
try {
  String data = await fetchData();
  print(data);
} catch (e) {
  print('Ошибка: $e');
}
  
  print('Загружаем сообщение...');
  String message = await fetchMessage();
 print(message);
  print('Конец программы');
}

Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Пользователь: Артём';
}

Future<String> fetchAvatar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Аватар: Артём';
}

Future<void> loadProfile() async {
  print('Загружаем профиль...');

  String user = await fetchUser();
  print(user);

  String avatar = await fetchAvatar();
  print(avatar);

  print('Профиль загружен!');
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception(
    'Сервер недоступен!',
  );
}