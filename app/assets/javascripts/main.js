$(function(){
  let form=$('#movie-search');
  form.submit(function(e){
    e.preventDefault();

    $.ajax({
      url: 'https://api.themoviedb.org/3/search/movie?api_key=ab3927766ef5b5254ec77d1289540da8',
      data: form.serialize()
    })
    .done(function(data){
      displayMovies(data);
    });
  });


  function displayMovies(data){
    let htmlString = "";
    var imageUrl = getBaseImageUrl();
    data["results"].forEach(function(movie){
      htmlString += `<img src="${imageUrl}/${movie["poster_path"]}" />
                    <p>${movie["title"]}</p>
                    <p>${movie["overview"]}</p>
                    `
    });

    $("#movies").append(htmlString);
  }

  function getBaseImageUrl(){
    var url = "";
    var settings = {
      "async": false,
      "crossDomain": true,
      "url": "https://api.themoviedb.org/3/configuration?api_key=ab3927766ef5b5254ec77d1289540da8",
      "method": "GET",
      "headers": {},
      "data": "{}"
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
      url = response["images"]["base_url"] + response["images"]["poster_sizes"][2];
    });
    return url;
  }
});
