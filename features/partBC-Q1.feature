Feature: Assignment 9

    # Scenario: correct non-zero number of books found by author
    #     Given I have the following books in the store
    #         | title                                | author      |
    #         | The Devil in the White City          | Erik Larson |
    #         | The Lion, the Witch and the Wardrobe | C.S. Lewis  |
    #         | In the Garden of Beasts              | Erik Larson |
    #     When I search for books by author 'Erik Larson'
    #     Then I find 2 books

    # Scenario: correct non-zero number of books found by author
    #     Given I have the following books in the store
    #         | title                                | author      |
    #         | The Devil in the White City          | Erik Larson |
    #         | The Lion, the Witch and the Wardrobe | C.S. Lewis  |
    #         | In the Garden of Beasts              | Erik Larson |
    #     When I search for books by author 'C.S. Lewis'
    #     Then I find 1 book

    Scenario Outline: correct non-zero number of books found by author
        Given I have the following books in the store
            | title                                | author      |
            | The Devil in the White City          | Erik Larson |
            | The Lion, the Witch and the Wardrobe | C.S. Lewis  |
            | In the Garden of Beasts              | Erik Larson |
        When I search for books by author "<author>"
        Then I find <count> books
        Examples:
            | author      | count |
            | Erik Larson | 2     |
            | C.S. Lewis  | 1     |