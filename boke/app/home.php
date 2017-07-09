<?php

namespace app;

use \core\db;
use \core\core;

class home extends core
{
    function index()
    {
        $this->assign('title', '博客主页');
        $data = M('article')->selectAll();
        $this->assign('contents', $data);
        $this->display('home');  // 输出的页面  home.html
    }

    function show()
    {
        $this->assign('title', '博客详情');
        $this->assign('neirong', M('article_view')->where($_GET)->select());
        $this->display('show');
    }


    function add_good()
    {
        $o = M('article_info')->where($_GET)->select();
        $n = $o['good'] + 1;
        M()->query("update article_info set good = {$n} where article_id = {$_GET['article_id']} ");
        $this->json($n);
    }

    function min_good()
    {
        $o = M('article_info')->where($_GET)->select();
        $n = $o['good'] - 1;
        M()->query("update article_info set good = {$n} where article_id = {$_GET['article_id']} ");
        $this->json($n);
    }

    function add_bad()
    {
        $o = M('article_info')->where($_GET)->select();
        $n = $o['bad'] + 1;
        M()->query("update article_info set bad = {$n} where article_id = {$_GET['article_id']} ");
        $this->json($n);
    }

    function min_bad()
    {
        $o = M('article_info')->where($_GET)->select();
        $n = $o['bad'] - 1;
        M()->query("update article_info set bad = {$n} where article_id = {$_GET['article_id']} ");
        $this->json($n);
    }






    function oldindex()
    {
        $private = '新框架应用练习';
//        $data = M('song')->selectAll();
        $data = M('singer_list')->selectAll();
        $this->assign('songs', $data);
        $this->assign('aaa', $private);
        $this->display('home');
    }

    function x()
    {
        $this->redirect('/index.php/home');
    }

    function select()
    {
        $this->json(M('admin_user')->selectAll());
    }
}