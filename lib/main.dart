import 'core/lib.dart';

void main() async {
  await Hive.initFlutter();
  Box<dynamic> box = await Hive.openBox("azkadev");

  // set status bar transparant
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  List user = box.get('user', defaultValue: []);

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignPage(box: box),
    ),
  );
  /*
  if (user.isNotEmpty) {
    for (var i = 0; i < user.length; i++) {
      // ignore: non_constant_identifier_names
      Map loop_data = user[i];
      try {
        if (loop_data["sign"]) {
          return runApp(
            MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MainHomePage(
                box: box,
                userData: loop_data,
              ),
            ),
          );
        }
      } catch (e) {
        return runApp(
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignPage(box: box),
          ),
        );
      }
    }

    return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignPage(box: box),
      ),
    );
  } else {
    return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignPage(box: box),
      ),
    );
  }
  */
}
