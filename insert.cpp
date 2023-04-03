#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define fl(n) for (int i = 0; i < n; i++)
#define flj(n) for (int j = 0; j < n; j++)
int main()
{

    ll x, y, z, a, b, c, ans, count = 0, index, value;
    cin >> x;
    ll arr[x + 1];
    fl(x)
    {
        cin >> arr[i];
        cout << arr[i] << " ";
    }
    cout<<endl;
    cin >> index >> value;
    for (int i = x; i > index; i--)
        arr[i] = arr[i - 1];

    arr[index] = value;
    fl(x+1)
    {
        cout<<arr[i]<<" ";       
    }

    return 0;
}