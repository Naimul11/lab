#include <bits/stdc++.h>
using namespace std;
#define Size 100
vector<int> graph[Size];
int visited[Size];

// pre
void graphTraversal(int node)
{
    visited[node] = 1;
    cout << node << " ";
    for (int child : graph[node])
    {
        if (visited[child] == 0)
        {
            graphTraversal(child);
        }
    }
}

// post
void graphTraversal(int node)
{
    visited[node] = 1;

    for (int child : graph[node])
    {
        if (visited[child] == 0)
        {
            graphTraversal(child);
        }
    }
    cout << node << " ";
}

// inorder
void graphTraversal(int node)
{
    visited[node] = 1;
    for (int child : graph[node])
    {
        if (visited[child] == 0)
        {
            graphTraversal(child);
            break;
        }
    }

    cout << node << " ";

    for (int child : graph[node])
    {
        if (visited[child] == 0)
        {
            graphTraversal(child);
        }
    }
}

int main()
{
    int n, a, b, rootnode;

    cout << "How many inputs: ";
    cin >> n;
    cout << "Enter the rootnode ";
    cin >> rootnode;
    for (int i = 1; i < n; i++)
    {
        cin >> a >> b;
        graph[a].push_back(b);
        graph[b].push_back(a);
    }
    cout << "Pre-order Traversal Output: \n";
    graphTraversal(rootnode);
}