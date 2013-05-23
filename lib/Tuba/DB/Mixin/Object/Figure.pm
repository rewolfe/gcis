package Tuba::DB::Object::Figure;
# Tuba::DB::Mixin::Object::Figure;

sub uri {
    my $s = shift;
    my $c = shift;
    return unless $s->chapter_obj;
    return $c->url_for(
        'show_figure',
        {
            figure_identifier => $s->identifier,
            report_identifier  => $s->chapter_obj->report_obj->identifier
        }
    );
}

1;

