using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrendanKallioA1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         protected void summaryButton_Click(object sender, EventArgs e)
        {
            //variables
            const int NUM_OF_GAMES = 4;

            int wins = 0;
            int losses = 0;
            int totalPointsScored = 0;
            int totalPointsAllowed = 0; 
            int totalSpectators = 0;

            RadioButtonList[] winsAndLosses = { RadioButtonList1, RadioButtonList2, RadioButtonList3, RadioButtonList4 };
           
            TextBox[] pointsScoredTxtBx = { pointsScoredTextBox1, pointsScoredTextBox2, pointsScoredTextBox3, pointsScoredTextBox4 };

            TextBox[] pointsAllowedTxtBx = { pointsAllowedTextBox1, pointsAllowedTextBox2, pointsAllowedTextBox3, pointsAllowedTextBox4 };

            TextBox[] spectatorsTxtBx = { spectatorsTextBox1, spectatorsTextBox2, spectatorsTextBox3, spectatorsTextBox4 };

                for (int i = 0; i < winsAndLosses.Length; i++)
                {
                    if(winsAndLosses[i].SelectedIndex == 0)
                    {
                        wins++;
                    } 
                    else
                    {
                        losses++;
                    }
                } 

                gamesWonLabel.Text = "Games Won: " + wins;
                gamesLostLabel.Text = "Games Lost: " + losses;
                winPercentageLabel.Text = "Win Percentage: " + ((float)wins / NUM_OF_GAMES);

                totalPointsScored = int.Parse(pointsScoredTxtBx[0].Text) + int.Parse(pointsScoredTxtBx[1].Text) + int.Parse(pointsScoredTxtBx[2].Text) + int.Parse(pointsScoredTxtBx[3].Text);
                totalPointsScoredLabel.Text = "Total Points Scored: " + totalPointsAllowed;

                totalPointsAllowed = int.Parse(pointsAllowedTxtBx[0].Text) + int.Parse(pointsAllowedTxtBx[1].Text) + int.Parse(pointsAllowedTxtBx[2].Text) + int.Parse(pointsAllowedTxtBx[3].Text);
                totalPointsAllowedLabel.Text = "Total Points Allowed: " + totalPointsAllowed;                

                pointDifferentialLabel.Text = "Point Differential: " + (totalPointsScored - totalPointsAllowed);

                totalSpectators = int.Parse(spectatorsTxtBx[0].Text) + int.Parse(spectatorsTxtBx[1].Text) + int.Parse(spectatorsTxtBx[2].Text) + int.Parse(spectatorsTxtBx[3].Text);
                totalSpectatorsLabel.Text = "Total Spectators: " + totalSpectators;

                averageSpectatorsLabel.Text = "Average Spectators: " + ((float)totalSpectators / NUM_OF_GAMES);
        } 
    }
}