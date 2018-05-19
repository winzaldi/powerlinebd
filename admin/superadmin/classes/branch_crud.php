<?php

include_once('../../../super_classes/db_connection.php');
include_once('../../../super_classes/timer.php');

class BranchCrudOperation extends DbConfig
{
    public function __construct()
    {
        parent::__construct();
    }

    public $timer_id, $brancher_id, $branch_id_check, $status_message;

    //fetching time_id from timer class;
    public function fetch_time()
    {

      $timing = new Timer();
      $this->timer_id = $timing->create_timer_id();
      return $this->timer_id;

    }

    //check if the branch id is exist on the database;
    public function check_branch_id($brancher_id)
    {
      $query = "SELECT sl_num FROM office_branch WHERE branch_id='$this->brancher_id'";
      $result = $this->connection->query($query);
      if($result->num_rows == 0) {
        return true;
      }else{
        return false;
      }
    }

    //creating a new branch on the database;
    public function create_branch($b_name, $e_name, $c_name, $adrs)
    {

      //calling the timer fetch function;
      $this->timer_id = $this->fetch_time();

      //create and check branch_id;
      $this->brancher_id = mt_rand();

      $branch_id_check = $this->check_branch_id($this->brancher_id);

      if($this->branch_id_check){
        $this->brancher_id = 'Branch ID overflow. Please try again';
        return $this->brancher_id;
      }else{

        //check if timer_id created properly
        if(is_numeric($this->timer_id)){

          $query = "INSERT INTO `office_branch`(`branch_id`, `name`, `address`, `email`, `contact_number`, `timer_id`)
                    VALUES ('$this->brancher_id','$b_name','$adrs','$e_name','$c_name','$this->timer_id')";
          if($this->connection->query($query)){
            $this->status_message = 'Successfully created a new branch';
            return $this->status_message;
          }else{
            $this->status_message = 'Problem creating new branch. Please try again';
            return $this->status_message;
          }


        }else{
          return $this->timer_id;
        }

      }

    }


}


?>