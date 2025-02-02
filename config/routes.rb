Rails.application.routes.draw do
 
  # cadastrar e editar gêneros de filmes; 
  # cadastrar e editar diretores;
  # cadastrar e editar filmes;
  # ver uma listagem de todos os gêneros;
  # ao entrar na tela de detalhes de um gênero, - ver todos os filmes deste gênero;
  # ver uma listagem de todos os diretores;
  # ao entrar na tela de detalhes de um(a) diretor(a), ver todos os filmes dirigidos por esta pessoa;
  # ver uma listagem com todos os filmes, exibindo somente o título e o ano de lançamento;
  # ao clicar em um filme da listagem, ver todos os detalhes deste filme.

  root to: 'home#index'

  resources :genres
  resources :movies
  resources :directors 
end
