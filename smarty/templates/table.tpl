
<h2 class="sub-header">Все объявления</h2>
<div class="table-responsive">
    <table class="table table table-hover" margin="auto" >
        <thead>
            <tr>
                <th>#id</th>
                <th>Название</th>
                <th>Описание</th>
                <th>Цена</th>
                <th>Действия</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$announcements key=id item=value}
                {if ($value->private == 0)}    
                    <tr class="success">
                    {else}
                    <tr>      
                    {/if} 

                    <td><a href="{$Location}?id={$value->id}">{$value->id}</a></td>
                    <td><a href="{$Location}?id={$value->id}">{$value->title}</a></td>
                    <td>{$value->description}</td>
                    <td>{$value->price}    руб.</td>
                    <td><a href="{$Location}?id_del={$value->id}" >Удалить</a></td>
                </tr>          
            {/foreach}
        </tbody>
    </table>
</div>