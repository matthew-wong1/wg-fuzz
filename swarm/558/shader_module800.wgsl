struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), Struct_1(vec4<i32>(-1i, -9553i, -1i, -10442i), vec2<f32>(-1029f, -1048f), vec2<f32>(-1000f, -1478f)));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(10791i, Struct_1(vec4<i32>(1i, 11540i, i32(-2147483648), -38430i), vec2<f32>(2140f, 1061f), vec2<f32>(-1828f, 2072f))), Struct_2(41930i, Struct_1(vec4<i32>(-69337i, 8747i, 0i, -65822i), vec2<f32>(-513f, -882f), vec2<f32>(-175f, -1000f))), Struct_2(24282i, Struct_1(vec4<i32>(29432i, -35666i, 1157i, 0i), vec2<f32>(-1465f, -627f), vec2<f32>(400f, 1443f))), Struct_2(-1i, Struct_1(vec4<i32>(0i, 13546i, 10309i, -1i), vec2<f32>(1131f, 1928f), vec2<f32>(-1000f, 707f))), Struct_2(32941i, Struct_1(vec4<i32>(1i, i32(-2147483648), -9573i, i32(-2147483648)), vec2<f32>(-593f, 681f), vec2<f32>(969f, 342f))), Struct_2(-1i, Struct_1(vec4<i32>(-21588i, -39496i, i32(-2147483648), 1i), vec2<f32>(1399f, -1184f), vec2<f32>(465f, -893f))), Struct_2(2147483647i, Struct_1(vec4<i32>(1i, -22445i, -75646i, 1i), vec2<f32>(470f, 529f), vec2<f32>(494f, -696f))), Struct_2(-50149i, Struct_1(vec4<i32>(-9409i, i32(-2147483648), 30355i, 1i), vec2<f32>(605f, -701f), vec2<f32>(841f, 1457f))), Struct_2(30588i, Struct_1(vec4<i32>(0i, -36812i, -1i, i32(-2147483648)), vec2<f32>(-1522f, 1079f), vec2<f32>(-1033f, -1182f))), Struct_2(-1070i, Struct_1(vec4<i32>(10755i, 2147483647i, 0i, -17397i), vec2<f32>(463f, 570f), vec2<f32>(-998f, -127f))), Struct_2(47311i, Struct_1(vec4<i32>(6157i, 2147483647i, -26035i, -20185i), vec2<f32>(-341f, -171f), vec2<f32>(-2444f, 1230f))), Struct_2(1i, Struct_1(vec4<i32>(1i, i32(-2147483648), -35049i, -5031i), vec2<f32>(1000f, -217f), vec2<f32>(-707f, 799f))), Struct_2(-11593i, Struct_1(vec4<i32>(-1i, 23585i, 2147483647i, -1i), vec2<f32>(2095f, 1975f), vec2<f32>(-583f, 331f))), Struct_2(i32(-2147483648), Struct_1(vec4<i32>(-58230i, 2147483647i, 25682i, -43574i), vec2<f32>(970f, -191f), vec2<f32>(536f, -580f))), Struct_2(7135i, Struct_1(vec4<i32>(48480i, 1i, -17878i, 1i), vec2<f32>(-1000f, -473f), vec2<f32>(1739f, 937f))), Struct_2(-4586i, Struct_1(vec4<i32>(2147483647i, 1i, -1i, 0i), vec2<f32>(-1000f, 1692f), vec2<f32>(-522f, -2220f))), Struct_2(-31696i, Struct_1(vec4<i32>(45008i, -4192i, -64946i, 2147483647i), vec2<f32>(1299f, -312f), vec2<f32>(2022f, 482f))), Struct_2(0i, Struct_1(vec4<i32>(0i, 42657i, 23212i, 1i), vec2<f32>(-1379f, -241f), vec2<f32>(2579f, 363f))), Struct_2(2147483647i, Struct_1(vec4<i32>(0i, 22993i, 1i, -10642i), vec2<f32>(-161f, -702f), vec2<f32>(226f, -1084f))), Struct_2(3357i, Struct_1(vec4<i32>(12166i, -51333i, -1i, -35651i), vec2<f32>(-2192f, -1000f), vec2<f32>(362f, -407f))), Struct_2(-10257i, Struct_1(vec4<i32>(-789i, 50544i, 14002i, 13973i), vec2<f32>(474f, -464f), vec2<f32>(-1154f, 408f))), Struct_2(0i, Struct_1(vec4<i32>(-29470i, -898i, 4972i, 1i), vec2<f32>(-669f, -414f), vec2<f32>(-1000f, 947f))), Struct_2(53582i, Struct_1(vec4<i32>(0i, 2147483647i, -1i, 0i), vec2<f32>(1587f, -499f), vec2<f32>(-621f, 1476f))), Struct_2(i32(-2147483648), Struct_1(vec4<i32>(-25080i, 26948i, 2147483647i, -27039i), vec2<f32>(-1246f, -949f), vec2<f32>(-665f, -310f))), Struct_2(26174i, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -22183i, -28400i), vec2<f32>(447f, -1057f), vec2<f32>(1288f, -989f))));

