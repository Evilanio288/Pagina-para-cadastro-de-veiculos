
<div class="container px-4 px-lg-5 mt-5">
  <div class="row">
    <a href="marcas-incluir.php">Incluir+</a>
    <h1>Marcas</h1>
    <table>

      <?php
      $conn = Conectar();

      $query = 'SELECT ma.codigo, ma.m_nome, ma.m_logo, count(1) veiculos
      FROM marcas ma
 LEFT JOIN veiculos ve on ve.cod_marca = ma.codigo    
group by ma.codigo, ma.m_nome, ma.m_logo
order by ma.m_nome';

      $result = $conn->query($query);

      if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            $filename = 'imagens/' . $row['m_logo'];

            if (!file_exists($filename) || $row['m_logo'] == '') {
              $filename = 'imagens/semfoto.jpg';
            }
        ?>
  
            <div class="col-lg-3 text-center">
              <a href="./?page=veiculos&marca=<?php echo $row['codigo']; ?>&nomemarca=<?php echo $row['m_nome']; ?>" class="p-4"><img src="<?php echo $filename; ?>" class="img-fluid mb-5 mt-5 p-1" alt="<?php echo $row['m_nome'] . 'logo'; ?>" title="<?php echo $row['m_nome']; ?>" style="max-width: 15vw; max-height: 15vh"></a>
          </div>

          <style>
            img {
              transition: transform .2s;
            }

            img:hover {
              transform: scale(1.3);
            }
          </style>
     <?php }
      } ?>
    </table>
  </div>
</div>