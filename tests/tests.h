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
    remove_all(txt);
    //получаем результат
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "The file wrong_name.txt cannot be opened\n");
}

/*
 * Тест пока что не работает в GIT Actions:
 *           не может найти файл input.txt.
 * Локально тест работает при отключении теневой сборки.
 *
TEST(Load_file, default_load)
{
    text txt = create_text();
    testing::internal::CaptureStdout();
    load(txt, filename);
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
*/

TEST (Save_file, emply_txt_structure)
{
    /*
     * Тест на сохранения файла.
     * Структура txt пустая => The text doesn't exist.
     */
    text txt = create_text();
    testing::internal::CaptureStderr();
    save(txt, "test_save.txt");
    remove_all(txt);
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "The text doesn't exist\n");
}

TEST (Save_file, mistake_filaneme)
{
    /*
     * Тест на сохранения файла.
     * Структура txt пустая => The text doesn't exist.
     */

    text txt = create_text();
    append_line(txt, "Example text in line.");
    testing::internal::CaptureStderr();
    save(txt, "");
    remove_all(txt);
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "File  can't be opened\n");
}


TEST (Save_file, default_save)
{
    /*
     * Позитивный тест на сохранения файла.
     */

    text txt = create_text();
    append_line(txt, "Example text in line.");
    testing::internal::CaptureStdout();
    save(txt, "example_result.txt");
    remove_all(txt);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Save file successeed!\n");
}

TEST(Cursor_position, mistake_line_argument_small)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
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
}

TEST(Cursor_position, mistake_line_argument_large)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 100, 0);
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

TEST(Cursor_position, mistake_pos_argument_small)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 2, -10);
    EXPECT_EQ(txt->cursor->position, 0);
    remove_all(txt);
}

TEST(Cursor_position, mistake_pos_argument_large)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 1, 100);
    EXPECT_EQ(txt->cursor->position, 0);
    remove_all(txt);
}

TEST(Cursor_position, default_arguments)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 0, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 0;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, 0);
    remove_all(txt);
}

TEST(Show_text, test)
{
    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    // подключаем захват вывода
    testing::internal::CaptureStdout();
    show(txt);
    //получаем результат
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Example text in line 1.|\n");
    remove_all(txt);
}

TEST(Showtrimmedfromstart, test)
{
    text txt = create_text();
    append_line(txt,"	Hello World");
    append_line(txt, "    Hello");
    append_line(txt, "   World");
    append_line(txt, "		World Hello");
    testing::internal::CaptureStdout();
    show_without_tabulation(txt);
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
#endif // EQTEST_H