var<private> global2: u32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    global1 = array<Struct_2, 25>();
    global0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(global0.b.a.x), arg_1.b.a.x, _wgslsmith_mod_i32(global0.a, global0.a)), -2147483647i), 1i), arg_1.b);
    global2 = ~u_input.a.x;
    var var_0 = Struct_1(vec4<i32>(-30506i, global0.b.a.x, -1i, ~(~_wgslsmith_mult_i32(global0.b.a.x, arg_1.b.a.x))), _wgslsmith_f_op_vec2_f32(-global0.b.b), arg_1.b.b);
    global1 = array<Struct_2, 25>();
    return ~abs(select(vec4<u32>(u_input.a.x, 10015u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 117529u, u_input.b.x), false) & ~vec4<u32>(u_input.a.x, 0u, 69382u, 1u)) >> (vec4<u32>(firstTrailingBit(u_input.a.x), u_input.b.x, u_input.a.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, 0u, 1u), u_input.b)))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = u_input.b.x;
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(min(1884f, arg_0.b.c.x)), _wgslsmith_f_op_f32(global0.b.c.x * 794f), _wgslsmith_f_op_f32(f32(-1f) * -499f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, 1009f, arg_0.b.b.x, global0.b.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.x, 608f, 493f, global0.b.c.x)))))));
    var var_3 = _wgslsmith_mult_u32(~var_0, firstTrailingBit(~0u));
    let var_4 = arg_0.b;
    return _wgslsmith_mod_vec4_i32(global0.b.a, ~arg_0.b.a) << (func_3(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, -49728i, var_4.a.x, -1i), ~arg_0.b.a), global0.b.c, _wgslsmith_div_vec2_f32(vec2<f32>(var_4.b.x, var_2.x), var_2.wy)), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 25u)]) % vec4<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    global1 = array<Struct_2, 25>();
    let var_0 = ~(~vec2<u32>(~(~29284u), u_input.b.x));
    var var_1 = global0.b.a.x;
    global2 = _wgslsmith_dot_vec2_u32(~(~u_input.a), vec2<u32>(~(~(~4294967295u)), 14436u));
    let var_2 = -501f;
    return -func_2(Struct_2(1i, Struct_1(global0.b.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -653f))), vec2<f32>(arg_1.x, -1706f))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = global0.b.c.x != _wgslsmith_f_op_f32(405f + _wgslsmith_f_op_f32(-arg_2.c.x));
    var var_1 = ~(-arg_2.a);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(abs(4294967295u), ~4294967295u), ~u_input.b.xx);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f * -456f) + -1716f), arg_2.c.x)), 1000f, arg_1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.x, arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, arg_1.c.x, -1000f) - vec3<f32>(global0.b.c.x, 913f, global0.b.b.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-143f, -238f, arg_1.c.x), vec3<f32>(-783f, 2436f, -723f))))), select(select(select(select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !vec3<bool>(true, false, arg_3), !arg_3), vec3<bool>(true, true, true), !vec3<bool>(arg_3, arg_3, arg_3)), select(select(!vec3<bool>(arg_3, false, arg_3), vec3<bool>(true, true, true), !arg_3), select(!vec3<bool>(false, true, arg_3), vec3<bool>(arg_3, true, false), select(arg_3, false, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(any(vec4<bool>(arg_3, arg_3, arg_3, arg_3)) & true, true, false))));
    global2 = _wgslsmith_add_u32(var_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(32741u), var_2.x, ~var_2.x, _wgslsmith_add_u32(20672u, 0u)), ~vec4<u32>(var_2.x, var_2.x, 4294967295u, 1u)));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mod_vec4_i32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.b.x)) - _wgslsmith_f_op_f32(-1000f * 1176f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, global0.b.c.x, 465f, global0.b.c.x) + vec4<f32>(global0.b.b.x, global0.b.b.x, global0.b.b.x, global0.b.c.x)) + vec4<f32>(global0.b.b.x, -1000f, -1000f, -2394f))), reverseBits(vec4<i32>(global0.a, -4211i, global0.b.a.x, -2147483647i)) | global0.b.a), global0.b, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(min(-1i, global0.a), global0.b.a.x, i32(-1i) * -34104i, ~global0.a), global0.b.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) * -780f), _wgslsmith_f_op_f32(global0.b.b.x * 1144f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-866f, global0.b.c.x))), global0.b.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.b.c), _wgslsmith_div_vec2_f32(global0.b.b, global0.b.b), true))))), any(vec2<bool>(true, true)));
    global1 = array<Struct_2, 25>();
    global2 = _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x);
    let var_1 = abs(global0.b.a.zyx);
    var var_2 = -8017i;
    let x = u_input.a;
    s_output = StorageBuffer(-430f, global0.b.a, ~(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 37823u)))), ~_wgslsmith_mod_u32(u_input.b.x, ~4294967295u), vec2<i32>(var_1.x, 97841i));
}

