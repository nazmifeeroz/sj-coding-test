# SJ Coding Test (Robo Students)

## About Robo Students
- I thought it will be fun to add robot students as the samples to use in this app!

- [x] As a user, I should be able to list all students in the school, so that I can see their names
![list students](https://ukkaashafood.com/after-seed.png)
- [x] As a user, I should be able to click on a student's name in the list, so that I can see the name, student number and faculty of the student in the student details page
![see profile](https://ukkaashafood.com/profile-page.png)
- [x] As a user, I should be able to click on the "Download PDF" button in the student details page, so that I can download a pdf copy of the student's details

### BONUS
- [x] As a user, I should be able to see the QR code for the student number in the PDF, so that I can scan it
![see profile](https://ukkaashafood.com/pdf-screen.png)

## Running the app
Seeds are built for fast setup. Simply run:

```shell
rails db:seed
```
![empty db](https://ukkaashafood.com/empty-db.png)

30 robo students will be created with its own unique picture! (Check out https://robohash.org/)

## Rspec Test
- Index Page is rendered to display all students.
- Show Page is rendered to display a student profile.
