#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>

char* filename = "input.txt";

extern "C"{
#include "text.h"
#include "_text.h"
#include "common.h"
}

TEST(Load_file, wrong_file_name)
{
    text txt = create_text();
    // подключаем захват вывода
    testing::internal::CaptureStdout();
    load(txt, "wrong_name.txt");
    //получаем результат
    std::string output = testing::internal::GetCapturedStdout();

    EXPECT_EQ(output, "The file wrong_name.txt cannot be opened\n");
}
TEST(Load_file, default_load)
{
    text txt = create_text();
    testing::internal::CaptureStdout();
    load(txt, "../input/input.txt");
    show(txt);
    std::string output = testing::internal::GetCapturedStdout();

    // читаем ожидаемые строки из файла input.txt
    char *filename = (char *)malloc(sizeof(char) * 1024);
    sprintf(filename, "%s/input.txt", INPUTDIR);
    std::ifstream f(filename);
    free(filename);
    std::string content;
    content.assign( (std::istreambuf_iterator<char>(f) ),
                    (std::istreambuf_iterator<char>()    ) );
    content[content.length()-1] = '|';
    content += "\n";
    EXPECT_EQ(output, content);
}

TEST (Save_file, test1)
{
    text txt = create_text();
    testing::internal::CaptureStderr();
    save(txt, "test_save.txt");
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "The text doesn't exist\n");
}


TEST(Cursor_position, test1)
{
    text txt = create_text();
    load(txt, filename);
    move_cursor(txt, -10, 0);
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
