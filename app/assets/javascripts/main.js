$(function(){
  $.ajax({
    url: 'https://api.themoviedb.org/3/search/movie?',
  	data:  {"api_key" : "6187f5c607108a1517d59f4dae103bf7", "query" : "Jack+Reacher"}
  })
  .done(function(data){
    displayMovies(data);
  });

  function displayMovies(data){
    let htmlString = "";

    data["results"].forEach(function(movie){
      htmlString += `<p>${movie["title"]}</p>
                    <p>${movie["overview"]}</p>
                    `
    });

    $("#movies").append(htmlString);
  }
})
