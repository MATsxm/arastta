<?php echo $header; ?>
<?php if($top) : ?>
<div id="top-block">
    <?php echo $top; ?>
</div>
<?php endif; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>
            <p><?php echo $text_email; ?></p>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                    <legend><?php echo $text_your_email; ?></legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" required autocomplete="email" />
                        </div>
                    </div>
                    <?php if ($site_key) { ?>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">&nbsp;</label>
                        <div class="col-sm-10">
                            <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                        </div>
                    </div>
                    <?php } ?>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
                    <div class="pull-right">
                        <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
                    </div>
                </div>
            </form>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php if($bottom_a) : ?>
<div id="bottom-a-block">
    <div class="container">
        <?php echo $bottom_a; ?>
    </div>
</div>
<?php endif; ?>
<?php if($bottom_b) : ?>
<div id="bottom-b-block">
    <div class="container">
        <?php echo $bottom_b; ?>
    </div>
</div>
<?php endif; ?>
<?php if($bottom_c) : ?>
<div id="bottom-c-block">
    <div class="container">
        <?php echo $bottom_c; ?>
    </div>
</div>
<?php endif; ?>
<?php echo $footer; ?>
