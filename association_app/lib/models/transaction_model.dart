class TransactionModel {
      String id;
        String fromUserId;
          String toUserId;
            String? agentId;
              double amount;
                String type;
                  String? notes;
                    DateTime timestamp;
                      String? receiptUrl;
                        String? qrCode;
                          bool isSynced;

                            TransactionModel({
                                required this.id,
                                    required this.fromUserId,
                                        required this.toUserId,
                                            this.agentId,
                                                required this.amount,
                                                    required this.type,
                                                        this.notes,
                                                            required this.timestamp,
                                                                this.receiptUrl,
                                                                    this.qrCode,
                                                                        this.isSynced = true,
                                                                          });

                                                                            Map<String, dynamic> toMap() {
                                                                                return {
                                                                                      'id': id,
                                                                                            'fromUserId': fromUserId,
                                                                                                  'toUserId': toUserId,
                                                                                                        'agentId': agentId,
                                                                                                              'amount': amount,
                                                                                                                    'type': type,
                                                                                                                          'notes': notes,
                                                                                                                                'timestamp': timestamp.toIso8601String(),
                                                                                                                                      'receiptUrl': receiptUrl,
                                                                                                                                            'qrCode': qrCode,
                                                                                                                                                  'isSynced': isSynced,
                                                                                                                                                      };
                                                                                                                                                        }

                                                                                                                                                          factory TransactionModel.fromMap(Map<String, dynamic> map) {
                                                                                                                                                              return TransactionModel(
                                                                                                                                                                    id: map['id'] ?? '',
                                                                                                                                                                          fromUserId: map['fromUserId'] ?? '',
                                                                                                                                                                                toUserId: map['toUserId'] ?? '',
                                                                                                                                                                                      agentId: map['agentId'],
                                                                                                                                                                                            amount: (map['amount'] ?? 0).toDouble(),
                                                                                                                                                                                                  type: map['type'] ?? '',
                                                                                                                                                                                                        notes: map['notes'],
                                                                                                                                                                                                              timestamp: map['timestamp'] != null 
                                                                                                                                                                                                                        ? DateTime.parse(map['timestamp']) 
                                                                                                                                                                                                                                  : DateTime.now(),
                                                                                                                                                                                                                                        receiptUrl: map['receiptUrl'],
                                                                                                                                                                                                                                              qrCode: map['qrCode'],
                                                                                                                                                                                                                                                    isSynced: map['isSynced'] ?? true,
                                                                                                                                                                                                                                                        );
                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                              String get formattedAmount {
                                                                                                                                                                                                                                                                  return '${amount.toStringAsFixed(2)} ريال';
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                        String get formattedDate {
                                                                                                                                                                                                                                                                            return '${timestamp.year}/${timestamp.month}/${timestamp.day} - ${timestamp.hour}:${timestamp.minute}';
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              }
}