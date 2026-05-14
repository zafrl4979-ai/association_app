import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'screens/splash_screen.dart';
import 'services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    
      // تهيئة Firebase
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
              );
                
                  // تهيئة الإشعارات
                    await NotificationService.initialize();
                      
                        runApp(const MyApp());
                        }

                        class MyApp extends StatelessWidget {
                          const MyApp({super.key});

                            @override
                              Widget build(BuildContext context) {
                                  return MaterialApp(
                                        debugShowCheckedModeBanner: false,
                                              title: 'جمعية عشاق المستقبل',
                                                    theme: ThemeData(
                                                            brightness: Brightness.light,
                                                                    primaryColor: const Color(0xff1e3a8a),
                                                                            hintColor: const Color(0xfff59e0b),
                                                                                    fontFamily: GoogleFonts.cairo().fontFamily,
                                                                                            appBarTheme: const AppBarTheme(
                                                                                                      backgroundColor: Color(0xff1e3a8a),
                                                                                                                foregroundColor: Colors.white,
                                                                                                                          centerTitle: true,
                                                                                                                                    elevation: 0,
                                                                                                                                            ),
                                                                                                                                                    elevatedButtonTheme: ElevatedButtonThemeData(
                                                                                                                                                              style: ElevatedButton.styleFrom(
                                                                                                                                                                          backgroundColor: const Color(0xff1e3a8a),
                                                                                                                                                                                      foregroundColor: Colors.white,
                                                                                                                                                                                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                                                                                                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                                                                                                                            borderRadius: BorderRadius.circular(12),
                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                  inputDecorationTheme: InputDecorationTheme(
                                                                                                                                                                                                                                                                            border: OutlineInputBorder(
                                                                                                                                                                                                                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                            focusedBorder: OutlineInputBorder(
                                                                                                                                                                                                                                                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                                                                                                                                                                                                                                                                    borderSide: const BorderSide(color: Color(0xff1e3a8a), width: 2),
                                                                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                                                                                  darkTheme: ThemeData(
                                                                                                                                                                                                                                                                                                                                                                          brightness: Brightness.dark,
                                                                                                                                                                                                                                                                                                                                                                                  primaryColor: const Color(0xff1e3a8a),
                                                                                                                                                                                                                                                                                                                                                                                          hintColor: const Color(0xfff59e0b),
                                                                                                                                                                                                                                                                                                                                                                                                  fontFamily: GoogleFonts.cairo().fontFamily,
                                                                                                                                                                                                                                                                                                                                                                                                          appBarTheme: const AppBarTheme(
                                                                                                                                                                                                                                                                                                                                                                                                                    backgroundColor: Color(0xff0f172a),
                                                                                                                                                                                                                                                                                                                                                                                                                              centerTitle: true,
                                                                                                                                                                                                                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                  themeMode: ThemeMode.system,
                                                                                                                                                                                                                                                                                                                                                                                                                                                        home: const SplashScreen(),
                                                                                                                                                                                                                                                                                                                                                                                                                                                            );
                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                              }