<h1>Contato</h1>

<?php include "contatosend.php"; ?>

<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1  margin-top-20">
                    <div class="col-md-6  col-sm-12" data-scrollreveal="enter left and move 100px, wait 0.6s">
                        <h3><span class="fa-stack">
                          <i class="fa fa-circle fa-stack-1x color-brown"></i>
                          <i class="fas fa-pencil fa-stack-1x fa-inverse circle-icon"></i>
                        </span>Envie-nos sua mensagem</h3>                        
                        <hr />
                            <form action="" method="post">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="txt_nome" required placeholder="Nome" value="">
                                    </div>
                                </div>
                                
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="txt_email" required placeholder="Email" value="">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                            <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
 
                                        <input type="text" class="form-control" id="txt_tel" name="txt_tel" required placeholder="Telefone" value="" >
                                        
                                    </div>
                            </div>
                            </div>
                            
                                   <div class="row">
                            <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="txt_cidade" name="txt_cidade" required placeholder="Cidade" value="">
    </div>
                            </div>

                            <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        
                                         <select name="cmb_estado" id="cmb_estado" class="caixa" required>
                                             <option value=""></option>
										                                            <option value="AL">Alagoas</option>
                                                                                    <option value="AM">Amazonas</option>
                                                                                    <option value="AP">Amap&aacute;</option>
                                                                                    <option value="BA">Bahia</option>
                                                                                    <option value="CE">Cear&aacute;</option>
                                                                                    <option value="DF">Distrito Federal</option>
                                                                                    <option value="ES"> Esp&iacute;rito Santo</option>
                                                                                    <option value="GO"> Goi&aacute;s</option>
                                                                                    <option value="MA"> 
            Maranh&atilde;o</option>
                                                                                    <option value="MT"> Mato Grosso</option>
                                                                                    <option value="MS"> Mato Grosso do Sul</option>
                                                                                    <option value="MG"> Minas Gerais</option>
                                                                                    <option value="PA"> Par&aacute;</option>
                                                                                    <option value="PB"> Par&iacute;ba</option>
                                                                                    <option value="PR"> Paran&aacute;</option>
                                                                                    <option value="PE"> 
            Pernambuco</option>
                                                                                    <option value="PI"> Piau&iacute;</option>
                                                                                    <option value="RJ">Rio de Janeiro</option>
                                                                                    <option value="RN"> Rio Grande do Norte</option>
                                                                                    <option value="RO"> Rond&ocirc;nia</option>
                                                                                    <option value="RS"> Rio Grande do Sul</option>
                                                                                    <option value="RR"> Roraima</option>
                                                                                    <option value="SC"> Santa Catarina</option>
                                                                                    <option value="SE"> 
            Sergipe</option>
                                                                                    <option selected="selected" value="SP"> S&atilde;o Paulo</option>
                                                                                    <option value="TO"> Tocantins</option>
                                                                                  </select>
                                        
                                        
                                    </div>
                            </div>
                            </div>

                            

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <textarea id="txt_mensagem" required class="form-control" name="txt_mensagem" rows="4" placeholder="Mensagem"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-8">
                                    
                                    <span style="color:#F00"></span>
                                    
                                    <div class="g-recaptcha" data-sitekey="6Lff5yITAAAAAHrNao2FrM_oqJNxRfNhmxGrXtQT"></div>
                                    <div class="form-group">
                                        <button type="submit" id="button" name="button" value="Enviar" class="btn btn-primary btn-lg">Enviar</button>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                <div id="sustainable_website"></div>

                                </div> 
                            </div>
                        </form>
                    </div>