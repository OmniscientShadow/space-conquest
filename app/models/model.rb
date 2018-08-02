# def canafford(cost1, cost2, item1, item2)
#     if cost1 < item1 && cost2 < item2
#        return false
#     else
#        return true
#     end
# end

# def resourcechange(resource, session)
#     if resource == "wood"
#         if 1 < session[:hunger] == true
#             session[:wood] += 3
#             session[:hunger] -= 1
#         else
#             puts "you can't afford this right now"
#         end
#     elsif resource == "clay"
#         if 1 < session[:hunger] && 1 < session[:wood] == true
#             session[:clay] += 2
#             session[:hunger] -= 2
#             session[:wood] -= 1
#         end
#     elsif resource == "iron" 
#         if 3 < session[:hunger] && 1 < session[:clay] == true
#             session[:iron] += 1
#             session[:hunger] -= 3
#             session[:clay] -= 1
#         end
#     else
#         return "q"
#     end
   
# end

def resourcechange(resource)
    if resource == "wood"
        return 1
    elsif resource == "clay"
        return 1
    elsif resource == "iron" 
        return 1
    elsif resource == "food" 
        return 1
    else
        return "error :("
    end
   
end
