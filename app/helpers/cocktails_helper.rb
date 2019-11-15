module CocktailsHelper
  IMG_URLS = [
    "https://thelosttikilounge.com/wp-content/uploads/2019/03/navy-grog-rum-drink-original.jpg",
    "https://verytasty.us/assets/uploads/2019/05/Italian-Bellini-667x500.jpg",
    "https://images.unsplash.com/photo-1453824979084-c8fd42932378?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60",
    "https://www.thedrinkblog.com/wp-content/uploads/2018/06/tdb-horchata-1500x1000-768x512.jpg",
    "https://www.thedrinkblog.com/wp-content/uploads/2016/06/tdb-orange-negroni-land.jpg"
  ]

  def add_pics(index)
    IMG_URLS[index]
  end
end
