import svgwrite


sw = 0.01              # stroke width
st = 'rgb(0, 0, 255)'  # stroke
fl = 'none'            # fill
r = 2.3 / 2.0          # raidus


def add_rect(dwg, x1, y1, x2, y2, ofsx=0, ofsy=0):
    x1 += ofsx
    y1 += ofsy
    x2 += ofsx
    y2 += ofsy
    dwg.add(dwg.rect((x1, y1), (x2-x1, y2-y1), stroke=st, stroke_width=sw, fill=fl, stroke_opacity='1', stroke_miterlimit='4', stroke_dasharray='none'))


def add_circle(dwg, x, y, r, ofsx=0, ofsy=0):
    x += ofsx
    y += ofsy
    dwg.add(dwg.circle((x, y), r, stroke=st, stroke_width=sw, fill=fl, stroke_opacity='1', stroke_miterlimit='4', stroke_dasharray='none'))


def add_polyline(dwg, points, ofsx=0, ofsy=0):
    len_ = len(points)

    ps = []
    for p in points:
        ps.append( (p[0]+ofsx, p[1]+ofsy) )
    ps.append(ps[0])

    for i in range(0, len_):
        dwg.add(dwg.line(ps[i], ps[i+1], stroke=st, stroke_width=sw, stroke_opacity='1', fill=fl, stroke_miterlimit='4', stroke_dasharray='none'))


def bottom_plate(dwg, ofsx=0, ofsy=0):
    # add_rect(dwg, 0,   0, 133,    95, ofs1, ofs1)
    # add_rect(dwg, 133, 0, 133+27, 48, ofs1, ofs1)

    points = [
        (0, 0),
        (133+27, 0),
        (133+27, 48),
        (133, 48),
        (133, 95),
        (0, 95),
    ]
    add_polyline(dwg, points, ofsx, ofsy)

    add_circle(dwg, 19,           19,      r, ofsx, ofsy)
    add_circle(dwg, 133.0-19,     19,      r, ofsx, ofsy)
    add_circle(dwg, 19,           95.0-19, r, ofsx, ofsy)
    add_circle(dwg, 133.0-38,     95.0-19, r, ofsx, ofsy)

    add_circle(dwg, 133.0+2.7,    2,       r, ofsx, ofsy)
    add_circle(dwg, 133.0+2.7,    22,      r, ofsx, ofsy)
    add_circle(dwg, 133.0+2.7,    48-2,    r, ofsx, ofsy)

    add_circle(dwg, 133.0+27-2.7, 2,       r, ofsx, ofsy)
    add_circle(dwg, 133.0+27-2.7, 22,      r, ofsx, ofsy)
    add_circle(dwg, 133.0+27-2.7, 48-2,    r, ofsx, ofsy)


def middle_plate(dwg, ofsx=0, ofsy=0):
    add_rect(dwg, 0, 0, 27, 48, ofsx, ofsy)

    add_circle(dwg, 2.7,    2,     r, ofsx, ofsy)
    add_circle(dwg, 2.7,    22,    r, ofsx, ofsy)
    add_circle(dwg, 2.7,    48-2,  r, ofsx, ofsy)

    add_circle(dwg, 27-2.7, 2,     r, ofsx, ofsy)
    add_circle(dwg, 27-2.7, 22,    r, ofsx, ofsy)
    add_circle(dwg, 27-2.7, 48-2,  r, ofsx, ofsy)

    add_rect(dwg, 13.5-(13.6/2.0), 9-(13.8/2.0),    13.5+(13.6/2.0), 9+(13.8/2.0),    ofsx, ofsy)
    add_rect(dwg, 13.5-(17.6/2.0), 27.5-(17.6/2.0), 13.5+(17.6/2.0), 27.5+(17.6/2.0), ofsx, ofsy)


if __name__ == '__main__':
    w = 190
    h = 190
    dwg = svgwrite.Drawing('thumbhelix.svg',
                           size=('{}mm'.format(w), '{}mm'.format(h)),
                           viewBox=('0 0 {} {}'.format(w, h)))

    #add_rect(dwg, 0, 0, 181, 181)

    bottom_plate(dwg, 10, 10)

    middle_plate(dwg, 10,  120)
    middle_plate(dwg, 50,  120)
    middle_plate(dwg, 90,  120)
    middle_plate(dwg, 130, 120)

    dwg.save()

