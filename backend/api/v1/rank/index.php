<?php
//数据库配置

$config = array(
    'host' => '127.0.0.1',
    'user' => 'xgbxgb',
    'pass' => 'xgbxgb',
    'db' => 'xgbxgb'
);

//配置协议
//header('Content-Type:application/json');

//连接数据库
$conn = new mysqli($config['host'],$config['user'],$config['pass'],$config['db']);

if ($conn->connect_error){
    exit(json_encode(array('code'=>'0','msg'=>'数据库连接失败')));
}

//判断数据类型
if ($_SERVER['REQUEST_METHOD'] == "POST"){
    $name = $_POST['name'];
    $score = $_POST['score'];
    $time = $_POST['time'];

    $result = $conn->prepare("INSERT INTO game_rank (nickname, score, time) VALUES (?,?,?)");
    $result->bind_param('sii',$name,$score,$time);
    $result->execute();

    $rank = array();
    $id = $result->insert_id;
    $game_rank = $conn->query('SELECT * FROM game_rank ORDER BY score DESC ,time ');
    $rank_id = 1;
    while ($row = $game_rank->fetch_assoc()){
        if ($row['id'] == $id){
            $rank['rank'] = $id;
            break;
        }
        $rank_id += 1;
    }
    $game_rank->close();
    $result->close();

    exit(json_encode($rank));
}else{
    //获取数据
    $game_rank = $conn->query('SELECT * FROM game_rank ORDER BY score DESC ,time ');
    $rank = array();
    $row_json = array();
    $rank_id = 1;
    while ($row = $game_rank->fetch_assoc()){
        $row_json['id'] = $row['id'];
        $row_json['rank'] = $rank_id;
        $row_json['nickname'] = $row['nickname'];
        $row_json['score'] = $row['score'];
        $rank_id += 1;
        $rank[] = $row_json;
    }
    $rank_json = json_encode($rank);
    $game_rank->close();
    exit($rank_json);
}