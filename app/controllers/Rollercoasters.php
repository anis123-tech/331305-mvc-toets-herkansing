<?php

class Rollercoasters extends Controller {
    public function index()
    {
        $this->RollercoasterModel = $this->model('Rollercoaster');

        $rows = "";
        foreach ($this->RollercoasterModel->getRollercoaster() as $rollercoaster) {
            $rollercoaster = (object)$rollercoaster;

            $rows .= "
            <tr>
                <th>{$rollercoaster->id}</th>
                <th>{$rollercoaster->nameRollerCoaster}</th>
                <th>{$rollercoaster->nameAmusementPark}</th>
                <th>{$rollercoaster->Country}</th>
                <th>{$rollercoaster->topspeed}</th>
                <th>{$rollercoaster->height}</th>
            </tr>
            ";
        }

        $this->view('rollercoaster', [
            'title' => 'Rollercoaster page',
            'rollercoasterRows' => $rows
        ]);
    }
}

