struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -253f;

var<private> global1: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(960f, 339f, -1161f), vec3<f32>(1280f, 519f, -834f), vec3<f32>(-341f, -1048f, 1000f), vec3<f32>(-466f, 660f, -224f), vec3<f32>(1963f, 1000f, -729f), vec3<f32>(626f, -156f, -1666f), vec3<f32>(-1196f, 776f, -750f), vec3<f32>(-795f, -871f, 1803f), vec3<f32>(698f, 1256f, 885f), vec3<f32>(941f, -1000f, 1362f), vec3<f32>(936f, 1047f, 1466f), vec3<f32>(1116f, 740f, 1079f), vec3<f32>(-1000f, -343f, 1002f), vec3<f32>(350f, -179f, 139f), vec3<f32>(-159f, 958f, -1000f), vec3<f32>(434f, 600f, -179f), vec3<f32>(1000f, 1240f, -902f), vec3<f32>(-1416f, -1368f, -2670f), vec3<f32>(472f, -719f, -737f), vec3<f32>(-329f, 351f, -941f), vec3<f32>(337f, 943f, 689f), vec3<f32>(1334f, -502f, -102f), vec3<f32>(603f, -501f, 451f), vec3<f32>(1658f, -380f, -198f), vec3<f32>(-500f, 1000f, 1545f), vec3<f32>(-1894f, -641f, 2342f), vec3<f32>(729f, 1494f, -2086f), vec3<f32>(-535f, -1505f, -564f), vec3<f32>(-957f, 538f, -653f), vec3<f32>(189f, -629f, -372f));

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(588f, Struct_1(i32(-2147483648), true), vec4<i32>(-1i, 13596i, 2147483647i, 0i), 120f), Struct_3(-1080f, Struct_1(-1i, false), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -471i), 343f), Struct_3(759f, Struct_1(9546i, true), vec4<i32>(-10247i, -25102i, 4982i, -84499i), 949f), Struct_3(1523f, Struct_1(-20636i, true), vec4<i32>(2147483647i, -9275i, 2147483647i, 2147483647i), -748f), Struct_3(-1660f, Struct_1(0i, false), vec4<i32>(i32(-2147483648), i32(-2147483648), 13080i, i32(-2147483648)), 2001f), Struct_3(-1169f, Struct_1(-1i, false), vec4<i32>(-10474i, -1i, 62729i, -24803i), 1496f), Struct_3(-283f, Struct_1(2147483647i, true), vec4<i32>(1i, -1i, -1i, 33637i), -2271f), Struct_3(2223f, Struct_1(2147483647i, true), vec4<i32>(-1i, i32(-2147483648), -1i, -21385i), -376f), Struct_3(988f, Struct_1(19409i, false), vec4<i32>(-1i, -36097i, i32(-2147483648), -1i), -399f), Struct_3(-236f, Struct_1(1i, false), vec4<i32>(35077i, 2147483647i, 2147483647i, 12672i), -716f), Struct_3(-1379f, Struct_1(0i, false), vec4<i32>(-18149i, i32(-2147483648), 0i, i32(-2147483648)), 281f), Struct_3(533f, Struct_1(0i, false), vec4<i32>(0i, 57932i, 979i, -1i), -1837f), Struct_3(356f, Struct_1(1i, true), vec4<i32>(-1i, -1i, -1i, -11898i), 1245f), Struct_3(1790f, Struct_1(0i, true), vec4<i32>(2147483647i, -31226i, i32(-2147483648), -1i), 599f), Struct_3(-1280f, Struct_1(-7702i, true), vec4<i32>(2147483647i, 1i, -24745i, -27633i), -906f), Struct_3(-1058f, Struct_1(13322i, false), vec4<i32>(-1i, -91797i, -39603i, 2147483647i), 2398f), Struct_3(1364f, Struct_1(2147483647i, true), vec4<i32>(10504i, 1i, 65545i, -10266i), -335f), Struct_3(-180f, Struct_1(22499i, false), vec4<i32>(2147483647i, 0i, i32(-2147483648), -1i), -499f), Struct_3(-185f, Struct_1(i32(-2147483648), false), vec4<i32>(33906i, 1i, -24689i, 2147483647i), 2114f), Struct_3(-1085f, Struct_1(2147483647i, true), vec4<i32>(35589i, i32(-2147483648), 7935i, -13161i), 386f), Struct_3(-889f, Struct_1(i32(-2147483648), false), vec4<i32>(20681i, -2846i, -26579i, 1i), 179f), Struct_3(1215f, Struct_1(i32(-2147483648), false), vec4<i32>(34312i, 2147483647i, 0i, -2763i), 1700f), Struct_3(-891f, Struct_1(i32(-2147483648), false), vec4<i32>(-28205i, -37622i, 2147483647i, i32(-2147483648)), 405f), Struct_3(730f, Struct_1(0i, false), vec4<i32>(i32(-2147483648), 53299i, 2147483647i, 33529i), -951f), Struct_3(424f, Struct_1(1i, true), vec4<i32>(0i, 1i, -21123i, -82347i), -207f), Struct_3(278f, Struct_1(-1i, false), vec4<i32>(6i, 33570i, 38257i, 22200i), -213f), Struct_3(1716f, Struct_1(-15081i, true), vec4<i32>(1i, 40358i, 1i, 1i), 265f), Struct_3(1000f, Struct_1(44259i, false), vec4<i32>(i32(-2147483648), 15148i, 1i, 2147483647i), -1324f), Struct_3(-618f, Struct_1(40515i, false), vec4<i32>(-22684i, 17347i, 1i, 31151i), -1763f), Struct_3(255f, Struct_1(-1i, false), vec4<i32>(-47354i, -21722i, 2147483647i, -25043i), 857f), Struct_3(-433f, Struct_1(0i, true), vec4<i32>(0i, i32(-2147483648), 10742i, 27245i), 354f));

