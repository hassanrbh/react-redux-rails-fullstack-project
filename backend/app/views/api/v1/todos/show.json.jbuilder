json.key_format! :downcase
json.ignore_nil! true
json.key_format! ->(key) {"_"+key}
json.set! @todo.id do
    json.comments do
        json.extract! @todo, :id, :title, :body
    end
    json.todos do
        json.extract! @todo, :id, :title, :body
    end
    json.person partial: "api/v1/todos/person", params: {todo: @todo}
end


json.comments do
    json.child! { json.content "hello" }
    json.child! { json.content "world"}
end

