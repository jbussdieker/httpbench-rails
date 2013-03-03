module LoadTestsHelper
  def load_test_status(load_test)
    if load_test.status == "running"
      content_tag(:span, load_test.status, :class => 'badge badge-success')
    elsif load_test.status == "queued"
      content_tag(:span, load_test.status, :class => 'badge badge-warning')
    else
      content_tag(:span, load_test.status, :class => 'badge')
    end
  end
end
