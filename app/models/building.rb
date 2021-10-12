class Building < ApplicationRecord
    has_many :apartments

    
    before_validation(:cambiar_minusculas)
    
    validates :nombre, uniqueness: true
    validates :nombre, presence: true

    validates :direccion, presence: true

    validates :ciudad, presence: true




    private

    def cambiar_minusculas
        self.nombre.downcase!
        self.direccion.downcase!
        self.ciudad.downcase!
        
    end
    
end
