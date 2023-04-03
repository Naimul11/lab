#include <bits/stdc++.h>
using namespace std;
#define Size 10
int Queue[Size];
int Front = -1, Rear = -1;

void Enqueue()
{
    int value;
    if (Rear == Size - 1)
        cout << "overflow\n";
    else
    {
        if (Front < 0)
            Front = 0;
        cout << "Enter the value: ";
        cin >> value;
        Rear++;
        Queue[Rear] = value;
    }
}

void Dequeue()
{
    if (Front == -1 || Front > Rear)
        cout << "Underflow\n";
    else
    {
        cout << "Deleted value " << Queue[Front] << endl;
        Front++;
    }
}
void Traverse()
{
    if (Front == -1 or Front > Rear)
        cout << "Queue is empty\n";
    else
    {
        for (int i = Front; i <= Rear; i++)
            cout << Queue[i] << " ";

        cout << endl;
    }
}
int main()
{
    while (1)
    {
        int n;
        cout << "Which Operation do you want to perform: \n 1.Enqueue \n 2.Dequeue \n 3.Traverse \n 4.Exit\n";
        cin >> n;
        if (n == 1)
            Enqueue();
        else if (n == 2)
            Dequeue();
        else if (n == 3)
            Traverse();
        else if (n == 4)
            break;
        else
            cout << "Wrong input\n";
    }
}