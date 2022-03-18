<?php

class Countries extends Controller {
    public function index()
    {
        $this->countryModel = $this->model('Country');

        $rows = "";
        foreach ($this->countryModel->getCountries() as $country) {
            $country = (object)$country;

            $rows .= "
            <tr>
                <th>{$country->id}</th>
                <th>{$country->name}</th>
                <th>{$country->capitalCity}</th>
                <th>{$country->continent}</th>
                <th>{$country->population}</th>
            </tr>
            ";
        }

        $this->view('countrys', [
            'title' => 'Countrys page',
            'country Rows' => $rows
        ]);
    }
}

