import 'package:flutter/material.dart';

class Bubble extends StatefulWidget {
  final bool mine;
  final int? index;
  const Bubble({Key? key, required this.mine, this.index}) : super(key: key);

  @override
  _BubbleState createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.mine ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: widget.mine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0, top: 16.0, left: 16.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(28.0),
                topRight: const Radius.circular(28.0),
                bottomLeft: Radius.circular(widget.mine ? 28.0 : 3.0),
                bottomRight: Radius.circular(widget.mine ? 3.0 : 28.0),
              ),
              color: widget.mine ? Colors.blueAccent : const Color(0xFFF0F0F5),
            ),
            child: Text(
              'What is that? ${widget.index}',
              style: TextStyle(
                color: widget.mine ? Colors.white : Colors.black,
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: widget.mine ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                if(widget.mine) const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Icon(
                    Icons.access_time,
                    size: 12.0,
                    color: Colors.blueAccent,
                  ),
                ),
                const Text(
                  '11:20 AM',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
