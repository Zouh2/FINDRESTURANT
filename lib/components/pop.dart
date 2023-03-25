import 'package:flutter/material.dart';
class PopupWidget extends StatelessWidget {
  final Widget title;
  final Widget child;
  final VoidCallback? onClose;

  const PopupWidget({Key? key, required this.title, required this.child, this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: DefaultTextStyle.merge(style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), child: title)),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: onClose ?? () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}
