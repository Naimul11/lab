//job sequencing
#include <bits/stdc++.h>
using namespace std;

int visited[1000];

int main()
{
    vector<pair<int, int>> v;
    int n;
    cout << "Enter n: ";
    cin >> n;
    int a, b;
    for (int i = 0; i < n; i++)
    {
        cout << "Enter a,b: ";
        cin >> a >> b;
        v.push_back(make_pair(b, a));
    }

    sort(v.rbegin(), v.rend());

    int total = 0;

    for (int i = 0; i < n; i++)
    {
        int val = v[i].second;
        if (visited[val - 1] == 0)
        {
            visited[val - 1] = 1;
            total += v[i].first;
        }
        else
        {
            int repos = val - 1;
            while (repos != -1)
            {
                if (visited[repos] == 0)
                {
                    visited[repos] = 1;
                    total += v[i].first;
                    break;
                }
                repos--;
            }
        }
    }
    cout << "Max Profit: " << total << endl;
}



