import { Given, When, Then } from '@cucumber/cucumber'
import { expect } from 'chai'

//let dt 
interface Book { title: string, author: string }

let books: Book[] = []
let searchRes: Book[] = []

Given('I have the following books in the store', (dataTable) => {
    //dt= dataTable
    books = dataTable.hashes()
})

When('I search for books by author {string}', (author) => {
    searchRes = books.filter(book => book.author === author)
})
Then('I find {int} book(s)', (count) => {
    console.log(searchRes)
    expect(searchRes.length).to.equal(count)
})
