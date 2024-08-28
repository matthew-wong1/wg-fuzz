struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(52499u, 0u, 1u), vec3<u32>(16346u, 1u, 79344u), vec3<u32>(4294967295u, 30311u, 0u), vec3<u32>(22379u, 1u, 0u), vec3<u32>(19382u, 12870u, 4294967295u), vec3<u32>(36429u, 4294967295u, 23142u), vec3<u32>(45080u, 9631u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 21821u), vec3<u32>(4294967295u, 1u, 68593u), vec3<u32>(57745u, 18340u, 4294967295u), vec3<u32>(8517u, 1u, 4294967295u), vec3<u32>(40396u, 4294967295u, 14968u), vec3<u32>(0u, 1u, 1u), vec3<u32>(66088u, 0u, 0u), vec3<u32>(64984u, 1u, 12016u), vec3<u32>(151380u, 4294967295u, 1u), vec3<u32>(61160u, 1u, 1u), vec3<u32>(4294967295u, 1u, 86995u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 25306u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(307u, 27331u, 59778u));

var<private> global1: f32;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(1000f, Struct_2(Struct_1(1i, 104405i, vec4<u32>(4294967295u, 1u, 0u, 0u), -26601i, vec3<i32>(-5127i, 2147483647i, 31095i)), -198f, true, true, Struct_1(0i, 24872i, vec4<u32>(4294967295u, 0u, 4294967295u, 71882u), -8359i, vec3<i32>(-18623i, 47705i, 2147483647i))), 1469f), Struct_3(316f, Struct_2(Struct_1(814i, 30401i, vec4<u32>(5186u, 28647u, 0u, 30522u), -39576i, vec3<i32>(i32(-2147483648), -15559i, -39425i)), -442f, true, true, Struct_1(-5695i, i32(-2147483648), vec4<u32>(23611u, 4294967295u, 23819u, 1u), 33543i, vec3<i32>(i32(-2147483648), 4559i, i32(-2147483648)))), -173f), Struct_3(1437f, Struct_2(Struct_1(2147483647i, 16651i, vec4<u32>(0u, 679u, 0u, 4294967295u), 17298i, vec3<i32>(359i, 1i, 1i)), 1001f, true, true, Struct_1(-1i, i32(-2147483648), vec4<u32>(38287u, 51463u, 313u, 23450u), i32(-2147483648), vec3<i32>(2147483647i, i32(-2147483648), -7964i))), 564f), Struct_3(-1251f, Struct_2(Struct_1(-1i, 2147483647i, vec4<u32>(51812u, 4294967295u, 1u, 4294967295u), -14038i, vec3<i32>(43564i, 1i, 11689i)), 346f, false, true, Struct_1(0i, 1i, vec4<u32>(11995u, 37041u, 122946u, 4294967295u), -1i, vec3<i32>(0i, -3141i, 2147483647i))), -1095f), Struct_3(1434f, Struct_2(Struct_1(-1i, -4428i, vec4<u32>(4294967295u, 18783u, 4294967295u, 49037u), 2147483647i, vec3<i32>(-1i, -70742i, 1i)), 739f, false, true, Struct_1(65933i, -49058i, vec4<u32>(61260u, 1u, 71001u, 38343u), 18412i, vec3<i32>(-54998i, 17372i, 50158i))), 131f), Struct_3(588f, Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), vec4<u32>(52156u, 68348u, 0u, 0u), 2362i, vec3<i32>(14403i, 20433i, 2147483647i)), 1226f, false, true, Struct_1(i32(-2147483648), i32(-2147483648), vec4<u32>(0u, 4294967295u, 33687u, 1u), 111777i, vec3<i32>(-1i, i32(-2147483648), -9439i))), -290f), Struct_3(-1000f, Struct_2(Struct_1(-11814i, -2627i, vec4<u32>(0u, 18426u, 4294967295u, 0u), 0i, vec3<i32>(0i, 27117i, -5581i)), 1290f, false, false, Struct_1(-33669i, -48728i, vec4<u32>(23751u, 20444u, 4294967295u, 4294967295u), 2147483647i, vec3<i32>(-1i, 1i, 65090i))), 303f), Struct_3(-1000f, Struct_2(Struct_1(-11560i, -22819i, vec4<u32>(18795u, 58178u, 21608u, 13499u), 0i, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), -801f, false, true, Struct_1(27668i, -37491i, vec4<u32>(23379u, 33198u, 72081u, 57789u), 30586i, vec3<i32>(45841i, 13427i, 44734i))), 575f), Struct_3(1204f, Struct_2(Struct_1(228i, i32(-2147483648), vec4<u32>(16379u, 4294967295u, 4294967295u, 4294967295u), 2147483647i, vec3<i32>(5451i, 54264i, -21916i)), 243f, false, true, Struct_1(-31973i, i32(-2147483648), vec4<u32>(4294967295u, 104445u, 2918u, 4294967295u), 0i, vec3<i32>(18210i, i32(-2147483648), 9200i))), -860f), Struct_3(-519f, Struct_2(Struct_1(-38098i, 1i, vec4<u32>(4294967295u, 1u, 1u, 1u), 0i, vec3<i32>(21790i, -13991i, -1i)), 1287f, false, true, Struct_1(-39205i, 1i, vec4<u32>(0u, 28745u, 27872u, 4294967295u), 24241i, vec3<i32>(-22736i, -1i, -56328i))), -450f), Struct_3(-1354f, Struct_2(Struct_1(15236i, -44940i, vec4<u32>(2059u, 64113u, 100559u, 1u), 21260i, vec3<i32>(0i, i32(-2147483648), -1i)), -849f, true, false, Struct_1(i32(-2147483648), 7190i, vec4<u32>(67200u, 62271u, 16720u, 40810u), 0i, vec3<i32>(-23511i, 2147483647i, 2147483647i))), 1000f), Struct_3(-1000f, Struct_2(Struct_1(-1200i, -1i, vec4<u32>(4294967295u, 33712u, 0u, 6676u), -1i, vec3<i32>(11272i, -10724i, 49428i)), -568f, true, true, Struct_1(-12543i, -16354i, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 13254i, vec3<i32>(-64812i, i32(-2147483648), 1i))), 629f), Struct_3(635f, Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), vec4<u32>(22815u, 0u, 18079u, 71556u), 0i, vec3<i32>(-24886i, 0i, -12182i)), 871f, true, false, Struct_1(-1i, -21726i, vec4<u32>(0u, 4294967295u, 6640u, 0u), 0i, vec3<i32>(2147483647i, -10431i, 4077i))), 1000f), Struct_3(1080f, Struct_2(Struct_1(-19264i, i32(-2147483648), vec4<u32>(0u, 35784u, 0u, 13545u), 25534i, vec3<i32>(-1i, -8840i, -35101i)), -1203f, true, true, Struct_1(-81715i, 2147483647i, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), -1i, vec3<i32>(-29597i, 1i, 2147483647i))), 400f), Struct_3(259f, Struct_2(Struct_1(i32(-2147483648), -1i, vec4<u32>(20154u, 72745u, 0u, 42470u), -3656i, vec3<i32>(-50348i, i32(-2147483648), i32(-2147483648))), -125f, false, false, Struct_1(2147483647i, -18147i, vec4<u32>(0u, 4294967295u, 4294967295u, 38359u), i32(-2147483648), vec3<i32>(-37718i, 20622i, 1i))), -1444f), Struct_3(680f, Struct_2(Struct_1(-28953i, 36283i, vec4<u32>(0u, 19192u, 1u, 0u), -2396i, vec3<i32>(22935i, 35680i, 2147483647i)), -2197f, false, false, Struct_1(i32(-2147483648), -8291i, vec4<u32>(4294967295u, 44828u, 0u, 15146u), 1i, vec3<i32>(2147483647i, -31814i, -19161i))), 540f), Struct_3(782f, Struct_2(Struct_1(-49219i, -1i, vec4<u32>(50586u, 1u, 6107u, 0u), 68228i, vec3<i32>(-25861i, -1i, 1200i)), -1000f, false, false, Struct_1(42371i, 2147483647i, vec4<u32>(19781u, 28439u, 1u, 0u), 25041i, vec3<i32>(18029i, 0i, -1i))), -1272f), Struct_3(1802f, Struct_2(Struct_1(22507i, -56520i, vec4<u32>(4294967295u, 13419u, 0u, 0u), 0i, vec3<i32>(0i, 1i, -1i)), 973f, true, false, Struct_1(-4578i, 0i, vec4<u32>(43679u, 20066u, 4294967295u, 4294967295u), i32(-2147483648), vec3<i32>(0i, -64903i, -1i))), -497f), Struct_3(819f, Struct_2(Struct_1(-42583i, 918i, vec4<u32>(0u, 34411u, 4294967295u, 1154u), 1001i, vec3<i32>(i32(-2147483648), -1i, 54819i)), -1183f, true, false, Struct_1(-1i, 2147483647i, vec4<u32>(4944u, 42759u, 20796u, 6577u), 2147483647i, vec3<i32>(-18311i, 0i, 0i))), -914f), Struct_3(678f, Struct_2(Struct_1(-29i, 40818i, vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 0i, vec3<i32>(2147483647i, 0i, 1i)), 706f, false, true, Struct_1(8137i, 1i, vec4<u32>(85912u, 1u, 4032u, 1u), 2147483647i, vec3<i32>(-21241i, 22483i, -63622i))), 788f), Struct_3(-472f, Struct_2(Struct_1(2147483647i, 1i, vec4<u32>(1888u, 40347u, 72048u, 4294967295u), 0i, vec3<i32>(89109i, -12905i, 42478i)), -1139f, true, false, Struct_1(-16592i, 23505i, vec4<u32>(26836u, 8075u, 1u, 0u), -15755i, vec3<i32>(64967i, 42900i, 1i))), -1194f), Struct_3(1335f, Struct_2(Struct_1(-10543i, i32(-2147483648), vec4<u32>(89143u, 38591u, 81732u, 4395u), -21450i, vec3<i32>(-38659i, i32(-2147483648), 22579i)), -948f, true, true, Struct_1(-41792i, 87217i, vec4<u32>(5074u, 4294967295u, 4294967295u, 1u), 1i, vec3<i32>(-58531i, 5860i, 7821i))), -333f), Struct_3(-245f, Struct_2(Struct_1(-28273i, -4741i, vec4<u32>(19025u, 29848u, 1u, 57208u), 0i, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648))), -726f, false, true, Struct_1(i32(-2147483648), -18402i, vec4<u32>(47918u, 0u, 1u, 0u), -38806i, vec3<i32>(-34927i, 0i, 2147483647i))), -230f), Struct_3(1100f, Struct_2(Struct_1(0i, -1i, vec4<u32>(0u, 37145u, 0u, 26380u), 69960i, vec3<i32>(15168i, -61349i, 0i)), -1321f, true, false, Struct_1(0i, 19010i, vec4<u32>(6557u, 4294967295u, 1u, 23499u), 32956i, vec3<i32>(-2563i, 0i, 5848i))), -2258f), Struct_3(752f, Struct_2(Struct_1(62320i, 1i, vec4<u32>(0u, 4294967295u, 38818u, 4294967295u), -18865i, vec3<i32>(-10102i, 2147483647i, -33585i)), -183f, true, true, Struct_1(2147483647i, 34737i, vec4<u32>(10401u, 0u, 4294967295u, 16004u), -7874i, vec3<i32>(42683i, 27420i, 1i))), 1485f), Struct_3(587f, Struct_2(Struct_1(0i, 2147483647i, vec4<u32>(0u, 28410u, 38940u, 4294967295u), -34263i, vec3<i32>(-1i, -14774i, -21036i)), 220f, false, false, Struct_1(12535i, 4398i, vec4<u32>(1u, 1u, 0u, 70165u), 1i, vec3<i32>(12850i, i32(-2147483648), 10846i))), 147f));

