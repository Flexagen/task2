#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>

char *filename = "input.txt";

extern "C"{
#include <text.h>
#include <_text.h>
#include <common.h>
}

TEST(cursor_pos, sute2)
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
