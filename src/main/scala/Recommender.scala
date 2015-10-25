import com.amazonaws.services.lambda.runtime.Context


/**
 * Created by d046179 on 10/25/15.
 */

class Recommender {

  def recommend(answers: Answers, ctx: Context): Recommendation = {
    ctx.getLogger.log("got input:" + answers)
    new Recommendation(0)
  }

}
