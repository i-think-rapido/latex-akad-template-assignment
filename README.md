# latex-akad-template-assignment
Latex Template for Assignments at AKAD University

*WARNING: this is work in progress*

## Create Your Own Document

- Fork repo
- Checkout your fork
- Create own branch ```git checkout -b your_branch_name``` and keep content editing in this branch
- When you want to commit your content changes do ```git push -u origin your_branch_name``` for the first time and later just only ```git push```

- to customize title page, keep ```config-default.tex``` unchanged. Instead copy it to ```config.tex``` and only make changes to this new file.
- you also need to explicitely force git to keep track of ```config.tex``` by typing ```git add -f config.tex```

### Following git repo structure of your fork is recommended:

Create a second remote upstream binding:

      git remote add upstream git@github.com:thinkrapido/latex-akad-template-assignment.git

Verify with

      git remote -v

Now you should have 'origin' and 'upstream' repo as remote repos configured

      
          * af4 -> 'your_branch_name' your document with custom content and make sure that you push it to your forked repo
          .
          .
          .    
          * 642
         / 
         * 744 -> your modified template master 'master_modified' and make sure that you push it to your forked repo
         .
         .
         . 
         * cb3
       /
      * 234 -> branch 'master' and keep it untouched, so you can easyly merge from original source 'upstream'
      .
      .
      . 
      * 324
      * 3ad inital commit

### Recommendation

You should seriously get familiar with the workflow of manageing two upstream repos. 

It will tremendously ease your life while writing content and modifing the template master. 

# Install packages

## Debian / Ubuntu

      sudo apt install -y texlive-fonts-recommended texlive-extra-utils texlive-lang-english texlive-lang-german texlive-luatex texlive-latex-extra texlive-bibtex-extra biber