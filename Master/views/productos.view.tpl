   <div class="grid920 center categorias">
        {{foreach categorias}}
        <span><a href="index.php?page=productos&catid={{categoriaID}}">{{categoria}}</a> | </span>
        {{endfor categorias}}
   </div>
 </div>
   <div class="grid920">
    {{foreach productos}}
    <div class="prd">
        <h3>{{producto}}</h3>
        <b>Precio: </b>{{prodPrc}}<br/>
        <b>Iva: </b>{{prodIva}}<br/>
        <b>Stock: </b>{{prodStock}}<br/><br/>
        <a class="actionBtn" href="index.php?page=addCrt&prdid={{productoid}}&pageNum=1">Agregar a Carretilla</a>
    </div>
    {{endfor productos}}
   <div class="grid920 pager">
        |{{foreach paginas}}
            <a class="{{selected}}" href="index.php?page=productos&pageNum={{pagina}}&catid={{catid}}">{{pagina}}</a> |
        {{endfor paginas}}
   </div>
