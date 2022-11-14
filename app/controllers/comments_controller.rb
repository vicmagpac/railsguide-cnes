class CommentsController < ApplicationController

  def create
    @estabelecimento = Estabelecimento.find(params[:estabelecimento_id])
    $comment = @estabelecimento.comments.create(comment_params)

    redirect_to estabelecimento_path(@estabelecimento)
  end

  private 
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
