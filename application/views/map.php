<div id="map_canvas"  style="width: 940px;height: 650px;"></div>

 <style type='text/css'> 
        /*Custom Button*/ 
        .olControlCustomButtonItemInactive { 
            background:#22dd22; 
            border:5px solid #202020; 
            cursor: pointer; 
            height: 28px; 
            width:  28px;  
        } 
    </style> 

<script type="text/javascript">
var map;

var fromProjection = new OpenLayers.Projection("EPSG:4326"); // transform from WGS 1984
var toProjection = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection

var extent = new OpenLayers.Bounds(20.2, 43.6, 29.9, 48.3).transform(fromProjection,toProjection);

map = new OpenLayers.Map('map_canvas', {
	numZoomLevels : 2,
	restrictedExtent : extent
});

var osm_layer = new OpenLayers.Layer.OSM("My OMS");
map.addLayer(osm_layer);

var point_layer_events = new OpenLayers.Layer.Vector("Reports", {
							projection: "EPSG:933913"
						});
map.addLayer(point_layer_events);

var point_layer_alerts = new OpenLayers.Layer.Vector("Alerts", {
							projection: "EPSG:933913"
						});
map.addLayer(point_layer_alerts);

// toggle the layers
var btn_change_layer = new OpenLayers.Control.Button({
								displayClass: 'olControlCustomButton',
								trigger: button2Clicked, 
								title: 'Button is to be clicked'
						});
						
var control_panel = new OpenLayers.Control.Panel({defaultControl: btn_change_layer});

control_panel.addControls([btn_change_layer]);

map.addControl(control_panel);

control_panel.moveTo(new OpenLayers.Pixel(450,0));

function button2Clicked()
{
	alert('help');
}



map.addControl(new OpenLayers.Control.LayerSwitcher({}));

map.zoomToMaxExtent();


var selectControl = new 
	OpenLayers.Control.SelectFeature(point_layer_events, {
		hover: false,
		clickout: true,
		toggle: true,
		onSelect: function(feature) {
			var layer = feature.layer;
			feature.style.fillOpacity = 1;
			feature.style.pointRadius = 20;
			layer.drawFeature(feature);
			var content = feature.attributes.body;
			var popup = new OpenLayers.Popup.FramedCloud(
							feature.id+"_popup", 
							feature.geometry.getBounds().
							getCenterLonLat(),
							new OpenLayers.Size(250, 100),
							content,
							null, 
							false, 
							null
						);
			feature.popup = popup;
			map.addPopup(popup);
		},
		onUnselect: function(feature) {
			var layer = feature.layer;
			feature.style.fillOpacity = 0.7;
			feature.style.pointRadius = 16;
			feature.renderIntent = null;
			layer.drawFeature(feature);
			map.removePopup(feature.popup);
		}
	});
map.addControl(selectControl);
selectControl.activate(); 

var selectControl = new 
	OpenLayers.Control.SelectFeature(point_layer_alerts, {
		hover: false,
		clickout: true,
		toggle: true,
		onSelect: function(feature) {
			var layer = feature.layer;
			feature.style.fillOpacity = 1;
			feature.style.pointRadius = 20;
			layer.drawFeature(feature);
			var content = feature.attributes.body;
			var popup = new OpenLayers.Popup.FramedCloud(
							feature.id+"_popup", 
							feature.geometry.getBounds().
							getCenterLonLat(),
							new OpenLayers.Size(250, 100),
							content,
							null, 
							false, 
							null
						);
			feature.popup = popup;
			map.addPopup(popup);
		},
		onUnselect: function(feature) {
			var layer = feature.layer;
			feature.style.fillOpacity = 0.7;
			feature.style.pointRadius = 16;
			feature.renderIntent = null;
			layer.drawFeature(feature);
			map.removePopup(feature.popup);
		}
	});
map.addControl(selectControl);
selectControl.activate(); 

// Get the locations of the reports
$.ajax({
	url: '<?php echo base_url(); ?>index.php/main/load_locations',
	success: function(data, textStatus, jqXHR){
	
		var obj = eval("(" + data + ")");
		
		populate_map_reports(obj.locations);
	}
});

function populate_map_reports(locations)
{
	var cluster_array = [];
	
	point_layer_events.removeAllFeatures();
	
	for (var i in locations)
	{
		var point_feature = generate_feature(locations[i]);
		
		cluster_array.push(point_feature);
		
		// set styles
		point_feature.style = {
				pointRadius: 16,
				fillOpacity: 0.7,
				fillColor: "#009900"
								};
	}
	
	point_layer_events.addFeatures(cluster_array);
}

// Get the locations of the complaints
$.ajax({
	url: '<?php echo base_url(); ?>index.php/main/load_locations_alert',
	success: function(data, textStatus, jqXHR){
	
		var obj = eval("(" + data + ")");
		
		populate_map_alerts(obj.locations);
	}
});

function populate_map_alerts(locations)
{
	var cluster_array = [];
	
	point_layer_alerts.removeAllFeatures();
	
	for (var i in locations)
	{
		var point_feature = generate_feature(locations[i]);
		
		cluster_array.push(point_feature);
	}
	
	point_layer_alerts.addFeatures(cluster_array);
}

function generate_feature(raw_point)
{
	// create a geometry obj
	var point = new OpenLayers.Geometry.Point(raw_point.lon, raw_point.lat);
	
	// create a feature obj with the geometry from above
	var point_feature = new OpenLayers.Feature.Vector(point);
	
	// transform the point from WGS 1984 Projection to Spherical Mercator Projection
	point.transform(fromProjection, toProjection);
	
	var content = '';
	
	for (var i in raw_point.entry)
	{
		content = content + raw_point.entry[i].title + '<br />';
	}
	
	// store some data into the feature
	point_feature.attributes = {
		name: raw_point.name,
		cname: raw_point.cname,
		ccode: raw_point.ccode,
		body : content,
		lat: raw_point.lat,
		lon: raw_point.lon
	};
	
	// style the feature
	point_feature.style = {
		pointRadius: 16,
		fillOpacity: 0.7
		// externalGraphic: 'http://localhost:8080/openlayers-cookbook/recipes/data/icons/'+icons[icon]
	}
	
	// return the feature
	return point_feature;
}








/*	GeoCoding

map.events.register('click', map, handleMapClick);

function handleMapClick(e)
{
   var lonlat = map.getLonLatFromViewPortPx(e.xy);
   
   // alert(lonlat.lat);
   // use lonlat

   // If you are using OpenStreetMap (etc) tiles and want to convert back 
   // to gps coords add the following line :-
   // lonlat.transform( map.projection,map.displayProjection);

   // Longitude = lonlat.lon
   // Latitude  = lonlat.lat
}
*/
</script>