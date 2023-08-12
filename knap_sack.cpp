// Greedy Algorithm 0 / 1 knapsack maximum profit
#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n, tweight, profit, weight;
    cout << "Enter knapsack weight\n";
    cin >> tweight;
    cout << "Enter n\n";
    cin >> n;

    vector<pair<int, int>> vec;

    for (int i = 0; i < n; i++)
    {
        cin >> weight >> profit;
        vec.push_back(make_pair(profit, weight));
    }

    sort(vec.rbegin(), vec.rend());

    int mxprofit = 0;

    for (auto i : vec)
    {
        if (i.second <= tweight)
        {
            tweight -= i.second;
            mxprofit += i.first;
        }
    }
    cout << "maxprofit:" << mxprofit << endl;
}