#let cursussen = csv("cursussen.csv")
#let marginLeft = 14mm

#let header(author, year, course, sem) = {
  let code = none
  for (course_name, course_code, study_points) in cursussen {
    if course_name == course {
      code = course_code
    }
  }
  locate(loc => if loc.page() == 1 {
    [
      #set text(8pt)
      #move(dx: -marginLeft, table(fill: luma(230),
        stroke: none,
        align: (left, right, right),
        columns: (1fr, 1fr, 1fr),
        inset: 0.9em,
        [#author],[#code],[#emph[#year sem. #sem, #course]]))
    ]
    } else {[]}
  )
}

#let propCounter = counter("propCounter");
#let stellingCounter = counter("stellingCounter");

#let doc(
  title: "Notities",
  author: "Simeon Duwel",
  year: "23/24",
  sem: 1,
  course: "Calculus I",
  body
) = {
  set document(title: title, author: author)
  set text(font: "Iosevka NF", size: 10.5pt)
  set page(margin: (y:20mm, rest:marginLeft), header: header(author, year, course, sem), numbering: "1")

  set heading(numbering: "[1.1.1] ")

  show "Not.":  set text(weight: "bold", style: "italic", fill: rgb(70, 100, 150))
  show "Vb.":   set text(weight: "bold", style: "italic", fill: rgb(150, 100, 70))
  show "Def.":  set text(weight: "bold", style: "italic", fill: rgb(150, 70, 100))
  show "Bew.":  _ => text(weight: "bold", style: "italic", fill: rgb(100, 150, 70), "Bewijs.")

  show "Prop.": it => {
    propCounter.step()
    text(weight: "bold", style: "italic", fill: rgb(70, 150, 100), [#it #propCounter.display("1.")])
  }

  show "St.": {
    stellingCounter.step()
    text(weight: "bold", style: "italic", fill: rgb(100, 150, 70), [Stelling #stellingCounter.display("1.")])
  }


  text(size: 22pt, weight: "bold", title)

  body
}
