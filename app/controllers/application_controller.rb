class ApplicationController < ActionController::Base
    def hello
        render html: "Aloha, World!"
    end
end
