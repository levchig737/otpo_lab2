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

TEST(save, suite1)
{
    text txt = create_text();
    load(txt, "test.txt");
    save(txt, "result.txt");

    std::ifstream f;
    f.open("test.txt");
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

TEST(show, suite1) {
    text txt = create_text();

    testing::internal::CaptureStderr();
    show(txt);
    std::string output = testing::internal::GetCapturedStderr();

    EXPECT_EQ(output, "There are already no any lines in the text!\n");

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

    std::string output_text = "There are already no any lines in the text!\n";
    testing::internal::CaptureStderr();

    load(txt, "no_text.txt");
    move_cursor(txt, 2, 3);

    std::string text = testing::internal::GetCapturedStderr();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(showfirstwords, suite1) {
    text txt = create_text();
    load(txt, "no_words.txt");

    std::string output_text = "No words\nNo words\n";
    testing::internal::CaptureStdout();

    showfirstwords(txt);

    std::string text = testing::internal::GetCapturedStdout();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(showfirstwords, suite2) {
    text txt = create_text();
    load(txt, filename);

    std::string output_text = "Hello\nSomething\nSo\nForth\nAnd\n";
    testing::internal::CaptureStdout();

    showfirstwords(txt);

    std::string text = testing::internal::GetCapturedStdout();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(showfirstwords, suite3) {
    text txt = create_text();
    load(txt, "no_text.txt");

    std::string output_text = "There are already no any lines in the text!\n";
    testing::internal::CaptureStderr();

    showfirstwords(txt);

    std::string text = testing::internal::GetCapturedStderr();

    EXPECT_STREQ(text.c_str(), output_text.c_str());
    remove_all(txt);
}

TEST(mwef, suite1)
{
    text txt = create_text();
    load(txt, filename);

    node *current = txt->begin;
    move_cursor(txt, 2, 3);
    mwef(txt);

    int i = 0;
    while(current) {
      i++;
      if (txt->cursor->line == current) {
        break;
      }
      current = current->next;
    }

    EXPECT_EQ(txt->cursor->position, 9);
    EXPECT_EQ(i, 2);


    remove_all(txt);
}

TEST(mwef, suite2)
{
    text txt = create_text();
    load(txt, "no_text.txt");

    std::string output_text = "There are already no any lines in the text!\n";
    testing::internal::CaptureStderr();

    mwef(txt);

    std::string text = testing::internal::GetCapturedStderr();

    EXPECT_STREQ(text.c_str(), output_text.c_str());

    remove_all(txt);
}

TEST(mwef, suite3)
{
    text txt = create_text();
    load(txt, filename);

    node *current = txt->begin;
    mwef(txt);

    int i = 0;
    while(current) {
      i++;
      if (txt->cursor->line == current) {
        break;
      }
      current = current->next;
    }

    EXPECT_EQ(txt->cursor->position, 18);
    EXPECT_EQ(i, 5);


    remove_all(txt);
}

TEST(mwef, suite4)
{
    text txt = create_text();
    load(txt, "no_words.txt");

    node *current = txt->begin;
    move_cursor(txt, 1, 2);
    mwef(txt);

    int i = 0;
    while(current) {
      i++;
      if (txt->cursor->line == current) {
        break;
      }
      current = current->next;
    }

    EXPECT_EQ(txt->cursor->position, 10);
    EXPECT_EQ(i, 2);


    remove_all(txt);
}


#endif // EQTEST_H
