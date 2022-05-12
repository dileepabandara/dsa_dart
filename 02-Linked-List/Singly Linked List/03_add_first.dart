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

  print("--------- Before Add First ---------");
  display(head);
  print("--------- After Add First ---------");
  addFirst(23);
  display(head);
}

void addFirst(int item) {
  head = Node(item, head);
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
