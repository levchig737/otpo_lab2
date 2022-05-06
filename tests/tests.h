#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>


//char* filename = "input.txt";


extern "C"{
#include "text/_text.h"
#include "common.h"
}


TEST(load, suite1)
{
    text txt = create_text();
    char *filename = INPUTDIR "/input.txt";
    load(txt, filename);

    std::ifstream f;
    std::string output;
    node *current = txt->begin;

    EXPECT_NE(txt->begin, nullptr);
    EXPECT_NE(txt->end, nullptr);

    while (std::getline(f, output))
    {
        EXPECT_EQ(current->contents, output);
        current = current->next;
    }
    remove_all(txt);
}

TEST(load, suite2) {
    text txt = create_text();
    char *filename = INPUTDIR "/no_file.txt";

    std::string output_text = "The file " INPUTDIR "/no_file.txt cannot be opened\n";
    testing::internal::CaptureStdout();

    load(txt, filename);

    std::string text = testing::internal::GetCapturedStdout();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(save, suite1)
{
    text txt = create_text();
    char *filename = INPUTDIR "/test.txt";

    load(txt, filename);
    save(txt, "result.txt");

    std::ifstream f;
    f.open(filename);
    std::ifstream cur_f;
    cur_f.open("result.txt");
    std::string s;
    std::string cur_s;
    while(std::getline(f, s) && std::getline(cur_f, cur_s))
    {
        EXPECT_EQ(s, cur_s);
    }
    EXPECT_TRUE(std::getline(f, s) || std::getline(cur_f, cur_s));
    f.close();
    cur_f.close();
    remove_all(txt);
}




#endif // EQTEST_H
