# json.key_format! :downcase
# @todos.each do |todo|
#     json.set! todo.id do
#         json.set! todo.id do
#             json.extract! todo, :id, :title, :body
#             json.todos do
#                 json.extract! todo, :id, :title, :body
#             end
#         end
#     end
# end
allIds = [];
@todos.each do |todo|
    json.posts do
        json.byId do
            json.set! todo.id do
                json.extract! todo, :id, :title, :body
            end
        end
        json.allIdsOrd do
            allIds.push(todo.id)
            json.array! allIds
        end
    end
end

# {
#     posts: {
#         byId: {
#             "1": {
#                 id: 1,
#                 title: "",
#                 body: "",
#             }
#         },
#         allIds: [] 
#     },
#     comments: {
#         byId: {
#             "1": {
                
#             } 
#         }
#     }
# }