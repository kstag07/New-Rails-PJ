module StoresHelper
    
    def short_descrip store
    truncate store.description, length: 50
        end
end
