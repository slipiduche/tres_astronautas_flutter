import 'package:test/test.dart';
import 'package:tres_astronautas_flutter/providers/auth_provider.dart';
import 'package:tres_astronautas_flutter/share_prefs/user_preferences.dart';

void main() async {
  group('Auth login', () {
    final prefs = UserPreferences();
    prefs.initPrefs();
    final auth = AuthProvider();

    test('Invalid user - fail test', () async {
      //given a invalid user
      String email = 'alejandr@orbittas.com', password = '12345678';
      final login = await auth.login(email, password);

      expect(login, {"ok": false, "message": 'not allow'});
    });
    test('Valid user - succes test', () async {
      //given a invalid user
      String email = 'alejandro@orbittas.com', password = '12345678';
      final login = await auth.login(email, password);
      //{"ok":true, "token":"tokenstring"}
      final success = login['token'] != null && login['ok'] == true;

      expect(success, true);
    });
  });
}
