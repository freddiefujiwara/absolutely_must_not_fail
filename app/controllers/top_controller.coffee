load 'application'

action 'index', () -> 
    render
        title: "top#index"

action 'api', ->
    Result.all (err, results) =>
        @results = results
        @title   = "api"
        render()

