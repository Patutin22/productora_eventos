class Band < ApplicationRecord
    has_many :concerts, dependent: :destroy

    enum band_type: %i[band girl_band boy_band]

    def this_month_concerts
        self.concerts.where(date: (Date.today.beginning_of_month)..(Date.today)).size
    end

    def last_concert
        self.concerts.order(:date).last
    end
    
    def last_concert_date
        self.last_concert.date.strftime("%A %d-%B-%Y")
    end

    def most_popular_concert
        self.concerts.maximum(:assistants)
    end
end
