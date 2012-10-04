<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class hack_model extends CI_Model {

	function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
	
	function find_location($name)
	{
		$this->db->select('fe_location.name as name, fe_county.name as county, fe_location.id as id');
		$this->db->from('fe_location');
		$this->db->like('fe_location.name', $name, 'after');
		$this->db->join('fe_county', 'fe_county.id = fe_location.county_id');
		$this->db->order_by('fe_location.name');
		
		$query = $this->db->get();
		
		if ($query->num_rows() > 0) 
		{
			$output = '<ul>';
			foreach ($query->result() as $location) 
			{
				$output .= '<li id="'. $location->id . '">' . $location->name . ', ' . $location->county . '</li>';
			}
			$output .= '</ul>';
			
			$query->free_result();
			
			return $output;
		} else 
		{
			$query->free_result();
			
			return '<ul></ul>';
		}
	}
	
	function get_categories()
	{
		$catarr = array();
		
		$this->db->select('id, name');
		$this->db->from('fe_category');
		$this->db->order_by('name');
		
		$query = $this->db->get();
		
		if ($query->num_rows() > 0) 
		{
			foreach ($query->result() as $category) 
			{
				$data['name'] = $category->name;
				$data['id'] = $category->id;

				array_push($catarr, $data);
			}
		}
		
		$query->free_result();
		
		return $catarr;
	}
	
	function insert_case()
	{
		$data = array(
		   'cat_id' => $this->input->post('category_name') ,
		   'loc_id' => $this->input->post('hidden_location_name') ,
		   'date' => $this->input->post('date_name') ,
		   'title' => $this->input->post('title_name') ,
		   'summary' => '' ,
		   'content' => $this->input->post('content_name')
		);
		
		$this->db->insert('fe_case', $data);
	}
	
	function insert_alert()
	{
		/*
		$data = array(
		   'title' => $this->input->post('title_name') ,
		   'content' => $this->input->post('content_name'),
		   'contact' => $this->input->post('contact_name'),
		   'date' => 'CURDATE()'
		);
		
		$this->db->insert('fe_alert', $data);
		*/
		
		$title   = addslashes($this->input->post('title_name'));
		$content = addslashes($this->input->post('content_name'));
		$contact = addslashes($this->input->post('contact_name'));
		$loc_id  = $this->input->post('hidden_location_name');
		$date    = 'CURDATE()';
		
		$query = $this->db->query(
					'INSERT INTO fe_alert (title, content, contact, date, loc_id) ' . 
					'VALUES ("' . $title . '", "' . $content . '", "' . $contact . '", curdate(), ' . $loc_id . ')'
				);
	}
	
	function load_events($loc_id)
	{
		$output  = '{ "aaData": [';
		
		$extra_sql = '';
		
		if ($loc_id > 0)
		{
			$extra_sql = ' WHERE fc.loc_id = ' . $loc_id . ' ';
		}
		
		$query1 = $this->db->query(
					'SELECT fc.id, fl.name as lname, fc.date, fc.title, fcat.name as cname ' .
					'FROM fe_case as fc ' .
					'INNER JOIN fe_location as fl on fc.loc_id = fl.id ' .
					'INNER JOIN fe_category as fcat on fc.cat_id = fcat.id ' .
					$extra_sql .
					'ORDER BY fc.date desc, fl.name'
				);
				
		$is_first = true;
		
		foreach ($query1->result() as $case) 
		{
			if ($is_first !== true)
				$output .= ',';
			else
				$is_first = false;
				
			$output .= '[';
			$output .= 		'"<a href = \"' . base_url() . 'index.php/main/display?case_id=' . $case->id . '\">' . $case->title . '</a>", ';
			//$output .= 		'"' . $case->title . '", ';
			$output .= 		'"' . $case->lname . '", ';
			$output .= 		'"' . $case->date . '", ';
			$output .= 		'"' . $case->cname . '"';
			$output .= ']';
		}
		
		$query1->free_result();
		
		$output .= ']}';
		
		return $output;
	}
	
	function load_alerts($loc_id)
	{
		$output  = '{ "aaData": [';
		
		$extra_sql = '';
		
		if ($loc_id > 0)
		{
			$extra_sql = ' WHERE fa.loc_id = ' . $loc_id . ' ';
		}
		
		$query1 = $this->db->query(
					'SELECT fa.id, fa.title, fa.date, fl.name ' .
					'FROM fe_alert as fa ' .
					'INNER JOIN fe_location as fl ON fa.loc_id = fl.id ' .
					$extra_sql . 
					'ORDER BY fa.date desc, fa.title'
				);
				
		$is_first = true;
		
		foreach ($query1->result() as $alert) 
		{
			if ($is_first !== true)
				$output .= ',';
			else
				$is_first = false;
				
			$output .= '[';
			$output .= 		'"<a href = \"' . base_url() . 'index.php/main/display?alert_id=' . $alert->id . '\">' . $alert->title . '</a>", ';
			$output .= 		'"' . $alert->name . '", ';
			$output .= 		'"' . $alert->date . '"';
			$output .= ']';
		}
		
		$query1->free_result();
		
		$output .= ']}';
		
		return $output;
	}
	
	function load_map_data_event()
	{
		$output = '{"locations" : [';
		
		$query1 = $this->db->query('select distinct loc_id from fe_case');
		
		$is_first = true;
		
		foreach ($query1->result() as $loc) 
		{
			if ($is_first !== true)
				$output .= ',';
			else
				$is_first = false;
			
			$query2 = $this->db->query(
						'SELECT fl.name as loc_name, fc.name as county_name, fc.code as county_code, fl.lat, fl.lng ' .
						'FROM   fe_location as fl ' .
						'INNER JOIN fe_county as fc ON fl.county_id = fc.id ' .
						'WHERE fl.id = ' . $loc->loc_id
					);

			$tmp_arr = $query2->result();
			$loc_det = $tmp_arr[0];
					
			$output .= '{';
			$output .= 		'"name" : "' . $loc_det->loc_name . '", ';
			$output .= 		'"cname" : "' . $loc_det->county_name . '", ';
			$output .= 		'"ccode" : "' . $loc_det->county_code . '", ';
			$output .= 		'"lat" : "' . $loc_det->lat . '", ';
			$output .= 		'"lon" : "' . $loc_det->lng . '", ';
			$output .=		'"entry" : [';
			
			$query2->free_result();
			
			$query2 = $this->db->query(
						'SELECT fc.id, fc.title, fc.content, fc.date, fcat.name as cat_name ' .
						'FROM fe_case as fc ' .
						'INNER JOIN fe_category as fcat ON fc.cat_id = fcat.id ' .
						'WHERE fc.loc_id =  ' . $loc->loc_id . ' ' .
						'ORDER BY fc.date desc '
					);
					
			$is_first2 = true;
			
			$idx = 0;
			
			foreach ($query2->result() as $case)
			{
				if ($is_first2 !== true)
					$output .= ',';
				else
					$is_first2 = false;
					
				if ($idx == 5)
				{
					$output .= '{';
					$output .= 		'"title" : "<a href = \"' . base_url() . 'index.php/main/browse?loc_id=' . $loc->loc_id . '\">see all >></a>", ';
					//$output .= 		'"content" : "' . addslashes($case->content) . '", ';
					$output .= 		'"date" : "' . $case->date . '", ';
					$output .= 		'"category" : "' . $case->cat_name . '"';
					$output .=	'}';
				
					break;
				}
				
				$output .= '{';
				$output .= 		'"title" : "<a href = \"' . base_url() . 'index.php/main/display?case_id=' . $case->id . '\">' . addslashes($case->title) . '</a>", ';
				//$output .= 		'"content" : "' . addslashes($case->content) . '", ';
				$output .= 		'"date" : "' . $case->date . '", ';
				$output .= 		'"category" : "' . $case->cat_name . '"';
				$output .=	'}';
				
				$idx = $idx + 1;
			}
			
			$query2->free_result();
			
			$output .=		']';
			$output .= '}';
		}
		
		$query1->free_result();
		
		$output .= ']}';
		
		return $output;
	}
	
	function load_map_data_alert()
	{
		$output = '{"locations" : [';
		
		$query1 = $this->db->query('select distinct loc_id from fe_alert');
		
		$is_first = true;
		
		foreach ($query1->result() as $loc) 
		{
			if ($is_first !== true)
				$output .= ',';
			else
				$is_first = false;
			
			$query2 = $this->db->query(
						'SELECT fl.name as loc_name, fc.name as county_name, fc.code as county_code, fl.lat, fl.lng ' .
						'FROM   fe_location as fl ' .
						'INNER JOIN fe_county as fc ON fl.county_id = fc.id ' .
						'WHERE fl.id = ' . $loc->loc_id
					);
					
			$tmp_arr = $query2->result();
			$loc_det = $tmp_arr[0];
					
			$output .= '{';
			$output .= 		'"name" : "' . $loc_det->loc_name . '", ';
			$output .= 		'"cname" : "' . $loc_det->county_name . '", ';
			$output .= 		'"ccode" : "' . $loc_det->county_code . '", ';
			$output .= 		'"lat" : "' . $loc_det->lat . '", ';
			$output .= 		'"lon" : "' . $loc_det->lng . '", ';
			$output .=		'"entry" : [';
			
			$query2->free_result();
			
			$query2 = $this->db->query(
						'SELECT id, title, date ' .
						'FROM fe_alert ' .
						'WHERE loc_id =  ' . $loc->loc_id . ' ' .
						'ORDER BY date desc '
					);
					
			$is_first2 = true;
			
			$idx = 0;
			
			foreach ($query2->result() as $case)
			{
				if ($is_first2 !== true)
					$output .= ',';
				else
					$is_first2 = false;
					
				if ($idx == 5)
				{
					$output .= '{';
					$output .= 		'"title" : "<a href = \"' . base_url() . 'index.php/main/browse_alerts?loc_id=' . $loc->loc_id . '\">see all >></a>", ';
					$output .= 		'"date" : "' . $case->date . '"';
					$output .=	'}';
				
					break;
				}
				
				$output .= '{';
				$output .= 		'"title" : "<a href = \"' . base_url() . 'index.php/main/display?alert_id=' . $case->id . '\">' . $case->title . '</a>", ';
				$output .= 		'"date" : "' . $case->date . '"';
				$output .=	'}';
				
				$idx = $idx + 1;
			}
			
			$query2->free_result();
			
			$output .=		']';
			$output .= '}';
		}
		
		$query1->free_result();
		
		$output .= ']}';
		
		return $output;
	}
	
	function load_case($case_id)
	{
		$query = $this->db->query(
						' SELECT fl.name as lname, fc.title, fc.content, fc.date, fcat.name as cname ' . 
						' FROM   fe_case as fc ' . 
						' INNER JOIN fe_category as fcat ON fc.cat_id = fcat.id ' .
						' INNER JOIN fe_location as fl   ON fc.loc_id = fl.id ' .
						' WHERE fc.id = ' . $case_id
				);
							
		$tmp_arr = $query->result();
		$case = $tmp_arr[0];
		
		$data['title'] = $case->title;
		$data['content'] = $case->content;
		$data['date'] = $case->date;
		$data['cname'] = $case->cname;
		$data['lname'] = '' . $case->lname;
			
		$query->free_result();
		
		return $data;
	}
	
	function load_alert($alert_id)
	{
		$query = $this->db->query(
						' SELECT fl.name as lname, fc.title, fc.content, fc.date ' . 
						' FROM   fe_alert as fc ' . 
						' INNER JOIN fe_location as fl   ON fc.loc_id = fl.id ' .
						' WHERE fc.id = ' . $alert_id
				);
						
		$tmp_arr = $query->result();
		$case = $tmp_arr[0];
		
		$data['title'] = $case->title;
		$data['content'] = $case->content;
		$data['date'] = $case->date;
		$data['lname'] = '' . $case->lname;
			
		$query->free_result();
		
		return $data;
	}
}