var<private> global3: Struct_2 = Struct_2(Struct_1(3732i, i32(-2147483648), vec4<u32>(11635u, 0u, 39411u, 4294967295u), 64369i, vec3<i32>(9117i, -44178i, -1i)), 1342f, false, true, Struct_1(-34103i, -2459i, vec4<u32>(1u, 4294967295u, 43356u, 1u), 0i, vec3<i32>(-14129i, i32(-2147483648), -62461i)));

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = vec2<f32>(global3.b, arg_0.b);
    global4 = array<Struct_1, 14>();
    global1 = _wgslsmith_f_op_f32(-110f * arg_1);
    let var_1 = global2[_wgslsmith_index_u32(~u_input.b.x, 26u)];
    let var_2 = var_1.b.c;
    return var_1.b;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = -1i;
    var var_1 = ~38369u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1491f, arg_0.b.b, arg_0.c, 536f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-425f, global3.b, -490f, arg_0.b.b), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b, -437f, 435f, global3.b), vec4<f32>(320f, arg_0.c, -1160f, global3.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 486f, arg_0.b.b, -695f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), 975f, _wgslsmith_f_op_f32(-868f - global3.b), _wgslsmith_f_op_f32(-arg_0.a)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)))), _wgslsmith_f_op_f32(-1f)));
    let var_4 = -1i;
    return u_input.c.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~u_input.c, -(~(u_input.c ^ vec4<i32>(-2069i, 0i, arg_1.x, 35968i)))), _wgslsmith_div_i32(select(u_input.c.x, _wgslsmith_dot_vec3_i32(global3.e.e, u_input.c.wzz ^ vec3<i32>(21709i, 0i, global3.e.b)), arg_0.x < _wgslsmith_f_op_f32(arg_0.x + 553f)), u_input.c.x), ~(~vec4<u32>(global3.e.c.x, global3.e.c.x, global3.e.c.x, u_input.b.x)) >> (global3.a.c % vec4<u32>(32u)), _wgslsmith_div_i32(-global3.e.e.x, func_3(Struct_3(global3.b, func_2(Struct_2(global3.e, global3.b, false, arg_3, global3.a), arg_0.x, false), global3.b), _wgslsmith_sub_i32(arg_1.x, arg_1.x), all(!vec3<bool>(false, global3.d, false)))), _wgslsmith_clamp_vec3_i32(global3.e.e, firstTrailingBit(vec3<i32>(0i, arg_1.x, 0i)), vec3<i32>(u_input.a, arg_1.x, 2147483647i)));
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(firstTrailingBit(abs(var_0.e.yy)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -6147i), firstTrailingBit(var_0.e.zz), vec2<i32>(0i, 1i) >> (global3.e.c.yy % vec2<u32>(32u)))), ~(-1i ^ u_input.a), ~vec4<u32>(59562u, global3.a.c.x, _wgslsmith_sub_u32(global3.e.c.x, 4294967295u), u_input.b.x) | ~(~func_2(Struct_2(global4[_wgslsmith_index_u32(u_input.b.x, 14u)], arg_0.x, arg_3, false, Struct_1(2147483647i, global3.a.e.x, u_input.b, arg_1.x, global3.a.e)), global3.b, true).e.c), -var_0.d << (global3.e.c.x % 32u), ~u_input.c.zzz);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1069f)), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(func_2(Struct_2(global3.e, arg_0.x, arg_2.x, true, global3.a), global3.b, true).b, global3.b))));
    let var_2 = func_2(Struct_2(global3.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b - global3.b)))), ~16801u < (~var_0.c.x & ~var_0.c.x), func_2(func_2(func_2(Struct_2(Struct_1(arg_1.x, 0i, vec4<u32>(0u, global3.a.c.x, 4294967295u, 1u), var_0.d, global3.a.e), var_1.x, false, arg_2.x, global3.e), global3.b, arg_2.x), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, global3.d)), true), 469f, global3.c).d, func_2(Struct_2(global4[_wgslsmith_index_u32(~u_input.b.x, 14u)], -178f, arg_3, false, Struct_1(0i, var_0.e.x, vec4<u32>(var_0.c.x, global3.a.c.x, 4294967295u, global3.e.c.x), 1i, global3.e.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -606f))), true).e), 1280f, all(select(select(select(vec4<bool>(arg_3, true, arg_2.x, false), vec4<bool>(true, false, true, arg_3), vec4<bool>(arg_3, true, arg_3, false)), vec4<bool>(arg_2.x, true, arg_2.x, false), true), select(vec4<bool>(global3.c, arg_2.x, arg_2.x, true), select(vec4<bool>(arg_2.x, arg_3, false, false), vec4<bool>(true, global3.d, arg_2.x, arg_3), arg_3), func_2(Struct_2(Struct_1(var_0.e.x, global3.e.e.x, u_input.b, -1i, var_0.e), arg_0.x, false, true, global4[_wgslsmith_index_u32(4294967295u, 14u)]), -306f, false).d), select(!vec4<bool>(arg_2.x, false, global3.c, arg_3), !vec4<bool>(false, true, true, arg_2.x), arg_3))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_2(var_2, _wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1630f))), var_2.c).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -359f) + vec2<f32>(var_1.x, var_1.x)), vec2<f32>(1426f, -443f))) * arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(-1000f, 546f), u_input.c, select(vec2<bool>(global3.d, global3.d), vec2<bool>(global3.d, global3.c), global3.d), global3.c)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)))))));
    var var_1 = global3.b;
    var_1 = global3.b;
    let var_2 = vec2<i32>(select(_wgslsmith_mod_i32(0i, u_input.a), ~global3.a.a, global3.c) ^ ~(~(u_input.a & 0i)), global3.e.a);
    var var_3 = u_input.c.xwy;
    var var_4 = Struct_1(-2147483647i >> (global3.a.c.x % 32u), _wgslsmith_dot_vec3_i32(abs(u_input.c.zzy), vec3<i32>(~u_input.c.x, ~u_input.c.x, -1i) | -(~global3.a.e)), global3.a.c, ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(global3.e.b, 32464i, u_input.c.x, u_input.a), vec4<i32>(var_2.x, global3.e.d, u_input.a, -49074i) & u_input.c), vec4<i32>(-u_input.c.x, _wgslsmith_mult_i32(var_3.x, -3938i), 26209i, u_input.c.x)), countOneBits(abs(vec3<i32>(27215i, u_input.c.x, u_input.c.x))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, var_3.x, 12520i) ^ u_input.c.xxz, func_2(Struct_2(global3.e, 808f, true, global3.d, global3.a), global3.b, select(false, global3.d, true)).a.e));
    let x = u_input.a;
    s_output = StorageBuffer(48291u);
}

