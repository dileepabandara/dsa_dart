Node? head;

class Node {
  int? data;
  Node? next;

  Node(int? d, Node? t) {
    this.data = d;
    this.next = t;
  }
}

void main() {
  head = Node(1, null);
  Node? node2 = Node(2, null);
  Node? node3 = Node(3, null);

  head!.next = node2;
  node2.next = node3;

  print("--------- Original LikedList ---------");
  display(head);
  print("--------- Add First (23) ---------");
  addFirst(23);
  display(head);
  print("--------- Add Last (46) ---------");
  addLast(46);
  display(head);
  print("--------- Insert After (2, 52) ---------");
  insertAfter(2, 52);
  display(head);
  print("--------- Insert Before (2, 31) ---------");
  insertBefore(2, 31);
  display(head);
}

void addFirst(int item) {
  head = Node(item, head);
}

void addLast(int item) {
  if (head == null) {
    addFirst(item);
  } else {
    Node tmp = head!;
    while (tmp.next != null) {
      tmp = tmp.next!;
    }
    tmp.next = new Node(item, null);
  }
}

void insertAfter(int key, int toInsert) {
  Node tmp = head!;
// ignore: unnecessary_null_comparison
  while (tmp != null && tmp.data != key) {
    tmp = tmp.next!;
  }
// ignore: unnecessary_null_comparison
  if (tmp != null) {
    tmp.next = new Node(toInsert, tmp.next);
  }
}

void insertBefore(int key, int toInsert) {
  Node tmp = head!;
  Node? prev = null;
// ignore: unnecessary_null_comparison
  while (tmp != null && tmp.data != key) {
    prev = tmp;
    tmp = tmp.next!;
  }
  if (tmp.data == key && prev == null) {
    addFirst(toInsert);
  }
// ignore: unnecessary_null_comparison
  else if (tmp != null) {
    prev!.next = new Node(toInsert, tmp);
  }
}

void display(Node? currentNode) {
  try {
    while (currentNode != null) {
      print("Data ${currentNode.data}");
      currentNode = currentNode.next;
    }
  } catch (e) {
    print("Exception: $e");
  }
}
