class AppConstants {
      static const String appName = 'جمعية عشاق المستقبل';
        static const String appVersion = '1.0.0';
          
            // أرقام المسؤولين
              static const String adminPhone = "+967774466541";
                static const List<String> adminPhones = [
                    "+967774466541",
                        "+967777844778",
                          ];
                            
                              // إعدادات Firebase Collections
                                static const String usersCollection = 'users';
                                  static const String transactionsCollection = 'transactions';
                                    static const String complaintsCollection = 'complaints';
                                      static const String notificationsCollection = 'notifications';
                                        
                                          // أنواع المستخدمين
                                            static const String roleAdmin = 'admin';
                                              static const String roleAgent = 'agent';
                                                static const String roleContributor = 'contributor';
                                                  
                                                    // حالات المستخدم
                                                      static const String statusActive = 'active';
                                                        static const String statusInactive = 'inactive';
                                                          static const String statusPending = 'pending';
                                                            static const String statusSuspended = 'suspended';
                                                              
                                                                // أنواع المعاملات
                                                                  static const String transactionPayment = 'payment';
                                                                    static const String transactionDeposit = 'deposit';
                                                                      static const String transactionWithdraw = 'withdraw';
                                                                        static const String transactionFee = 'fee';
                                                                          
                                                                            // أنواع الإشعارات
                                                                              static const String notificationPayment = 'payment';
                                                                                static const String notificationComplaint = 'complaint';
                                                                                  static const String notificationSystem = 'system';
                                                                                    static const String notificationAlert = 'alert';
                                                                                      
                                                                                        // إعدادات التطبيق
                                                                                          static const double minPaymentAmount = 100;
                                                                                            static const double maxPaymentAmount = 100000;
                                                                                              static const double agentCommission = 0.02; // 2%
                                                                                                
                                                                                                  // رسائل الخطأ
                                                                                                    static const String errorNetwork = 'خطأ في الاتصال بالشبكة';
                                                                                                      static const String errorAuth = 'خطأ في المصادقة';
                                                                                                        static const String errorGeneral = 'حدث خطأ غير متوقع';
                                                                                                          static const String errorInsufficientBalance = 'الرصيد غير كافٍ';
                                                                                                            static const String errorUserNotFound = 'المستخدم غير موجود';
                                                                                                            }
}