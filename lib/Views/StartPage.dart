import 'package:flutter/material.dart';
import 'package:tatli_cesitleri_270621/Models/PageManagement.dart' as route;
//status bar gizlemek için çağırdığımız kütüphane
import 'package:flutter/services.dart';

import 'Menues/2_Peak.dart';
import 'Menues/3_HomePage.dart';

void main() async {
  //Firebase ile ilgili***
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  //aşağıdaki 3 satır kod statusbar ı transparent hale getiriyor
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));*/
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Argedik',
      theme: ThemeData(
        //appbar alanı
        primaryColor: Colors.green,
        //bazı butonlar, tıklanma efek rengi
        primarySwatch: Colors.blue,
        //floating gibi butonlar
        accentColor: Colors.black,
        scaffoldBackgroundColor: Colors.lightGreenAccent,
        //appbar alanı
        //appBarTheme: AppBarTheme(color: Colors.green),
        //alttaki kodun ne olduğuna bakılacak ***
        //visualDensity: VisualDensity.adaptivePlatformDensity

        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.red),
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white),
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //butonların arkaplan renkleri
            primary: Colors.red,
            //butonların kenarlarında kıvrımlı şekil
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //Uygulama içindeki sayfa isimlerini tanımlıyoruz.
      //initialRoute: "1", tanımlarsak uygulama ilk açıldığında açılacak sayfa olur. "/1" gibi başına slash koymuyoruz cunku geri butonu cıkıyor
      // sadece '/' şeklinde tanımlama yaparsak başlangıç sayfası belirtmiş oluyoruz.
      // aynı zamanda home: kodunu da silmemiz gerekiyor.
      /*routes: {
        Favorites.routeName: (context) => Favorites(),
        Peak.routeName: (context) => Peak(),
        deneme.routeName: (context) => deneme(),
        Society.routeName: (context) => Society(),
        Profiles.routeName: (context) => Profiles(),
      },
        */
      //sayfa geçişlerinde isim hatalıysa yada bir sorun yüzünden istenen sayfaya geçemezse çalışan kod.
      //Hata olduğu için bunla ilgili kod yazılması daha iyi olabilir ***
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => HomePage()),

      home: StartPage(),

      //ilk sayfa
      initialRoute: "/",
      onGenerateRoute: route.generateRoute,

      /*
        //Koşula göre sayfa geçişleri yapmak istiyorsak kullandığımız kod onGenerateRoute
      onGenerateRoute: (settings) {
        // eğer parantezler içindeki değer case'nin karşısındaki değere eşitse çalış
        // default eğer herhangi bir şart sağlanmıyorsa çalışır.
        switch (settings.name) {
          case deneme.routeName:
            return MaterialPageRoute(builder: (context) => deneme());
          default:
            return null;
        }
      },
      */
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //import 'package:flutter/services.dart kütüphanesi sayesinde statusbar(telefonun en üstündeki saat pil vs) gizleme
    SystemChrome.setEnabledSystemUIOverlays([]);
    double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: yukseklik,
        width: genislik,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffffaa00),
              const Color(0xfe79d70f),
              const Color(0xfc79d70f),
            ],
          ),
        ),
        child: Stack(
          children: [
            //Orta kısım görünümü

            Container(
              //genişliği ekrana sığdır.
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 12,
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 18,
                    child: Stack(
                      children: [
                        TextButton(
                          onPressed: () {
                            //Navigator.push a Named eklendiği zaman MaterialApp route kısmında tanımlanan map yapısındaki sayfalara ulaşabiliyoruz.
                            Navigator.pushReplacementNamed(
                                context, route.pageManagement);
                            //MaterialPageRoute(builder: (context) => Favorites()),
                            //Navigator.pushNamed(context, HomePage.routeName);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 66,
                            width: 275,
                            child: Container(
                              width: genislik * 0.4,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Fazla aş ya karın ağrıtır ya da baş.',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        color: const Color(0xffedf4f2),
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //kenarlıklara kıvrım
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(200.0),
                                bottomLeft: Radius.circular(20.0),
                              ),

                              //renk ayarları
                              gradient: RadialGradient(
                                //renk dalgasının x ve y eksenleri
                                //center: Alignment(0.0, 0.0),
                                radius: 2,
                                colors: [
                                  const Color(0xfcf5a31a),
                                  const Color(0xfcd32626)
                                ],
                                //renk tonlarında 0-1 arasındaki duruş yerleri
                                stops: [0.0, 1.0],
                                tileMode: TileMode.mirror,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 8),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Alt kısım görünümü
            Positioned(
              top: yukseklik - 120,
              left: -120,
              child: Image.asset('assets/Materials/Daire.png'),
            ),

            //Üst kısım görünümü
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Image.asset('assets/Materials/Argedik_logo.png'),
            ),
          ],
        ),
      ),
    );
  }
  /* istersek kullanabileceğimiz bi oop yapısı
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  */

}
