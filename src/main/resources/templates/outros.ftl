<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo</title>
    <link rel="stylesheet" href="css/outros.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="imagens.html">imagens</a></li>
                <li><a href="objetos.html">objetos</a></li>
                <li><a href="blocos.html">blocos</a></li>
                <li><a href="textos.html">textos</a></li>
                <li><a href="outros.html">outros</a></li>
            </ul>
        </nav>
        <div>
        <img src="imgs/novo-120.png"
        width="120" height="120"
        alt="novo logo" 
        srcset="imgs/novo-120.png 120w,
        imgs/novo-500.png 500w,
        imgs/novo-1080.png 1080w"
        >
        <h1>Anotações diversas</h1>
    </div>
    </header>

    <main>
<aside>
    <ul>
        <li><a href="#responsivo">Responsividade Geral</a></li>
        <li><a href="#ImagensFluidas">Imagens fluidas</a></li>
        <li>item 3</li>
        <li>item 4</li>
    </ul>
</aside>
<section>
    <h2 id="anotc">Anotações diversas</h2>
<article>
		<time>
            ${currentDate.format("EEEE, dd 'de' MMMM 'de' yyyy")}
        </time>
    <h3 id="responsivo">Fórmula para font-size responsivo</h3>
    <p>Para uso de fontes fluidas que respondem ao tapanho. A fórmula é a seguinte (a tag abaixo, propositalmente, não pula linha e respeita exatamente o que foi passado na tag, incluindo as linhas puladas):
        <div>
        <pre>html {
  font-size: 16px;
}
@media screen and (min-width: 320px) {
  html {
    font-size: calc(16px + 6 * ((100vw - 320px) / 680));
  }
}
@media screen and (min-width: 1000px) {
  html {
    font-size: 22px;
  }
          } </pre>
        </div>
    Mas ela pode ser simplificada para seguinte linha:
    <div>
    <pre>html {
        font-size: min(max(1rem, 4vw), 22px);
      }</pre>
    </div>
  Mais detalhes podem ser vistos no link <a href="https://css-tricks.com/simplified-fluid-typography/">typografia fluida</a>    
</p>
</article>

<article>
    <h3 id="ImagensFluidas">Anotações sobre imagem</h3>
    <p>abaixo o logo usado nesse teste usando imagem fluida que foi transcrito no artigo de <a href="https://www.zachleat.com/web/fluid-images/">Zach Leat</a> discutindo sobre abordagem de imagem fluida.</p>
    <p>Apesar de mostrarmos que o uso do srcset se sai bem para escolha da mesma imagem, fica a dúvida sobre o uso das imagens usadas de forma fluida</p>
    <p>Como queremos que as imagens acompanhem a fluidez das telas até que chegue ao valor fixo em desktop, é importante discutimos essa questão</p>
    <img src="imgs/novo-500.png" 
    width="50%" height="50%"
    alt="" 
    srcset="imgs/novo-120.png 500w,
            imgs/novo-500.png 500w,
            imgs/novo-1080.png 1080w"
        >
        <p>No exemplo acima, temos apenas o uso de srcset livre, sem div, mas com width relativo (50%). Abaixo teremos o controle da imagem com uma div envolvendo, ainda usando srcset:</p>

    <div class="controle">
        <img src="imgs/novo-500.png" 
        width="100%" height="100%"
        alt="" 
        srcset="imgs/novo-120.png 500w,
                imgs/novo-500.png 500w,
                imgs/novo-1080.png 1080w"
            >
    </div>
            
</article>
</section>
    </main>
</body>
</html>