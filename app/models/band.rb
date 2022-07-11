class Band < ApplicationRecord
    has_many :concerts

    enum band_type: %i[band girl_band boy_band]
end
