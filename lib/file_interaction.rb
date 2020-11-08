class FileInteraction
    attr_reader: file_name
    
    def initialize()
        @file_name = 

    end
    
    #WHEN GENERATED USER TERMINAL INTERACTION, THE FILE LENGTH IS THE *FIRST* THING YOU GETS.CHOMP, THE *SECOND* WOULD BE THE NAME
    def create_file_confirmation
        "Created '#{@file_name}' containing #{@file.length} characters."
    end

end