<?php echo $header ?><?php echo $column_left ?>
<div id="content">
  
	<!-- Page Header -->
	<div class="page-header">
		<div class="container-fluid">
		
			<div class="pull-right">
				<button type="submit" form="form-moip" data-toggle="tooltip" title="<?php echo $button_save ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $debug ?>" data-toggle="tooltip" title="<?php echo $button_debug ?>" class="btn btn-info"><i class="fa fa-file"></i></a>
				<a href="<?php echo $cancel ?>" data-toggle="tooltip" title="<?php echo $button_cancel ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
			</div>
			
			<h1><?php echo $heading_title ?></h1>
			
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href'] ?>"><?php echo $breadcrumb['text'] ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	
	<!-- Container -->
	<div class="container-fluid">
	
		<!-- Error -->
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger">
		  <i class="fa fa-exclamation-circle"></i> <?php echo $error_warning ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		
		<!-- Panel -->
		<div class="panel panel-default">
		
			<!-- Title -->
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title ?></h3>
			</div>
			
			<!-- Body -->
			<div class="panel-body">
			
				<!-- Nav -->
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#config"><?php echo $tab_config ?></a></li>
					<li><a data-toggle="tab" href="#desconto"><?php echo $tab_desconto ?></a></li>
					<li><a data-toggle="tab" href="#payment-status"><?php echo $tab_status_payment ?></a></li>
					<li><a data-toggle="tab" href="#plots"><?php echo $tab_plots ?></a></li>
					<li><a data-toggle="tab" href="#billet"><?php echo $tab_billet ?></a></li>
					<li><a data-toggle="tab" href="#payment-method"><?php echo $tab_payment_method ?></a></li>
				</ul>
				
				<!-- Form -->
				<form action="<?php echo $action ?>" method="post" enctype="multipart/form-data" id="form-moip" class="form-horizontal">
					<div class="tab-content">
						
						<!-- Tab Config -->
						<div class="tab-pane active" id="config">
							
							<!-- Status -->
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="moip_status"><?php echo $entry_status ?></label>
								<div class="col-sm-10">
									<select name="moip_status" id="moip_status" class="form-control">
										<?php if ($moip_status) { ?>
										<option value="1" selected><?php echo $text_enabled ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enabled ?></option>
										<?php } ?>
										
										<?php if (!$moip_status) { ?>
										<option value="0" selected><?php echo $text_disabled ?></option>
										<?php } else { ?>
										<option value="0"><?php echo $text_disabled ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Razão do Pagamento -->
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="moip_razao_pagamento"><?php echo $entry_razao_pagamento ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_razao_pagamento" id="moip_razao_pagamento" class="form-control" value="<?php echo $moip_razao_pagamento ?>" />
									<?php if ($error_razao_pagamento) { ?>
									<div class="text-danger"><?php echo $error_razao_pagamento ?></div>
									<?php } ?>
								</div>
							</div>
							
							<!-- Token -->
							<div class="form-group required">
								<label class="col-sm-2 control-label" for=""><?php echo $entry_token ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_token" value="<?php echo $moip_token ?>" class="form-control" />
									<?php if ($error_token) { ?>
									<div class="text-danger"><?php echo $error_token ?></div>
									<?php } ?>
								</div>
							</div>
							
							<!-- Key -->
							<div class="form-group required">
								<label class="col-sm-2 control-label" for=""><?php echo $entry_key ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_key" value="<?php echo $moip_key ?>" class="form-control" />
									<?php if ($error_key) { ?>
									<div class="text-danger"><?php echo $error_key ?></div>
									<?php } ?>
								</div>
							</div>
							
							<!-- Modo de Teste -->
							<div class="form-group required">
								<label class="col-sm-2 control-label" for=""><?php echo $entry_modo_teste ?></label>
								<div class="col-sm-10">
									<?php if ($moip_modo_teste) { ?>
									<label class="radio-inline"><input type="radio" name="moip_modo_teste" value="1" checked /> <?php echo $text_yes ?></label>
									<?php } else { ?>
									<label class="radio-inline"><input type="radio" name="moip_modo_teste" value="1" /> <?php echo $text_yes ?></label>
									<?php } ?>
									
									<?php if (!$moip_modo_teste) { ?>
									<label class="radio-inline"><input type="radio" name="moip_modo_teste" value="0" checked /> <?php echo $text_no ?></label>
									<?php } else { ?>
									<label class="radio-inline"><input type="radio" name="moip_modo_teste" value="0" /> <?php echo $text_no ?></label>
									<?php } ?>
								</div>
							</div>
							
							<!-- Notificar Cliente -->
							<div class="form-group required">
								<label class="col-sm-2 control-label"><?php echo $entry_notificar_cliente ?></label>
								<div class="col-sm-10">
									<?php if ($moip_notificar_cliente) { ?>
									<label class="radio-inline"><input type="radio" name="moip_notificar_cliente" value="1" checked /> <?php echo $text_yes ?></label>
									<?php } else { ?>
									<label class="radio-inline"><input type="radio" name="moip_notificar_cliente" value="1" /> <?php echo $text_yes ?></label>
									<?php } ?>
									
									<?php if (!$moip_notificar_cliente) { ?>
									<label class="radio-inline"><input type="radio" name="moip_notificar_cliente" value="0" checked /> <?php echo $text_no ?></label>
									<?php } else { ?>
									<label class="radio-inline"><input type="radio" name="moip_notificar_cliente" value="0" /> <?php echo $text_no ?></label>
									<?php } ?>
								</div>
							</div>
              
              <!-- Área/Zona Geográfica -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_geo_zone ?></label>
								<div class="col-sm-10">
									<select name="moip_geo_zone_id" class="form-control">
										<option value="0"><?php echo $text_all_zones ?></option>
										<?php foreach($zones as $zone) { ?>
										<?php if ($moip_geo_zone_id == $zone['geo_zone_id']) { ?>
										<option value="<?php echo $zone['geo_zone_id'] ?>"><?php echo $zone['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $zone['geo_zone_id'] ?>"><?php echo $zone['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Ordem -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_sort_order ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_sort_order" value="<?php echo $moip_sort_order ?>" class="form-control" />
								</div>
							</div>
              
						</div>
						
						<!-- Tab Área Geográfica e Ordem -->
						<div class="tab-pane" id="desconto">
							<fieldset>
                <legend><?php echo $text_desconto ?></legend>
                
                <!-- Desconto Boleto -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_desconto_boleto ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_desconto_boleto" value="<?php echo $moip_desconto_boleto ?>" type="text" />
                  </div>
                </div>
                
                <!-- Desconto Débito -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_desconto_debito ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_desconto_debito" value="<?php echo $moip_desconto_debito ?>" type="text" />
                  </div>
                </div>
                
                <!-- Desconto Cartão de Crédito -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_desconto_cartao ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_desconto_cartao" value="<?php echo $moip_desconto_cartao ?>" type="text" />
                  </div>
                </div>
              </fieldset>
              
              <fieldset>
                <legend><?php echo $text_acrescimo ?></legend>
                
                <!-- Acréscimo Boleto -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_acrescimo_boleto ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_acrescimo_boleto" value="<?php echo $moip_acrescimo_boleto ?>" type="text" />
                  </div>
                </div>
                
                <!-- Acréscimo Débito -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_acrescimo_debito ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_acrescimo_debito" value="<?php echo $moip_acrescimo_debito ?>" type="text" />
                  </div>
                </div>
                
                <!-- Acréscimo Cartão de Crédito -->
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?php echo $entry_acrescimo_cartao ?></label>
                  <div class="col-sm-10">
                    <input class="form-control" name="moip_acrescimo_cartao" value="<?php echo $moip_acrescimo_cartao ?>" type="text" />
                  </div>
                </div>
              </fieldset>
						</div>
						
						<!-- Tab Status de Pagamento -->
						<div class="tab-pane" id="payment-status">
						
							<!-- Status Autorizado -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_autorizado ?></label>
								<div class="col-sm-10">
									<select name="moip_autorizado" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_autorizado == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Iniciado -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_iniciado ?></label>
								<div class="col-sm-10">
									<select name="moip_iniciado" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_iniciado == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Boleto Impresso -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto_impresso ?></label>
								<div class="col-sm-10">
									<select name="moip_boleto_impresso" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_boleto_impresso == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Completo -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_completo ?></label>
								<div class="col-sm-10">
									<select name="moip_completo" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_completo == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Cancelado -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_cancelado ?></label>
								<div class="col-sm-10">
									<select name="moip_cancelado" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_cancelado == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Em Análise -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_em_analise ?></label>
								<div class="col-sm-10">
									<select name="moip_em_analise" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_em_analise == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Revertido -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_revertido ?></label>
								<div class="col-sm-10">
									<select name="moip_revertido" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_revertido == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Em Revisão -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_em_revisao ?></label>
								<div class="col-sm-10">
									<select name="moip_em_revisao" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_em_revisao == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Status Reembolsado -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_reembolsado ?></label>
								<div class="col-sm-10">
									<select name="moip_reembolsado" class="form-control">
										<?php foreach($statuses as $status) { ?>
										<?php if ($moip_reembolsado == $status['order_status_id']) { ?>
										<option value="<?php echo $status['order_status_id'] ?>" selected><?php echo $status['name'] ?></option>
										<?php } else { ?>
										<option value="<?php echo $status['order_status_id'] ?>"><?php echo $status['name'] ?></option>
										<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>							
						</div>
						
						<!-- Tab Parcelas -->
						<div class="tab-pane" id="plots">
            
              <div class="container-fluid">
                <?php if ($error_parcelas) { ?>
								<div class="alert alert-danger"><?php echo $error_parcelas ?></div>
								<?php } ?>
                
                <table class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <td><?php echo $column_de ?></td>
                      <td><?php echo $column_para ?></td>
                      <td><?php echo $column_desconto ?></td>
                      <td><?php echo $column_acrescimo ?></td>
                    </tr>
                  </thead>
                  
                  <tbody>
                    <?php $plot_row = 0 ?>
                    <?php foreach($moip_parcela as $parcela) { ?>
                    <tr id="plot<?php echo $plot_row ?>">
                      <td class="col-sm-3">
                        <select name="moip_parcela[<?php echo $plot_row ?>][de]" class="form-control">
                          <?php for($i = 1; $i <= 12; $i++) { ?>
                            <?php if ($i == $parcela['de']) { ?>
                            <option value="<?php echo $i ?>" selected><?php echo $i ?>x</option>
                            <?php } else { ?>
                            <option value="<?php echo $i ?>"><?php echo $i ?>x</option>
                            <?php } ?>
                          <?php } ?>
                        </select>
                      </td>
                      <td class="col-sm-3">
                        <select name="moip_parcela[<?php echo $plot_row ?>][para]" class="form-control">
                          <?php for($i = 1; $i <= 12; $i++) { ?>
                            <?php if ($i == $parcela['para']) { ?>
                            <option value="<?php echo $i ?>" selected><?php echo $i ?>x</option>
                            <?php } else { ?>
                            <option value="<?php echo $i ?>"><?php echo $i ?>x</option>
                            <?php } ?>
                          <?php } ?>
                        </select>
                      </td>
                      <td class="col-sm-3">
                        <div class="input-group">
                          <input type="number" name="moip_parcela[<?php echo $plot_row ?>][desconto]" value="<?php echo $parcela['desconto'] ?>" class="form-control" />
                          <input type="hidden" name="moip_parcela[<?php echo $plot_row ?>][desconto_tipo]" value="<?php echo $parcela['desconto_tipo'] ?>" />
                          <span class="input-group-btn">
                            <button type="button" class="btn btn-primary btn-fixo <?php echo ($parcela['desconto_tipo'] == 'F') ? 'active' : '' ?>" data-toggle="tooltip" title="<?php echo $text_fixo ?>">$</button>
                            <button type="button" class="btn btn-primary btn-porcento <?php echo ($parcela['desconto_tipo'] == 'P') ? 'active' : '' ?>" data-toggle="tooltip" title="<?php echo $text_fixo ?>">%</button>
                          </span>
                        </div>
                      </td>
                      <td class="col-sm-3">
                        <div class="input-group">
                          <input type="number" name="moip_parcela[<?php echo $plot_row ?>][acrescimo]" class="form-control" value="<?php echo $parcela['acrescimo'] ?>" />
                          <input type="hidden" name="moip_parcela[<?php echo $plot_row ?>][acrescimo_tipo]" value="<?php echo $parcela['acrescimo_tipo'] ?>" />
                          <span class="input-group-btn">
                            <button type="button" class="btn btn-primary btn-fixo <?php echo ($parcela['acrescimo_tipo'] == 'F') ? 'active' : '' ?>" data-toggle="tooltip" title="<?php echo $text_fixo ?>">$</button>
                            <button type="button" class="btn btn-primary btn-porcento <?php echo ($parcela['acrescimo_tipo'] == 'P') ? 'active' : '' ?>" data-toggle="tooltip" title="<?php echo $text_fixo ?>">%</button>
                          </span>
                        </div>
                      </td>
                    </tr>
                    <?php $plot_row++; ?>
                    <?php } ?>
                  </tbody>
                  
                  <tfoot>
                    <tr>
                      <td colspan="4" class="text-right">
                        <button type="button" id="desfazer-parcela" class="btn btn-danger" data-toggle="tooltip" title="<?php echo $button_desfazer ?>"><i class="fa fa-reply"></i></button>
                        <button type="button" id="add-parcela" class="btn btn-primary" data-toggle="tooltip" title="<?php echo $button_add_parcela ?>"><i class="fa fa-plus"></i></button>
                      </td>
                    </tr>
                  </tfoot>
                </table>
							</div>
						</div>
						
						<!-- Tab Boleto -->
						<div class="tab-pane" id="billet">
							
							<!-- Vencimento -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto_vencimento ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_boleto_vencimento" value="<?php echo $moip_boleto_vencimento ?>" class="form-control" />
								</div>
							</div>
							
							<!-- Instrução 1 -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto_instrucao_1 ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_boleto_instrucao_1" value="<?php echo $moip_boleto_instrucao_1 ?>" class="form-control" />
								</div>
							</div>
							
							<!-- Instrução 2 -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto_instrucao_2 ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_boleto_instrucao_2" value="<?php echo $moip_boleto_instrucao_2 ?>" class="form-control" />
								</div>
							</div>
							
							<!-- Instrução 3 -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto_instrucao_3 ?></label>
								<div class="col-sm-10">
									<input type="text" name="moip_boleto_instrucao_3" value="<?php echo $moip_boleto_instrucao_3 ?>" class="form-control" />
								</div>
							</div>
							
							<!-- Logo -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $entry_em_breve ?>"><?php echo $entry_boleto_logo ?></span></label>
								<div class="col-sm-10">
                  <input type="hidden" name="moip_boleto_logo" id="moip_boleto_logo" value="<?php echo $moip_boleto_logo ?>" />
                  <a data-toggle="image" id="boleto_logo">
                    <img src="<?php echo $moip_boleto_logo ?>" />
                  </a>
								</div>
							</div>
						</div>
						
						<!-- Tab Métodos de Pagamento -->
						<div class="tab-pane" id="payment-method">
							
							<!-- Cartão de Crédito -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_cartao_credito ?></label>
								<div class="col-sm-10">
									<select name="moip_cartao" class="form-control">
										<?php if ($moip_cartao_credito) { ?>
										<option value="1" selected><?php echo $text_enabled ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enabled ?></option>
										<?php } ?>
										
										<?php if (!$moip_cartao_credito) { ?>
										<option value="0" selected><?php echo $text_disabled ?></option>
										<?php } else { ?>
										<option value="0"><?php echo $text_disabled ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Cartão de Débito -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_cartao_debito ?></label>
								<div class="col-sm-10">
									<select name="moip_debito" class="form-control">
										<?php if ($moip_debito) { ?>
										<option value="1" selected><?php echo $text_enabled ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enabled ?></option>
										<?php } ?>
										
										<?php if (!$moip_debito) { ?>
										<option value="0" selected><?php echo $text_disabled ?></option>
										<?php } else { ?>
										<option value="0"><?php echo $text_disabled ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
							
							<!-- Boleto -->
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_boleto ?></label>
								<div class="col-sm-10">
									<select name="moip_boleto" class="form-control">
										<?php if ($moip_boleto) { ?>
										<option value="1" selected><?php echo $text_enabled ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enabled ?></option>
										<?php } ?>
										
										<?php if (!$moip_boleto) { ?>
										<option value="0" selected><?php echo $text_disabled ?></option>
										<?php } else { ?>
										<option value="0"><?php echo $text_disabled ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
						</div>
          </div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
	$(function(){
    $('#plots .btn-fixo').click(function(){
      $(this).parent().find('button').removeClass('active');
      $(this).parents('div.input-group').find('input[type="hidden"]').val('F');
      $(this).addClass('active');
    });
    
    $('#plots .btn-porcento').click(function(){
      $(this).parent().find('button').removeClass('active');
      $(this).parents('div.input-group').find('input[type="hidden"]').val('P');
      $(this).addClass('active');
    });
    
    var plot_row = '<?php echo $plot_row ?>';
    
    $('#add-parcela').click(function(){
      var html = '';
      var start_from = parseInt($('#plots table tbody tr:last select:eq(1)').val()) + 1;
      
      $('#plots table .alert-danger').remove();
      
      if (start_from > 12 || start_from == 'NaN') {
        $('#plots table').before('<div class="alert alert-danger"><?php echo $error_parcelas_limite ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        return false;
      }
    
      html += '<tr id="plot' + plot_row + '">';
      html += '  <td class="col-sm-3">';
      html += '    <select name="moip_parcela[' + plot_row + '][de]" class="form-control">';
                     for(i = start_from; i <= 12; i++) {
      html += '      <option value="' + i + '">' + i + 'x</option>';
                     }
      html += '    </select>';
      html += '  </td>';
      html += '  <td class="col-sm-3">';
      html += '    <select name="moip_parcela[' + plot_row + '][para]" class="form-control">';
                     for(i = start_from; i <= 12; i++) {
      html += '      <option value="' + i + '">' + i + 'x</option>';
                     }
      html += '    </select>';
      html += '  </td>';
      html += '  <td class="col-sm-3">';
      html += '    <div class="input-group">';
      html += '      <input type="number" name="moip_parcela[' + plot_row + '][desconto]" class="form-control" />';
      html += '      <input type="hidden" name="moip_parcela[' + plot_row + '][desconto_tipo]" value="F" />';
      html += '      <span class="input-group-btn">';
      html += '        <button type="button" class="btn btn-primary active btn-fixo" data-toggle="tooltip" title="Fixo">$</button>';
      html += '        <button type="button" class="btn btn-primary btn-porcento" data-toggle="tooltip" title="Porcento">%</button>';
      html += '      </span>';
      html += '    </div>';
      html += '  </td>';
      html += '  <td class="col-sm-3">';
      html += '    <div class="input-group">';
      html += '      <input type="number" name="moip_parcela[' + plot_row + '][acrescimo]" class="form-control" />';
      html += '      <input type="hidden" name="moip_parcela[' + plot_row + '][acrescimo_tipo]" value="F" />';
      html += '      <span class="input-group-btn">';
      html += '        <button type="button" class="btn btn-primary active btn-fixo" data-toggle="tooltip" title="Fixo">$</button>';
      html += '        <button type="button" class="btn btn-primary btn-porcento" data-toggle="tooltip" title="Porcento">%</button>';
      html += '      </span>';
      html += '    </div>';
      html += '  </td>';
      html += '</tr>';
      
      $('#plots table tbody').append(html);
      
      plot_row++;
    });
	});
  
  $('#desfazer-parcela').click(function(){
    $('#plots table tbody tr:last').remove();
  });
//--></script>

<?php echo $footer ?>