class NotificationModel {
      String id;
        String userId;
          String title;
            String body;
              String type;
                Map<String, dynamic>? data;
                  bool isRead;
                    DateTime createdAt;

                      NotificationModel({
                          required this.id,
                              required this.userId,
                                  required this.title,
                                      required this.body,
                                          required this.type,
                                              this.data,
                                                  this.isRead = false,
                                                      required this.createdAt,
                                                        });

                                                          Map<String, dynamic> toMap() {
                                                              return {
                                                                    'id': id,
                                                                          'userId': userId,
                                                                                'title': title,
                                                                                      'body': body,
                                                                                            'type': type,
                                                                                                  'data': data,
                                                                                                        'isRead': isRead,
                                                                                                              'createdAt': createdAt.toIso8601String(),
                                                                                                                  };
                                                                                                                    }

                                                                                                                      factory NotificationModel.fromMap(Map<String, dynamic> map) {
                                                                                                                          return NotificationModel(
                                                                                                                                id: map['id'] ?? '',
                                                                                                                                      userId: map['userId'] ?? '',
                                                                                                                                            title: map['title'] ?? '',
                                                                                                                                                  body: map['body'] ?? '',
                                                                                                                                                        type: map['type'] ?? 'system',
                                                                                                                                                              data: map['data'],
                                                                                                                                                                    isRead: map['isRead'] ?? false,
                                                                                                                                                                          createdAt: map['createdAt'] != null 
                                                                                                                                                                                    ? DateTime.parse(map['createdAt']) 
                                                                                                                                                                                              : DateTime.now(),
                                                                                                                                                                                                  );
                                                                                                                                                                                                    }
                                                                                                                                                                                                    }
}