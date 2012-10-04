<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['title'] = 'Test title';
		
		$this->template->load('default', 'map', $data);
	}
	
	public function form()
	{
		if ($this->ion_auth->logged_in())
		{
			$data['catarr'] = $this->hack_model->get_categories();
			
			$this->template->load('default', 'event_form', $data);
		}
		else
		{
			$this->template->load('default', 'alert_form');
		}
	}
	
	public function login()
	{
		$name = $this->input->post('user');
		$pass = $this->input->post('pass');
		
		$this->ion_auth->login($name, $pass);
		
		redirect('main');
	}
	
	public function logout()
	{
		$this->ion_auth->logout();
		
		redirect('main');
	}
	
	public function search_location() 
	{
	
		$name = $this->input->post('location_name');
		echo $this->hack_model->find_location($name);
	}
	
	public function add_event()
	{
		$this->hack_model->insert_case();
		
		redirect('main');
	}
	
	public function add_alert()
	{
		$this->hack_model->insert_alert();
		
		redirect('main');
	}
	
	public function get_events()
	{
		$loc_id = -1;
		
		if ($this->input->get('loc_id') !== FALSE)
		{
			$loc_id = $this->input->get('loc_id');
		}
		
		echo $this->hack_model->load_events($loc_id);
	}
	
	public function get_alerts()
	{
		$loc_id = -1;
		
		if ($this->input->get('loc_id') !== FALSE)
		{
			$loc_id = $this->input->get('loc_id');
		}
		
		echo $this->hack_model->load_alerts($loc_id);
	}
	
	public function browse()
	{
		// let's see who called us
		$data['get_data'] = '';
		
		if ($this->input->get('loc_id') !== FALSE)
		{
			$data['get_data'] = '?loc_id=' . $this->input->get('loc_id');
		}
		
		$this->template->load('default', 'browse_events', $data);
	}
	
	public function browse_alerts()
	{
		// let's see who called us
		$data['get_data'] = '';
		
		if ($this->input->get('loc_id') !== FALSE)
		{
			$data['get_data'] = '?loc_id=' . $this->input->get('loc_id');
		}
		
		$this->template->load('default', 'browse_alerts', $data);
	}
	
	public function display()
	{
		if (($this->input->get('case_id') === FALSE) && ($this->input->get('alert_id') === FALSE))
		{
			redirect('main/browse');
		}
		else
		{
			if ($this->input->get('case_id') !== FALSE)
			{
				$case = $this->hack_model->load_case($this->input->get('case_id'));
				
				$data['case'] = $case;
				
				$this->template->load('default', 'case_detail', $data);
			}
			else
			{
				$case = $this->hack_model->load_alert($this->input->get('alert_id'));
				
				$data['case'] = $case;
				
				$this->template->load('default', 'alert_detail', $data);
			}
		}
	}
	
	public function load_locations()
	{
		echo $this->hack_model->load_map_data_event();
	}
	
	public function load_locations_alert()
	{
		echo $this->hack_model->load_map_data_alert();
	}
}