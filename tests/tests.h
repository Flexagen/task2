#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>

char *filename = "input.txt";

extern "C"{
#include "text.h"
#include "_text.h"
#include "common.h"
}

TEST(Load_file, test1)
{
    text txt = create_text();
    load(txt, filename);
}

TEST (Save_file, test1)
{
    text txt = create_text();
    testing::internal::CaptureStderr();
    save(txt, "test_save.txt");
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "The text doesn't exist\n");
}

TEST (Save_file, test2)
{
    text txt = create_text();
    load(txt, filename);
    testing::internal::CaptureStderr();
    save(txt, "test_open.txt");
    std::string output = testing::internal::GetCapturedStderr();
}

TEST(Cursor_position, test1)
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
    move_cursor(txt, 2, 3);
}

#endif // EQTEST_H
