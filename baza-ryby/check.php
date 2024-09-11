<?php
$mysqli = new mysqli("localhost","root","","wedkarstwo");


$status = 'error';
// Check connection
if ($mysqli -> connect_errno) {
  echo json_encode(["status" => "error", "message" => "Failed to connect to MySQL: " . $mysqli -> connect_error]);
  exit();
} else {
    // Odbierz dane JSON
    $data = json_decode(file_get_contents('php://input'), true);
    $sql = $data['sql'];
    $taskName = $data['taskName'];
   
    try {
        $result = $mysqli->query($sql);
        if ($result) {
          switch($taskName){
            case 'Zadanie 1':
              $status = Zadanie1($result);
              break;
            case 'Zadanie 2':
              $status = Zadanie2($result);
              break;
            case 'Zadanie 3':
              $status = Zadanie3($result);
              break;
            case 'Zadanie 4':
              $status = Zadanie4($result);
              break;
            case 'Zadanie 5':
              $status = Zadanie5($result);
              break;
            case 'Zadanie 6':
              $status = Zadanie6($result);
              break;
            case 'Zadanie 7':
              $status = Zadanie7($result);
              break;
            case 'Zadanie 8':
              $status = Zadanie8($result);
              break;
            case 'Zadanie 9':
              $status = Zadanie9($result);
              break;
            case 'Zadanie 10':
              $status = Zadanie10($result);
              break;
            case 'Zadanie 11':
              $status = Zadanie11($result);
              break;
            case 'Zadanie 12':
              $status = Zadanie12($result);
              break;
            
            default:
              $status = 'error69';
          }

        } else {
          $status = 'error';
        }
    } catch (Exception $e) {
      $status = 'error';
    }
    echo json_encode(["status" => $status]);
}

function Zadanie1($result){
  if ($result->num_rows == 154) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_ryby', 'nazwa', 'gatunek', 'waga', 'dlugosc'];
      if (count($row) !== count($requiredColumns)) {
        return 'error';
        }
      foreach ($requiredColumns as $column) {
        if (!isset($row[$column])) {
          return 'error';
        }
      }
      return 'ok';
    }
  }
  return 'error';
}
function Zadanie2($result){
  if ($result->num_rows == 60) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_ryby', 'nazwa', 'gatunek', 'waga', 'dlugosc'];
      if (count($row) !== count($requiredColumns)) {
        return 'error';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error';
          }
          // echo $row['waga'] ."<br>";
          if($row['waga'] < 2){
            return 'error';
          }
      } 
    }
    return 'ok';
  }
  return 'error';
}

function Zadanie3($result){
  if ($result->num_rows == 98) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_ryby', 'nazwa', 'gatunek', 'waga', 'dlugosc'];
      if (count($row) !== count($requiredColumns)) {
        return 'error';
    }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error';
          }
          if($row['waga'] < 0.5 || $row['waga'] > 3.2){
            return 'error';
          }
      } 
    }
    return 'ok';
  }
  return 'error';
}

function Zadanie4($result){
  if ($result->num_rows == 54) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_ryby', 'nazwa', 'gatunek', 'waga', 'dlugosc'];
      if (count($row) !== count($requiredColumns)) {
        return 'error';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error';
          }
          if($row['waga'] < 2 || $row['waga'] > 4.9 || $row['dlugosc'] < 20){
            return 'error';
          }
      } 
    }
    return 'ok';
  }
  return 'error';
}

function Zadanie5($result){
  if ($result->num_rows == 3) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_wedkarza', 'imie', 'nazwisko', 'miasto'];
      if (count($row) !== count($requiredColumns)) {
        return 'error';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error';
          }
          if($row['nazwisko'] != 'Kowalski' || ($row['miasto'] != 'Warszawa' && $row['miasto'] != 'Gdynia')){
            return 'error2';
          }
      } 
    }
    return 'ok';
  }
  return 'error3';
}


function Zadanie6($result){
  if ($result->num_rows == 3) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['id_wedkarza', 'imie', 'nazwisko', 'miasto', 'wiek'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
          if(($row['nazwisko'] != 'Kowalski' && $row['nazwisko'] != 'Kowalska') || ($row['miasto'] != 'Warszawa' && $row['miasto'] != 'Lublin') || $row['wiek'] < 30){
            return 'error3';
          }
      } 
    }
    return 'ok';
  }
  return 'error4';
}

function Zadanie7($result){
  if ($result->num_rows == 36) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['imie', 'nazwisko'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
      } 
    }
    return 'ok';
  }
  return 'error3';
}

function Zadanie8($result){
  if ($result->num_rows == 23) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['imie', 'nazwisko', 'ilosc_ryb'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
          if($row['ilosc_ryb'] < 3){
            return 'error3';
          }
      } 
    }
    return 'ok';
  }
  return 'error4';
}

function Zadanie9($result){
  if ($result->num_rows == 1) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['pechowi_wedkarze'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
          if($row['pechowi_wedkarze'] === 59){
            return 'error3';
          }
      } 
    }
    return 'ok';
  }
  return 'error4';
}

function Zadanie10($result){
  if ($result->num_rows == 7) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['imie', 'nazwisko'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
      } 
    }
    return 'ok';
  }
  return 'error3';
}

function Zadanie11($result){
  if ($result->num_rows == 7) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['imie', 'nazwisko', 'ilosc_ryb'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
      } 
    }
    return 'ok';
  }
  return 'error3';
}

function Zadanie12($result){
  if ($result->num_rows == 4) {
    while($row = $result->fetch_assoc()) {
      $requiredColumns = ['nazwa', 'liczba_wystapien'];
      if (count($row) !== count($requiredColumns)) {
        return 'error1';
        }
        foreach ($requiredColumns as $column) {
          if (!isset($row[$column])) {
            return 'error2';
          }
      } 
    }
    return 'ok';
  }
  return 'error3';
}