{block name='footer'}
<div class="footer-container">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      <div class="col-md-12">
        <p class="text-sm-center">
          © {$smarty.now|date_format:"%Y"} - E-shop Store by Stephen. Tous droits réservés.
        </p>
      </div>
    </div>
  </div>
</div>
{/block}
