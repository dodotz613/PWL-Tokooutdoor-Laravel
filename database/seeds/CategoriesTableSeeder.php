<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {


        \DB::table('categories')->delete();

        \DB::table('categories')->insert(array (
            0 =>
            array (
                'id' => 1,
                'name' => 'Carrier',
                'type' => 'Carrier',
                'created_at' => '2019-02-09',
                'updated_at' => '2019-02-09',
            ),
            1 =>
            array (
                'id' => 2,
                'name' => 'Jaket',
                'type' => 'Jaket',
                'created_at' => '2019-02-09',
                'updated_at' => '2019-02-09',
            ),
            2 =>
            array (
                'id' => 3,
                'name' => 'Equipment',
                'type' => 'Equipment',
                'created_at' => '2019-02-09',
                'updated_at' => '2019-02-09',
            ),
            3 =>
            array (
                'id' => 4,
                'name' => 'Sepatu',
                'type' => 'Sepatu',
                'created_at' => '2019-02-09',
                'updated_at' => '2019-02-09',
            ),
        ));


    }
}
