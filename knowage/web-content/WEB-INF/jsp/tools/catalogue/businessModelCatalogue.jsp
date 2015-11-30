<%@ page language="java" pageEncoding="utf-8" session="true"%>


<%-- ---------------------------------------------------------------------- --%>
<%-- JAVA IMPORTS															--%>
<%-- ---------------------------------------------------------------------- --%>


<%@include file="/WEB-INF/jsp/commons/angular/angularResource.jspf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="businessModelCatalogueModule">
<head>

<%@include file="/WEB-INF/jsp/commons/angular/angularImport.jsp"%>

<!-- Styles -->
<link rel="stylesheet" type="text/css"	href="/knowage/themes/glossary/css/generalStyle.css">

<script type="text/javascript" src="/knowage/js/src/angular_1.4/tools/commons/angular-table/AngularTable.js"></script>

<script type="text/javascript" src="/knowage/js/src/angular_1.4/tools/catalogues/businessModelCatalogue.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  class="bodyStyle" ng-controller="businessModelCatalogueController as ctrl">
	<angular_2_col>
		<left-col>
			<div class="leftBox">
				<md-toolbar class="md-blue minihead">
					<div class="md-toolbar-tools">
						<div>{{translate.load("sbi.tools.catalogue.metaModelsCatalogue");}}</div>
						
						<md-button 
    						ng-disabled=false
    						class="md-fab md-ExtraMini"
    						style="position:absolute; right:26px; top:0px; background-color:#E91E63"
    						ng-click="deleteBusinessModels()"> 
    						
    						<md-icon
        						md-font-icon="fa fa-trash" 
        						style=" margin-top: 6px ; color: white;" >
       						</md-icon> 
						</md-button>
						
						<md-button 
							class="md-fab md-ExtraMini addButton"
							style="position:absolute; right:11px; top:0px;"
							ng-click="createBusinessModel()"> 
							<md-icon
								md-font-icon="fa fa-plus" 
								style=" margin-top: 6px ; color: white;">
							</md-icon> 
						</md-button>
					</div>
				</md-toolbar>
				<md-content layout-padding style="background-color: rgb(236, 236, 236);" class="ToolbarBox miniToolbar noBorder leftListbox">

					<angular-table 
						layout-fill
						id="arsenije"
						ng-model="businessModelList"
						columns='[{"label":"Name","name":"name"},{"label":"Description","name":"description"}]' 
						columns-search='["name","description"]'
						show-search-bar=true
						highlights-selected-item=true
						click-function ="leftTableClick(item)"
						multi-select=true
						selected-item="selectedBusinessModels"
												
					>						
					</angular-table>


				</md-content>
			</div>
		</left-col>
		
		<right-col>
			<div ng-show = "showMe">
				<form layout-fill class="detailBody md-whiteframe-z1">
					<md-toolbar class="md-blue minihead">
						<div class="md-toolbar-tools h100">
							<div style="text-align: center; font-size: 24px;">{{translate.load("sbi.tools.catalogue.metaModelsCatalogue");}}</div>
								<div style="position: absolute; right: 0px" class="h100">
									
									<md-button type="button" tabindex="-1" aria-label="cancel"
										class="md-raised md-ExtraMini " style=" margin-top: 2px;"
										ng-click="cancel()">
										{{translate.load("sbi.browser.defaultRole.cancel");}}
									</md-button>
									
									<md-button  type="submit"
										aria-label="save layer" class="md-raised md-ExtraMini "
										style=" margin-top: 2px;" ng-click="saveBusinessModel()"
									>
										{{translate.load("sbi.browser.defaultRole.save");}} 
									</md-button>
								</div>
						</div>
					</md-toolbar>
					
					<md-content flex style="margin-left:20px;margin-right:20px;" class="ToolbarBox miniToolbar noBorder">
					
						<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter">
       								<label>{{translate.load("sbi.ds.name")}}</label>
       								<input ng-model="selectedBusinessModel.name" required
        								maxlength="100" ng-maxlength="100" md-maxlength="100"> 
        						</md-input-container>
      						</div>
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter">
       								<label>{{translate.load("sbi.ds.description")}}</label>
       								<input ng-model="selectedBusinessModel.description"
        								maxlength="100" ng-maxlength="100" md-maxlength="100"> 
        						</md-input-container>
      						</div>
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter"> 
       								<label>{{translate.load("sbi.ds.catType")}}</label>
							       <md-select  aria-label="aria-label"
							        ng-model="selectedBusinessModel.category"> <md-option
							        ng-repeat="c in listOfCategories" value="{{c.VALUE_ID}}">{{c.VALUE_NM}} </md-option>
							       </md-select> 
       							</md-input-container>
      						</div>
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter"> 
       								<label>{{translate.load("sbi.ds.dataSource")}}</label>
							       <md-select  aria-label="aria-label"
							        ng-model="selectedBusinessModel.dataSourceLabel"> <md-option
							        ng-repeat="d in listOfDatasources" value="{{d.DATASOURCE_ID}}">{{d.DATASOURCE_LABEL}} </md-option>
							       </md-select> 
       							</md-input-container>
      						</div>
     					</div>
     					
     					<div layout="row" layout-wrap>
     						<div flex=3 style="line-height: 40px">
       							<label>{{translate.load("sbi.ds.file.upload.button")}}:</label>
      						</div>
      						
      						<md-input-container class="small counter"> 
       							<input id="mondarianSchemaFile" ng-model="selectedmondarianSchema.mondarianSchemaFile" type="file"
       									fileread="selectedmondarianSchema.mondarianSchemaFile" accept=""/> 
      						</md-input-container>
      					</div>
     					     					
     					<div layout="row" layout-wrap>
      						<div flex=3 style="line-height: 40px">
       							<label>{{translate.load("sbi.bm.isLocked")}}:</label>
      						</div>
 
      						<md-input-container class="small counter"> 
      							<md-checkbox
       								ng-model="selectedBusinessModel.modelLocked" aria-label="Locked" disabled>
      							</md-checkbox> 
      						</md-input-container>
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=3 style="line-height: 40px">
       							<label>{{translate.load("sbi.bm.lockedBy")}}:</label>
      						</div>
 							{{selectedBusinessModel.modelLocker}}
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=3 style="line-height: 40px">
       							<md-button type="button" class="md-raised " ng-disabled="selectedBusinessModel.modelLocked" ng-click="lockBusinessModel()">
       								{{translate.load("sbi.bm.lockModel")}}
       							</md-button>
      						</div>
     					</div>
     					
     					<div layout="row" layout-wrap>
      						<div flex=3 style="line-height: 40px">
       							<md-button type="button" class="md-raised " ng-disabled="!selectedBusinessModel.modelLocked" ng-click="unlockBusinessModel()">
       								{{translate.load("sbi.bm.unlockModel")}}
       							</md-button>
      						</div>
     					</div>
     			
     					<div style="height:40%; padding-top:20px">
     						<md-content flex style="background-color: rgb(236, 236, 236); height:95%; overflow:hidden;" >
     							<md-toolbar class="md-blue minihead md-toolbar-tools">
     								<md-button 
    									ng-disabled=false
    									class="md-fab md-ExtraMini"
    									style="position:absolute; right:26px; top:0px; background-color:#E91E63"
    									ng-click="deleteBusinessModelVersions()"> 
    						
    									<md-icon
        									md-font-icon="fa fa-trash" 
        									style=" margin-top: 6px ; color: white;" >
       									</md-icon> 
									</md-button>
     								{{translate.load("sbi.widgets.catalogueversionsgridpanel.title")}}
     							</md-toolbar>
     							
     							<angular-table
	     							style="background-color:red" 
									layout-fill
									id="arsenije1"
									ng-model="bmVersions"
									columns='[
										{"label":"Creator","name":"creationUser"},
										{"label":"Creation Date","name":"creationDate"},
										{"label":"File name","name":"fileName"}
										]'
									columns-search='["creationUser","creationDate"]'
									show-search-bar=false
									speed-menu-option="bmSpeedMenu2"
									selected-item="selectedVersions"
									highlights-selected-item=true
									multi-select=true										
								>						
								</angular-table>
     						</md-content>
     					</div>
     					
					</md-content>
				</form>
			</div>
		</right-col>
	</angular_2_col>
</body>
</html>