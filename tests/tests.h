#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>

char* filename = "input.txt";

extern "C"{
#include "text/text.h"
#include "text/_text.h"
#include "common.h"
}




TEST(load, suite1)
{
    text txt = create_text();
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

    std::string output_text = "The file no_file.txt cannot be opened\n";
    testing::internal::CaptureStdout();

    load(txt, "no_file.txt");

    std::string text = testing::internal::GetCapturedStdout();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(move_cursor, suite1)
{
    text txt = create_text();
    load(txt, filename);

    move_cursor(txt, 2, 3);
    EXPECT_EQ(txt->cursor->position, 3);
    int k = 1;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }

    EXPECT_EQ(k, 2);
    remove_all(txt);
}

TEST(move_cursor, suite2)
{
    text txt = create_text();
    load(txt, filename);

    move_cursor(txt, -3, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 1;
    node *current = txt->begin;

    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }

    EXPECT_EQ(k, 1);
    remove_all(txt);
}

TEST(move_cursor, suite3)
{
    text txt = create_text();
    load(txt, filename);

    move_cursor(txt, 15, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 1;
    node *current = txt->begin;

    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }

    EXPECT_EQ(k, txt->length);
    remove_all(txt);
}

TEST(move_cursor, suite4)
{
    text txt = create_text();
    load(txt, filename);

    move_cursor(txt, 2, -5);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 1;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, 2);
    remove_all(txt);
}

TEST(move_cursor, suite5)
{
    text txt = create_text();
    load(txt, filename);

    move_cursor(txt, 2, 30);
    EXPECT_EQ(txt->cursor->position, 30);
    int k = 1;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, 2);
    remove_all(txt);
}

TEST(move_cursor, suite6) {
    text txt = create_text();

    std::string output_text = "The file no_text.txt cannot be opened\n";
    testing::internal::CaptureStdout();

    load(txt, "no_text.txt");
    move_cursor(txt, 2, 3);

    std::string text = testing::internal::GetCapturedStdout();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}



#endif // EQTEST_H
