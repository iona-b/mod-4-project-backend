class UserSerializer
    
    def initialize(user_object)
        @user = user_object
    end
     
    def to_serialized_json
        options = {
            include: {
                scores: {
                    except: [:updated_at, :created_at]
                },
            },
            except: [:updated_at, :created_at]
        }
        @user.to_json(options)
    end

end