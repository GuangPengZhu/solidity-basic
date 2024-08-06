// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract StructDemo {
    // declare struct type
    struct Person {
        string name;
        int age;
    }
    Person person; //declared but not value
    Person personTow = Person("gopal", 25); //declare with value
    struct Books {
        string bookTitle;
        bool completed;
        // mapping (address => uint) name;
        // Person person;
        // string[] someStrings;
    }
    Books[] public my_books; //declared but not value

    function setvalue() public {
        //  init value
        my_books.push(Books("live in batter life", false));
        my_books.push(Books({bookTitle: "just do it", completed: true}));
        Books memory oneBook;
        oneBook.bookTitle = "beyond yourself";
        oneBook.completed = false;
        my_books.push(oneBook);
    }
}
