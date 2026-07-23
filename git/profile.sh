load_file "git/git-fzf.sh"

# add git to path (for git-del)
export PATH=$PATH:$BASH_CONFIGS_DIR/git:/Users/sang.park/dev/utils/git/git-plus

# Aliases
function pushb {
   local branch=$1
   
   if [[ -z "$branch" ]]
   then
      branch=$(git rev-parse --abbrev-ref HEAD)
   fi

   echo "pushing branch $branch"
   if [[ -z $PUSHB ]]
   then
      export PUSHB="$branch"
   else
      export PUSHB="$branch:$PUSHB"
   fi

   echo $PUSHB
}

function clearb {
   export PUSHB=""
}

function popb {
   if [[ -z $PUSHB ]]
   then
      echo "no branches to pop"
      return
   fi

   local branches=(${(@s/:/)PUSHB})

   local popped=(${branches[1]})

   local new_branches=${branches[@]:1}
   local new_branches=(${=new_branches})

   echo "Popping branch $popped"
   export PUSHB="${(@j/:/)new_branches}"

   git checkout $popped
}