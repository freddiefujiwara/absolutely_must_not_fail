User = describe 'User', () ->
    property 'name', String
    property 'password', String
Post = describe 'Post', () ->
    property 'title', String
    property 'content', String
    property 'createdAt', Date
Result = describe 'Result', () ->
    property 'lastBuild', Integer
    property 'lastUnsuccessfulBuild', Integer
