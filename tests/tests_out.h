#ifndef TESTS_OUT_H
#define TESTS_OUT_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include<fstream>
#include<string>

const char* filename1 = "input.txt";

#include "text.h"
#include "_text.h"
#include "common.h"

TEST (save, suite1)
{
    text txt = create_text();
    testing::internal::CaptureStderr();
    save(txt, "test_save.txt");
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "The text doesn't exist\n");
}

TEST (save, suite2)
{
    text txt = create_text();
    load(txt, filename1);
    testing::internal::CaptureStderr();
    save(txt, "test_open.txt");
    std::string output = testing::internal::GetCapturedStderr();
}

#endif // TESTS_OUT_H
