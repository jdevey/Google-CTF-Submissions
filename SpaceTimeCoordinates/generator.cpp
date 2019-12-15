#define _CRT_SECURE_NO_WARNINGS

#include <math.h>
#include <algorithm>
#include <chrono>
#include <iostream>
#include <map>
#include <memory>
#include <queue>
#include <set>
#include <string>
#include <utility>
#include <vector>
#include <cstring>

using namespace std;

typedef long long ll;
typedef unsigned long long ull;

ll seed = 0;

ll real_rightshift(ll n, int amt) {
	ull ret;
	memcpy(&ret, &n, 8);
	ret >>= amt;
	return ret;
}

ll real_leftshift(ll n, int amt) {
	ull ret;
	memcpy(&ret, &n, 8);
	ret <<= amt;
	return ret;
}

ll getRemainder(ll a, ll b) {
	ull usable_a;
	memcpy(&usable_a, &a, 8);
	__int128_t product = usable_a;
	product *= b;
	__int128_t max_64 = 1LL << 32;
	max_64 *= 1LL << 32;
	//ll ret = product / max_64;
	//cout << "product " << ret << endl;
	return product / max_64;
}

ll next_destination() {
	ll rdx = seed;
	ll rax = 25214903917;
	rax *= rdx;
	ll rcx = rax + 11;
	rdx = 65537;
	rax = rcx;
	cout << "pre " << rdx << " " << rax << endl;
	ll overflow = getRemainder(rax, rdx);
	cout << "overflow: " << overflow << endl;
	rax *= rdx;
	rdx = overflow;
	rax = rcx;
	rax -= rdx;
	rax = real_rightshift(rax, 1);
	rax += rdx;
	rax = real_rightshift(rax, 47);
	rdx = rax;
	rdx = real_leftshift(rdx, 48);
	rdx -= rax;
	rax = rcx;
	rax -= rdx;
	seed = rax;
	return seed;
}

int main(int argc, char** argv) {
/*
	ull ov = 0;
	__builtin_umulll_overflow   (2855177458954775339LL, 65537LL, &ov);
	//__builtin_smulll_overflow  (2855177458954775339LL, 65537LL, &ov);
	cout << ov << endl;
*/
	seed = argc > 1 ? stoll(argv[1]) : 1000000000;

	cout << next_destination() << endl;

	return 0;
}
