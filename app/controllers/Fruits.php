<?php

class Fruits extends Controller {
    public function index()
    {
        $this->fruitModel = $this->model('Fruit');

        $rows = "";
        foreach ($this->fruitModel->getFruit() as $fruit) {
            $fruit = (object)$fruit;

            $rows .= "
            <tr>
                <th>{$fruit->id}</th>
                <th>{$fruit->name}</th>
                <th>{$fruit->color}</th>
                <th>{$fruit->price}</th>
            </tr>
            ";
        }

        $this->view('fruits', [
            'title' => 'Fruits page',
            'fruit Rows' => $rows
        ]);
    }
}