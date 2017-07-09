<?php
namespace app;

use \core\db;
use \core\core;

class articlemanager extends core
{
    function index()
    {
        $this->assign('title', '博客编辑页');
        $this->assign('boke', M('article')->where($_GET)->select());
        $this->display('news');
    }

    function update()
    {
        M()->pdo->query("update article set content = '{$_REQUEST['content']}'  WHERE id = {$_REQUEST['id']}");
    }

    function upload()
    {
        $src = $_FILES['file']['tmp_name'];
        $filename = md5(time()) . '.' . explode('.', $_FILES['file']['name'])[1];
        $dist = 'public/img/' . $filename;
        move_uploaded_file($src, $dist);
        $this->json(Array('url' => '/boke/boke/' . $dist));
    }
}