#include <bits/stdc++.h>
using namespace std;

template<typename... Args>
void print(Args&&... args) {
    (cout << ... << forward<Args>(args));
}
bool is_valid(const string& name) {
    if (name == "Steven Alvin Christian")
        return true;
    print("\e[1;31m[Error] You are not Steven Alvin Christian!\e[0m\n");
    return false;
}
void life_plan() {
    const vector<pair<string, string>> plan = {
        {"Academic", "Achieve and maintain a high GPA by consistent study using various resources."},
        {"Building Relationships", "Actively engage in organizations to develop leadership skills and expand my network."},
        {"Compete to Excel", "Participate in competitions, such as GEMASTIK, ICPC, COMPFEST, etc., to gain technical expertise and earn certifications."},
        {"Internships and Volunteering", "Use platforms like LinkedIn to find internships and volunteer opportunities, gain experience, and create a portfolio for personal branding."},
        {"!STAY HEALTHY!", ""}
    };
    print("\n\e[1;35m                                               </>\e[0m \e[1;94m Steven Alvin Christian's Life Plan\e[0m\e[1;35m  </>                                               \e[0m\n");
    print("\e[1;32m------------------------------------------------------------------------------------------------------------------------------------------\e[0m\n");

    for (size_t i = 0; i < plan.size(); ++i) {
        if (plan[i].second.empty()) {
            print("\n", i + 1, ". ", "\033[1;33m" + plan[i].first + "\033[0m\n");
            continue;
        }
        print("\n", i + 1, ". ", "\033[1;33m" + plan[i].first + "\033[1m", ":\n   \033[0;37m", plan[i].second, "\033[0m\n");
    }

    print("\n\033[1;32m------------------------------------------------------------------------------------------------------------------------------------------\033[0m\n");
}

int main() {
    string input;
    do {
        print("\033[1;36mEnter your full name: \033[0m");
        getline(cin, input);
    } while (!is_valid(input));

    life_plan();
    return 0;
}



