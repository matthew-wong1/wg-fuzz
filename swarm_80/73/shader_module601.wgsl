struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, false, true, true, false, false, true, true, true, false, false, false);

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<f32>(245f, 472f, 1004f)), 1u, false, vec4<f32>(-757f, -686f, 2011f, 1000f), -1262f), Struct_2(Struct_1(vec3<f32>(-1370f, -115f, -1171f)), 30926u, true, vec4<f32>(692f, 740f, 346f, -324f), 663f), Struct_2(Struct_1(vec3<f32>(-1091f, 1000f, 584f)), 17571u, false, vec4<f32>(-1000f, 652f, -2053f, 1116f), 142f), Struct_2(Struct_1(vec3<f32>(574f, -118f, -687f)), 40072u, true, vec4<f32>(242f, 1000f, 797f, -1454f), 781f), Struct_2(Struct_1(vec3<f32>(-1153f, 922f, 793f)), 1u, true, vec4<f32>(-1006f, 251f, 441f, 1490f), -978f), Struct_2(Struct_1(vec3<f32>(-1362f, -1000f, 740f)), 50130u, false, vec4<f32>(-425f, 604f, -966f, -110f), -1001f), Struct_2(Struct_1(vec3<f32>(985f, -1660f, 1000f)), 1u, false, vec4<f32>(2421f, 1013f, 232f, -899f), 182f), Struct_2(Struct_1(vec3<f32>(-838f, 465f, -940f)), 112293u, false, vec4<f32>(-1000f, 332f, -1861f, 1318f), 995f), Struct_2(Struct_1(vec3<f32>(378f, 1515f, 116f)), 0u, true, vec4<f32>(1693f, 1000f, 1392f, 687f), 321f), Struct_2(Struct_1(vec3<f32>(411f, 1000f, 1026f)), 64082u, false, vec4<f32>(466f, 184f, -418f, -741f), 778f), Struct_2(Struct_1(vec3<f32>(929f, 1643f, 348f)), 74106u, false, vec4<f32>(-537f, 1566f, -549f, -1000f), -552f), Struct_2(Struct_1(vec3<f32>(-540f, -2527f, -1115f)), 1u, false, vec4<f32>(-1212f, 743f, -750f, -1003f), 720f), Struct_2(Struct_1(vec3<f32>(-707f, -557f, -1000f)), 1u, true, vec4<f32>(1000f, 971f, -2002f, 1680f), -156f), Struct_2(Struct_1(vec3<f32>(1329f, -1173f, -989f)), 31291u, true, vec4<f32>(721f, 1043f, -1443f, 467f), -679f), Struct_2(Struct_1(vec3<f32>(2325f, -368f, -1712f)), 35550u, false, vec4<f32>(1656f, 1160f, -1028f, 695f), 1000f), Struct_2(Struct_1(vec3<f32>(1669f, 1663f, 604f)), 1u, false, vec4<f32>(924f, -1725f, 1033f, 546f), -1852f), Struct_2(Struct_1(vec3<f32>(-1000f, -829f, -244f)), 26000u, true, vec4<f32>(-1027f, -326f, 606f, -610f), -466f), Struct_2(Struct_1(vec3<f32>(1460f, 120f, 1023f)), 24655u, true, vec4<f32>(521f, -775f, 669f, -2131f), -438f), Struct_2(Struct_1(vec3<f32>(-215f, 220f, 651f)), 77811u, true, vec4<f32>(1393f, -1693f, -499f, -1601f), 716f), Struct_2(Struct_1(vec3<f32>(1000f, 1398f, -540f)), 4294967295u, true, vec4<f32>(668f, 357f, -2222f, -886f), 718f), Struct_2(Struct_1(vec3<f32>(-169f, 1674f, -1692f)), 93165u, false, vec4<f32>(-521f, 474f, -1000f, -1447f), 1000f), Struct_2(Struct_1(vec3<f32>(735f, 1828f, -1060f)), 4294967295u, false, vec4<f32>(-882f, -966f, 208f, 634f), -1000f), Struct_2(Struct_1(vec3<f32>(1338f, 2003f, 970f)), 23307u, false, vec4<f32>(-1000f, -1361f, -532f, 843f), 1000f), Struct_2(Struct_1(vec3<f32>(1000f, -1586f, 568f)), 0u, false, vec4<f32>(-154f, 962f, 1319f, -290f), 699f), Struct_2(Struct_1(vec3<f32>(289f, 871f, -1000f)), 11684u, true, vec4<f32>(872f, -1272f, -543f, 1278f), -1865f), Struct_2(Struct_1(vec3<f32>(-1307f, 1756f, -1000f)), 0u, true, vec4<f32>(1802f, 789f, 453f, -1000f), -716f), Struct_2(Struct_1(vec3<f32>(1000f, 1554f, 1383f)), 4294967295u, false, vec4<f32>(-285f, 347f, 413f, 428f), 172f));

