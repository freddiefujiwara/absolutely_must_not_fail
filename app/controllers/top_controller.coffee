load 'application'

action 'index', () -> 
    render
        title: "絶対に間違えてはいけない"

action 'api', ->
    Result.all (err, results) =>
        send results[0]

