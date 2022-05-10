class Node {
  int? data;
  Node? next;

  Node(int? d) {
    data = d;
    next = null;
  }
}

void main() {
  Node? head = Node(1);
  Node? node2 = Node(2);
  Node? node3 = Node(3);

  head.next = node2;
  node2.next = node3;

  display(head);
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
