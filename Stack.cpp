#include <iostream>
using namespace std;
#define size 10
int stack[size];
int top = -1;
void traverse()
{
    for (int i = top; i >= 0; i--)
        cout << stack[i] << " ";
    cout << endl;
}
void pushElement(int value)
{
    if (top == size - 1)
        cout << "Stack Overflow\n";
    else
    {
        top++;
        stack[top] = value;
    }
}

void popElement()
{
    if (top == -1)
        cout << "Stack Undertflow\n";
    else
        top--;
}

int main()
{
    int value, n;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> value;
        pushElement(value);
    }
    for (int i = 0; i < 5; i++)
    {
        popElement();
        traverse();
    }
}