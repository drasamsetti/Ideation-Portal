<?php
	include "header-main.php";
        $auth=$_SESSION['auth_no'];

if($auth==0)
{
    echo "<h1>you are not authorised ";
    die;
}

	if($logged)
		{
			$dash='private';
			if($dash=='public')
			{
				$account=0;
			}
			else
			{
				$account=$_SESSION['account'];
				$acc_query="select name from account_master where id =". $account;
	            $acc_result=mysql_query($acc_query) or die ("Could not execute query ($acc_query) because ".mysql_error());
                $acc_row=mysql_fetch_array($acc_result);
			}
			?>
				<!-- dashboard code starts -->
				<div style="border: 2px solid rgb(170, 170, 170); position: absolute; visibility: hidden; cursor: move; z-index: 999; height: 25px; width: 25px;" id="ygddfdiv"><div style="height: 100%; width: 100%; background-color: rgb(204, 204, 204); opacity: 0;"></div></div>
				<div class="FixedWidth">
					<div id="Column1">
						<div id="Rec1" class="Rec">
							<?php
							if($_SESSION['role']=="-1")
							{
								$dash="public";
							}
							if($dash=='public')
							{?>
							<div id="Rec1Handle" class="Handle">Popular Challenges</div>
							<?php
							}
							else
							{?>
								<div id="Rec1Handle" class="Handle">Popular Challenges for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									$query="select a.theme_id, count(a.idea_id) as counts, b.name as theme_name, c.name from idea_master a, theme_master b, emp_master c where a.theme_id=b.id and b.creator=c.short_id and b.status='open' and b.account=$account group by a.theme_id order by counts desc limit 0,5";
									$result=mysql_query($query) or die ("Could not execute query ($query) because ".mysql_error());
									if(mysql_num_rows($result)==0)
									{
										echo "Currently there are no active public themes";
									}
									while($row=mysql_fetch_array($result))
									{
										echo "<a href=\"theme-details.php?id=".$row['theme_id']."\">".$row['theme_name']."</a> has <b>".$row['counts'];
										if($row['counts']>1)
										{
											echo "</b> ideas. <br />Submitted by ".$row['name'];
										}
										else
										{
											echo "</b> idea. <br />Submitted by ".$row['name'];
										}
										echo "<br /><br />";
									}
								?>
							</div>
						</div>
						<div id="Rec2" class="Rec">
							<?php
							if($dash=='public')
							{?>
							<div id="Rec2Handle" class="Handle">Recent Challenges</div>
							<?php
							}
							else
							{?>
								<div id="Rec2Handle" class="Handle">Recent Challenges for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									$query="SELECT id, name, creator, date FROM `theme_master` where status='open' and account=$account order by date desc limit 0,5";
									$result=mysql_query($query) or die ("Could not execute query ($query) because ".mysql_error());
									if(mysql_num_rows($result)==0)
									{
										echo "Currently there are no active public themes";
									}
									while($row=mysql_fetch_array($result))
									{
										echo "<a href=\"theme-details.php?id=".$row['id']."\">".$row['name']."</a> submitted by ".$row['creator']." on <b>".$row['date']."</b><br><br>";
									}
								?>
							</div>
						</div>
					</div>
					<div id="Column2">
						<div id="Rec3" class="Rec">
							<?php
							if($dash=='public')
							{?>
							<div id="Rec3Handle" class="Handle">Highest Rated Ideas</div>
							<?php
							}
							else
							{?>
								<div id="Rec3Handle" class="Handle">Highest Rated Ideas for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									$query="SELECT a.idea_id, c.id as theme_id, c.name as theme_name, b.idea, b.poster, avg(a.rating) as rating from rating_master a, idea_master b, theme_master c, emp_master d where a.idea_id=b.idea_id and c.status='open' and b.theme_id=c.id and c.creator=d.short_id and c.account=$account group by a.idea_id order by rating desc limit 0,5";
									$result=mysql_query($query) or die ("Could not execute query ($query) because ".mysql_error());
									if(mysql_num_rows($result)==0)
									{
										echo "Currently there are no active public themes";
									}
									while($row=mysql_fetch_array($result))
									{
										echo substr($row['idea'],0,20)."...</a> rated <b>".number_format($row['rating'],1)."</b><br>Posted By ".$row['poster']." on theme <a href=\"theme-details.php?id=".$row['theme_id']."\">{$row['theme_name']}</a>"."<br><br>";
									}
								?>
							</div>
						</div>
						<div id="Rec4" class="Rec">
							<?php
							if($dash=='public')
							{?>
							<div id="Rec4Handle" class="Handle">Most Rated Ideas</div>
							<?php
							}
							else
							{?>
								<div id="Rec4Handle" class="Handle">Most Rated Ideas for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									$query="SELECT a.idea_id, c.id as theme_id, c.name as theme_name, b.idea, b.poster, count(a.rating) as counts from rating_master a, idea_master b, theme_master c, emp_master d where a.idea_id=b.idea_id and c.status='open' and b.theme_id=c.id and c.creator=d.short_id and c.account=$account group by a.idea_id order by counts desc limit 0,5";
									$result=mysql_query($query) or die ("Could not execute query ($query) because ".mysql_error());
									if(mysql_num_rows($result)==0)
									{
										echo "Currently there are no active public themes";
									}
									while($row=mysql_fetch_array($result))
									{
										echo substr($row['idea'],0,20)."...</a> rated <b>".$row['counts']."</b> times<br>Posted By ".$row['poster']." on theme <a href=\"theme-details.php?id=".$row['theme_id']."\">{$row['theme_name']}</a>"."<br><br>";
									}
								?>
							</div>
						</div>
					</div>
					<div id="Column3">
						<div id="Rec5" class="Rec">
							<?php
							if($dash=='public')
							{?>
							<div id="Rec5Handle" class="Handle">Concluding Challenges</div>
							<?php
							}
							else
							{?>
								<div id="Rec5Handle" class="Handle">Concluding Challenges for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									$query="SELECT id, name, creator, exp_date FROM `theme_master` where status='open' and exp_date>now() and account=$account order by exp_date desc limit 0,5";
									$result=mysql_query($query) or die ("Could not execute query ($query) because ".mysql_error());
									if(mysql_num_rows($result)==0)
									{
										echo "Currently there are no active public themes";
									}
									while($row=mysql_fetch_array($result))
									{
										echo "<a href=\"theme-details.php?id=".$row['id']."\">".$row['name']."</a> is closing on <b>".$row['exp_date']."</b><br>Submitted by ".$row['creator']."<br><br>";
									}
								?>
							</div>
						</div>
						<div id="Rec6" class="Rec">
							<?php
							if($dash=='public')
							{?>
							<div id="Rec6Handle" class="Handle">Statistics</div>
							<?php
							}
							else
							{?>
								<div id="Rec6Handle" class="Handle">Statistics for <?php echo $acc_row['name']; ?></div>
							<?php
							}
							?>
							<div class="Info">
								<?php
									if($dash=='public')
									{
										$query1="select count(id) as counts from theme_master where status='open' and account=$account";
										$query2="select count(prob_id) as counts from problem_master where status='open'";
										$query3="select count(idea_id) as counts from idea_master";
										$query4="select count(short_id) as counts from emp_master";

									}
									else
									{
										$query1="select count(id) as counts from theme_master where account=$account and status='open'";
										$query2="select count(prob_id) as counts from problem_master where status='open'";
										$query3="select count(a.idea_id) as counts from idea_master a, theme_master b where a.theme_id=b.id and b.account='$account'";
										$query4="select count(short_id) as counts from emp_master where account=$account";
									}
									$result1=mysql_query($query1) or die ("Could not execute query ($query) because ".mysql_error());
									$row1=mysql_fetch_array($result1);
									$result2=mysql_query($query2) or die ("Could not execute query ($query) because ".mysql_error());
									$row2=mysql_fetch_array($result2);
									$result3=mysql_query($query3) or die ("Could not execute query ($query) because ".mysql_error());
									$row3=mysql_fetch_array($result3);
									$result4=mysql_query($query4) or die ("Could not execute query ($query) because ".mysql_error());
									$row4=mysql_fetch_array($result4);
									if($dash=='public')
									{
									echo "<a href=\"view-themes.php?status=open&type=public\">Total Open Themes</a>: <b>".$row1['counts']."</b><br><br>";
									}
									else
									{
									echo "<a href=\"view-themes.php?status=open&type=private\">Total Open Themes</a>: <b>".$row1['counts']."</b><br><br>";
									}
									echo "<a href=\"view-openidea.php?status=open\">Total Open Ideas</a>: <b>".$row2['counts']."</b><br><br>";
									echo "Total Ideas: <b>".$row3['counts']."</b><br><br>";
									echo "Active Users: <b>".$row4['counts']."</b>";
								?>
							</div>
						</div>
					</div>
				</div>
                                <?php } ?>
				<!-- dashboard code ends -->