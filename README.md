#Towards An Open Source Quora


## Data Modeling

###Questions/Answers/Votes

A question has many answers.
An answer belongs to a question.
An answer has many votes.
A vote belongs to an answer.

###Users

A question belongs to a user.
An answer belongs to a user.
A user has many questions.
A user has many answers.
A user has many votes. (but presumeably one per question)

###Question Fields:
Title
Query
Time / Date

###Answer Fields
Response
Time / Date

## Potential Gems

* acts_as_votable
* simple_form
* haml

## Existing Open Source Solutions / Research

http://shapado.com/
http://blog.codinghorror.com/code-its-trivial/

## Future Development

* Admin panel for monitoring, deleting, and moderating questions and answers.
* Connection to user accounts.
* Rich text editor for questions and answers.
* Discussion threads around questions?
* Javascript framework for dynamic question/answering filtering with votes/etc.

## Trello Board




