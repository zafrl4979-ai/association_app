import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff1e3a8a);
    static const Color secondary = Color(0xff0f172a);
      static const Color gold = Color(0xfff59e0b);
        static const Color success = Color(0xff10b981);
          static const Color danger = Color(0xffef4444);
            static const Color warning = Color(0xfff59e0b);
              static const Color info = Color(0xff3b82f6);
                static const Color dark = Color(0xff1f2937);
                  static const Color light = Color(0xfff3f4f6);
                    static const Color white = Color(0xffffffff);
                      static const Color black = Color(0xff000000);
                        static const Color gray = Color(0xff9ca3af);
                          
                            static const LinearGradient primaryGradient = LinearGradient(
                                colors: [primary, secondary],
                                    begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                          );
                                            
                                              static const LinearGradient goldGradient = LinearGradient(
                                                  colors: [gold, Color(0xfffbbf24)],
                                                      begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                            );
                                                            }