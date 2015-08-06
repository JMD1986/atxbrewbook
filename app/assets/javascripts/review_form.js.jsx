'use strict';
var review_form = React.createClass({
  render: function () {
    return (
      <%= form_for(@opinion) do |f| %>
        <% if @opinion.errors.any? %>
          <div id="error_explanation">
            <h2><%= pluralize(@opinion.errors.count, "error") %> prohibited this brewery from being saved:</h2>

            <ul>
            <% @opinion.errors.full_messages.each do |message| %>
              <li><%= message %></li>
            <% end %>
            </ul>
          </div>
        <% end %>

        <div class="field">
          <%= f.label :rating %><br>
          <%= f.text_field :rating %>
        </div>
        <div class="field">
          <%= f.label :review %><br>
          <%= f.text_field :review %>
        </div>
        <div class="field">
          <%= f.label :like %><br>
          <%= f.text_field :like %>
        </div>
        <div class="actions">
          <%= f.submit %>
        </div>
      <% end %>

    );
  }
});

var NavLink = React.createClass({
  render: function () {
    return (<a onClick={this.clicked} className='btn btn-default'> {this.props.name}</a>);
  },

  clicked: function () {
    window.location.href = this.props.url;
  }
});