var<private> global4: array<i32, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(_wgslsmith_clamp_u32(select(u_input.a.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(4294967295u, 0u)), all(vec2<bool>(arg_0.x, false))), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, arg_1) ^ ~u_input.a.x), countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_1.x, 4294967295u)))), _wgslsmith_f_op_f32(round(-1527f)) < -580f), u_input.b, ~14531u), 27u)];
    var var_1 = vec3<i32>(-global4[_wgslsmith_index_u32(~countOneBits(1u), 17u)], 2147483647i, global4[_wgslsmith_index_u32(arg_1.x, 17u)]);
    var_1 = vec3<i32>(~_wgslsmith_dot_vec2_i32(var_1.xz, var_1.yy), -43228i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~(vec3<u32>(4294967295u, 1u, 57542u) ^ vec3<u32>(0u, u_input.a.x, 0u))), 17u)]) & ~vec3<i32>(global4[_wgslsmith_index_u32(0u, 17u)], ~(-537i), ~select(u_input.c, -2147483647i, false));
    let var_2 = var_1.x;
    global4 = array<i32, 17>();
    return !(!select(vec3<bool>(false, true, 0u < var_0.b), !(!vec3<bool>(false, true, arg_0.x)), (var_1.x >= 1i) | true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = select(u_input.a.xx, ~max(u_input.a.yx, u_input.a.yz), false);
    var var_1 = true;
    let var_2 = !(!func_3(!(!global1.zz), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 29883u), u_input.a.yy)));
    let var_3 = _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(0u, abs(~u_input.b) >> (0u % 32u)));
    let var_4 = global4[_wgslsmith_index_u32(0u, 17u)];
    return select(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false), vec3<bool>(true, global2[_wgslsmith_index_u32(38990u, 13u)], false), var_2)), select(vec3<bool>(!(0i == global0.x), global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mult_u32(var_3, 58957u) < 1u), var_2, false), false);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = !global1.x;
    let var_1 = Struct_4(true & (any(func_2(Struct_1(vec3<f32>(167f, -905f, -1012f)), vec2<f32>(-125f, -1000f))) | false), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1411f, 954f))), firstTrailingBit(4294967295u) << (abs(46928u) % 32u), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(291f, 1886f, -345f, -1109f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-316f, 1266f, -675f, 526f), vec4<f32>(-479f, -256f, -604f, 1180f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1249f + 1660f), -312f)), _wgslsmith_mod_vec3_u32(u_input.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(34473u, u_input.a.x, 4294967295u), u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - _wgslsmith_f_op_f32(step(931f, 1619f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(2712f - _wgslsmith_div_f32(1000f, 1783f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) - _wgslsmith_f_op_f32(floor(878f))))), global1.xx, 77749u, firstLeadingBit(max(countOneBits(0u), max(~u_input.a.x, ~1u))));
    global0 = firstTrailingBit(~vec2<i32>(0i, 1i));
    global2 = array<bool, 13>();
    let var_2 = Struct_3(var_1.b.a, vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(~var_1.b.a.b, 1u, u_input.b)), 0u), 1831f, _wgslsmith_f_op_vec3_f32(var_1.b.d * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.b.d), vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a.e * var_1.b.d.x), _wgslsmith_div_f32(-1388f, var_1.b.c), _wgslsmith_f_op_f32(-651f - var_1.b.a.e))))));
    return max(~vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 58471i), vec2<i32>(0i, -34057i)), _wgslsmith_add_i32(33973i, ~101802i)), vec2<i32>(_wgslsmith_div_i32(arg_0, -30237i), _wgslsmith_div_i32(firstTrailingBit(abs(arg_0)), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mod_i32(-2147483647i, global4[_wgslsmith_index_u32(1u, 17u)]), 10146i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(4294967295u, 17u)], -2147483647i), -vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(6096u, 17u)], global4[_wgslsmith_index_u32(90778u, 17u)])), vec3<i32>(1i, -33678i ^ u_input.c, 0i)));
    global2 = array<bool, 13>();
    global4 = array<i32, 17>();
    let var_1 = firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(u_input.a.x, 17u)], global4[_wgslsmith_index_u32(22849u, 17u)])), vec3<i32>(global4[_wgslsmith_index_u32(1u, 17u)], var_0.x, global0.x)), -2147483647i, firstLeadingBit(-6463i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 14715u, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 4294967295u, 54092u, u_input.a.x)) % 32u))) >> (0u % 32u);
    var var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, min(select(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.a.x), true), vec3<u32>(0u, 12073u, 4294967295u))), countOneBits(firstTrailingBit(~u_input.a.x))), -(vec2<i32>(~var_0.x, -2147483647i) | -vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2474f * _wgslsmith_f_op_f32(f32(-1f) * -377f))), select(abs(select(vec3<i32>(u_input.c, global0.x, u_input.c), vec3<i32>(58624i, -17364i, u_input.c), !vec3<bool>(true, false, global1.x))), (vec3<i32>(-2147483647i, var_0.x, 0i) >> (countOneBits(u_input.a) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x), vec4<u32>(25530u, u_input.b, u_input.b, 13639u)), 17929u) % vec3<u32>(32u)), global1.x), u_input.a.x);
}