var<private> global3: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_4) -> u32 {
    var var_0 = vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.b, arg_2.a.b.a), u_input.c.x);
    return ~_wgslsmith_sub_u32(abs(1u), 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_4 {
    global2 = array<Struct_3, 31>();
    global3 = ~1u;
    global2 = array<Struct_3, 31>();
    var var_0 = Struct_4(arg_0, max(~(_wgslsmith_mult_u32(4294967295u, 0u) & ~u_input.d.x), _wgslsmith_sub_u32(abs(1u | arg_2), 19210u)), vec4<u32>(func_3(vec3<u32>(1u, 18342u, ~52166u), u_input.d, Struct_4(arg_0, ~arg_2, ~vec4<u32>(arg_2, arg_2, 1u, 15149u), Struct_2(arg_0.b.a, true, Struct_1(arg_3, true), vec4<u32>(u_input.d.x, 0u, u_input.d.x, arg_2)))), countOneBits(arg_2), u_input.a.x, ~_wgslsmith_clamp_u32(4294967295u, 40108u, u_input.d.x)), Struct_2(~arg_1.a, false, Struct_1(-17387i & _wgslsmith_mod_i32(arg_0.b.a, arg_0.c.x), any(vec2<bool>(arg_0.b.b, arg_1.b)) || arg_1.b), vec4<u32>(arg_2, arg_2 ^ 67986u, firstLeadingBit(arg_2 ^ u_input.d.x), 29566u)));
    var var_1 = !vec3<bool>(true, all(vec2<bool>(true, true)), true);
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.a * arg_0.d)))), arg_1, _wgslsmith_clamp_vec4_i32(~(arg_0.c & var_0.a.c), countOneBits(~var_0.a.c), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.b, 68673i, u_input.b, 2298i), arg_0.c), vec4<i32>(var_0.d.c.a, -1i, var_0.a.b.a, 37696i), abs(var_0.a.c))), 1292f), var_0.b, var_0.c, Struct_2(_wgslsmith_div_i32(min(reverseBits(-45437i), u_input.b), 2147483647i), ~arg_0.b.a > (-23070i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, 1i, 0i), vec4<i32>(u_input.c.x, 0i, 16439i, 0i))), arg_1, var_0.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    global2 = array<Struct_3, 31>();
    let var_0 = -15388i;
    var var_1 = func_2(arg_0, arg_2.d.c, ~u_input.a.x, _wgslsmith_div_i32(max(var_0, _wgslsmith_add_i32(0i, abs(arg_1.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(35723i, max(arg_2.d.a, u_input.c.x)), vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 0i), var_0)))).a;
    let var_2 = arg_2.d;
    var var_3 = arg_1;
    return Struct_3(2028f, Struct_1(arg_1.a, false), u_input.c, arg_2.a.d);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    return func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_div_u32(~301u, max(u_input.d.x, 4294967295u)), ~u_input.a.x & u_input.a.x, true), 58662u), 31u)], Struct_2(i32(-1i) * -2147483647i, abs(~u_input.b) <= ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -58733i, 44273i), arg_0), Struct_1(select(-78711i, -1i, arg_0.x > 2147483647i), (i32(-1i) * -2147483647i) >= arg_0.x), vec4<u32>(0u, min(4294967295u, u_input.d.x), ~u_input.d.x, _wgslsmith_mod_u32(abs(u_input.a.x), 0u))), func_2(Struct_3(-1686f, Struct_1(_wgslsmith_mult_i32(u_input.c.x, u_input.b), true), ~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1265f)))), Struct_1(-18780i, true), firstTrailingBit(u_input.d.x), _wgslsmith_add_i32(reverseBits(u_input.b) >> (0u % 32u), 0i)), reverseBits(abs(func_3(~vec3<u32>(u_input.d.x, 0u, 0u), ~u_input.a, Struct_4(global2[_wgslsmith_index_u32(2490u, 31u)], 15762u, vec4<u32>(4294967295u, 36368u, u_input.a.x, 33452u), Struct_2(arg_0.x, true, Struct_1(arg_0.x, true), vec4<u32>(u_input.a.x, 83605u, 1u, u_input.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.d.x;
    var var_0 = Struct_4(func_1(_wgslsmith_div_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -9061i))), -(u_input.c.xzw << (vec3<u32>(4294967295u, 15768u, u_input.d.x) % vec3<u32>(32u))))), u_input.d.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_2(Struct_3(-451f, Struct_1(~1i, func_1(vec3<i32>(u_input.b, -10005i, u_input.b)).b.b), u_input.c, 1f), func_2(func_2(func_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b)), func_4(Struct_3(1170f, Struct_1(7581i, false), u_input.c, -1161f), Struct_2(u_input.b, true, Struct_1(-38887i, true), vec4<u32>(u_input.a.x, 2692u, 0u, u_input.d.x)), Struct_4(global2[_wgslsmith_index_u32(35253u, 31u)], u_input.d.x, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 46323u), Struct_2(0i, false, Struct_1(u_input.b, false), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), 46253u).b, 12332u, firstTrailingBit(u_input.c.x)).a, func_2(global2[_wgslsmith_index_u32(0u, 31u)], Struct_1(u_input.b, true), u_input.d.x, u_input.c.x).d.c, func_2(Struct_3(-1015f, Struct_1(u_input.b, false), vec4<i32>(u_input.b, u_input.c.x, 36662i, 21521i), 1105f), Struct_1(u_input.b, false), countOneBits(u_input.d.x), _wgslsmith_sub_i32(u_input.b, u_input.c.x)).c.x, u_input.b).d.c, 24057u, -u_input.b).d);
    var_0 = Struct_4(func_4(var_0.a, Struct_2(_wgslsmith_div_i32(var_0.d.c.a, var_0.a.b.a), var_0.a.b.b, func_1(u_input.c.wzx).b, ~(var_0.c >> (var_0.d.d % vec4<u32>(32u)))), func_2(global2[_wgslsmith_index_u32(var_0.b, 31u)], Struct_1(37457i, !var_0.d.b), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 106164u), vec3<u32>(19413u, 1u, var_0.c.x)), -25261i), ~var_0.d.d.x), 1u, _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(105065u, 78373u, u_input.d.x, 71746u), vec4<u32>(6009u, 59965u, var_0.c.x, 83137u), vec4<u32>(var_0.d.d.x, 1u, 11499u, 4294967295u))), abs(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x))) >> (~(~_wgslsmith_sub_vec4_u32(var_0.c, vec4<u32>(var_0.d.d.x, 4294967295u, 4294967295u, var_0.d.d.x))) % vec4<u32>(32u)), Struct_2(var_0.a.b.a, func_1(vec3<i32>(var_0.d.a, u_input.c.x, var_0.d.a) << (u_input.a % vec3<u32>(32u))).b.b, var_0.a.b, ~vec4<u32>(u_input.d.x, var_0.d.d.x, _wgslsmith_mod_u32(24913u, 4294967295u), 4294967295u)));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(251f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.a.a, var_0.a.a))))), Struct_1(-func_1(vec3<i32>(0i, u_input.b, var_0.d.c.a)).c.x, any(vec3<bool>(var_0.a.b.b, var_0.a.b.b, true))), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.a.d))), 13245u, firstTrailingBit(var_0.c), var_0.d);
    global2 = array<Struct_3, 31>();
    global3 = _wgslsmith_sub_u32(u_input.a.x, ~select(func_3(_wgslsmith_sub_vec3_u32(var_1.c.zyx, vec3<u32>(83159u, 0u, var_1.c.x)), ~vec3<u32>(1u, 0u, var_1.d.d.x), Struct_4(var_1.a, var_0.b, vec4<u32>(u_input.a.x, var_0.b, 1u, u_input.a.x), Struct_2(var_0.a.b.a, false, var_0.d.c, var_0.c))), ~60985u, func_4(Struct_3(var_0.a.d, Struct_1(u_input.c.x, false), u_input.c, var_1.a.a), var_1.d, func_2(Struct_3(var_0.a.a, var_1.d.c, vec4<i32>(2147483647i, var_1.a.b.a, 0i, var_1.a.c.x), var_0.a.d), var_0.a.b, var_1.c.x, var_0.a.c.x), _wgslsmith_div_u32(var_1.b, var_1.d.d.x)).b.b));
    global1 = array<vec3<f32>, 30>();
    global1 = array<vec3<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(906f)), -349f, func_4(Struct_3(_wgslsmith_f_op_f32(-var_1.a.d), var_0.a.b, vec4<i32>(669i, 2147483647i, u_input.b, 0i), var_1.a.d), var_0.d, func_2(Struct_3(var_1.a.d, var_1.a.b, vec4<i32>(var_0.a.c.x, 2147483647i, u_input.c.x, u_input.b), var_0.a.a), var_0.a.b, _wgslsmith_sub_u32(4294967295u, u_input.a.x), ~(-9234i)), ~abs(25730u)).d));
}

