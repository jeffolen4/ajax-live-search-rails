class LivesearchController < ApplicationController

  def search
    @data_out = { "status" => "success", "message" => "<tr><td class='success'>Successful request</td></tr>" }

    html = ""
    count = 0
    User.all.where("upper(first_name) like ? or upper(last_name) like ?", "#{params[:ls_query].upcase}%","#{params[:ls_query].upcase}%").each do |u|
      html += "<tr><td>#{u.first_name}</td><td>#{u.last_name}</td></tr>"
      count += 1
    end

    @data_out["result"] = { "html" => html, "number_of_results" => count, "total_pages" => 1 }.to_json

    Rails.logger.debug "Data: #{@data_out.inspect}"

    respond_to do |format|
      format.json { render json: @data_out }
      format.html { render nil }
    end

  end

end
