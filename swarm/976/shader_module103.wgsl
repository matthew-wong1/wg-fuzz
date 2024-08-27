struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: vec2<f32> = vec2<f32>(690f, 947f);

var<private> global2: u32;

var<private> global3: array<f32, 6> = array<f32, 6>(840f, -448f, -142f, -1700f, 1619f, 2033f);

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, arg_1.a.x, 0u, ~(u_input.a << (global0[_wgslsmith_index_u32(17446u, 27u)] % 32u))), _wgslsmith_clamp_vec4_u32(select(~arg_1.a, ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.d.x, 27u)], 27u)], 138189u, 0u, arg_1.d.x), !vec4<bool>(arg_0.b, true, arg_0.b, true)), arg_0.c.a.a, firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, arg_0.c.a.a.x)))) & 0u;
    let var_1 = 46810u;
    let var_2 = true;
    var_0 = var_1 ^ var_1;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-498f, -258f)))) + _wgslsmith_f_op_f32(-205f + arg_0.c.a.b.x)), 558f));
    return ~arg_0.c.a.d;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 27u)] << (4366u % 32u), global0[_wgslsmith_index_u32(u_input.a, 27u)], u_input.c.x) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u, 1u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 0u)) ^ (vec4<u32>(u_input.a, 4294967295u, 68211u, global0[_wgslsmith_index_u32(4294967295u, 27u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(15187u, 27u)], 7558u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.a, 27u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 6u)], 1159f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(652f, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global1.x, 889f), vec4<f32>(2067f, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], 304f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 6u)]), vec4<bool>(true, false, false, false))))), u_input.d, ~select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], global0[_wgslsmith_index_u32(36085u, 27u)], 55475u, global0[_wgslsmith_index_u32(25661u, 27u)]), func_3(Struct_4(vec2<i32>(u_input.d.x, u_input.d.x), true, Struct_3(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 3027u, 1u, 4294967295u), vec4<f32>(global1.x, 2093f, global1.x, 2578f), u_input.d, vec4<u32>(u_input.a, u_input.c.x, 34161u, 55917u), u_input.d.x), vec2<f32>(global1.x, global1.x), vec2<i32>(18159i, -3971i), u_input.d)), Struct_1(vec4<u32>(1u, u_input.a, 0u, global0[_wgslsmith_index_u32(39899u, 27u)]), vec4<f32>(global3[_wgslsmith_index_u32(76244u, 6u)], global1.x, global3[_wgslsmith_index_u32(u_input.a, 6u)], 639f), u_input.d, vec4<u32>(u_input.b.x, 52677u, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]), 0i)), global1.x < 1750f), -32703i), global0[_wgslsmith_index_u32(abs(4294967295u), 27u)], Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(25767u, global0[_wgslsmith_index_u32(1u, 27u)], 1u, u_input.a), vec4<u32>(12523u, global0[_wgslsmith_index_u32(0u, 27u)], u_input.c.x, 0u)) | vec4<u32>(41176u, 34449u, u_input.a, u_input.a), vec4<u32>(reverseBits(4294967295u), 36234u, global0[_wgslsmith_index_u32(63272u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)] | 46774u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(368f, -1000f, 408f, global1.x)))), min(u_input.d, _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.d.x, -7751i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 27910i, -7131i, u_input.d.x)), select(u_input.d, u_input.d, vec4<bool>(true, false, false, true)))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 27u)], u_input.b.x, global0[_wgslsmith_index_u32(1u, 27u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], u_input.a, 1u), reverseBits(vec4<u32>(u_input.a, u_input.a, 7799u, u_input.c.x)))), select(~u_input.d.x >> ((18583u << (u_input.a % 32u)) % 32u), -_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), false)), true);
    let var_1 = vec4<u32>(~80541u, global0[_wgslsmith_index_u32(~firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.c.d, vec4<u32>(var_0.a.d.x, 4294967295u, 4294967295u, var_0.c.a.x)), 27u)]), 27u)], countOneBits(12633u), _wgslsmith_sub_u32(var_0.c.a.x, 37099u | _wgslsmith_mult_u32(select(global0[_wgslsmith_index_u32(1u, 27u)], 51889u, var_0.d), ~4035u)));
    let var_2 = ~firstTrailingBit(i32(-1i) * -(2147483647i >> (var_1.x % 32u)));
    let var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(floor(839f));
    return 30183i | _wgslsmith_clamp_i32(i32(-1i) * -31875i, 1i, firstLeadingBit(var_0.a.e));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(~vec4<u32>(_wgslsmith_add_u32(25807u, 91904u), u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], ~1u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-171f - global3[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(select(global1.x, 185f, arg_1))), 975f), -u_input.d, ~(~vec4<u32>(global0[_wgslsmith_index_u32(63128u, 27u)], 106929u, 4550u, arg_0)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(52550u, 38969u, 21374u, 1u), vec4<u32>(0u, 4294967295u, u_input.a, 57237u), vec4<u32>(u_input.c.x, 0u, global0[_wgslsmith_index_u32(1u, 27u)], u_input.b.x)) % vec4<u32>(32u)), func_2() << (arg_0 % 32u)), 4294967295u ^ ~_wgslsmith_dot_vec3_u32(~u_input.b, func_3(Struct_4(vec2<i32>(u_input.d.x, u_input.d.x), true, Struct_3(Struct_1(vec4<u32>(9723u, 0u, 0u, 47375u), vec4<f32>(865f, -834f, -2458f, -406f), u_input.d, vec4<u32>(global0[_wgslsmith_index_u32(23660u, 27u)], 64287u, u_input.c.x, 4294967295u), u_input.d.x), vec2<f32>(global3[_wgslsmith_index_u32(97070u, 6u)], global1.x), vec2<i32>(u_input.d.x, u_input.d.x), u_input.d)), Struct_1(vec4<u32>(38054u, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1u, 0u), vec4<f32>(global1.x, global1.x, -540f, 649f), vec4<i32>(u_input.d.x, 10890i, -2147483647i, 3031i), vec4<u32>(0u, arg_0, u_input.c.x, 18348u), u_input.d.x)).zzy), Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 27u)], 53273u, u_input.c.x, 30844u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 13138u, 1u), vec4<u32>(0u, 33304u, 79011u, arg_0)) ^ ~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(917f, global1.x, global3[_wgslsmith_index_u32(114863u, 6u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 6u)]) - vec4<f32>(global1.x, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], 570f, global1.x)))), vec4<i32>(u_input.d.x, u_input.d.x, -u_input.d.x, -2147483647i) << (~abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0, 101467u, arg_0)) % vec4<u32>(32u)), ~(~(~vec4<u32>(18396u, 53549u, 24761u, global0[_wgslsmith_index_u32(arg_0, 27u)]))), abs(~(-17835i >> (u_input.a % 32u)))), !any(vec2<bool>(!arg_1, !arg_1)));
    global3 = array<f32, 6>();
    let var_2 = 30933i & u_input.d.x;
    let var_3 = -1i;
    return Struct_2(var_1.c, 68907u, var_1.a, all(!select(select(vec4<bool>(true, var_1.d, arg_1, var_1.d), vec4<bool>(false, arg_1, true, true), false), !vec4<bool>(var_1.d, var_1.d, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, var_1.d, true), vec4<bool>(var_1.d, var_1.d, true, true), vec4<bool>(var_1.d, true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 1u), 0u, true)), 6u)], _wgslsmith_f_op_f32(trunc(global1.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(476f, _wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(-1000f * 1043f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1096f, global3[_wgslsmith_index_u32(26705u, 6u)]), vec2<f32>(1281f, global1.x))) + vec2<f32>(-629f, global3[_wgslsmith_index_u32(0u, 6u)])) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1784f), _wgslsmith_div_f32(-646f, global1.x)))));
    var var_0 = func_1(0u, all(vec3<bool>(true, !any(vec3<bool>(true, true, true)), select(global0[_wgslsmith_index_u32(0u, 27u)], 179u, true) == (global0[_wgslsmith_index_u32(1u, 27u)] << (u_input.c.x % 32u)))));
    global3 = array<f32, 6>();
    global3 = array<f32, 6>();
    var var_1 = 14864u;
    global4 = abs(u_input.d.x);
    global0 = array<u32, 27>();
    let var_2 = Struct_5(var_0.a);
    let var_3 = Struct_5(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_3.a.d.x, _wgslsmith_clamp_u32(var_2.a.a.x, ~0u, 45606u) << (reverseBits(var_0.b) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.b.x, _wgslsmith_f_op_f32(var_2.a.b.x - 1190f), _wgslsmith_f_op_f32(-609f - 180f)), _wgslsmith_f_op_vec3_f32(floor(var_0.a.b.zyy))), var_3.a.b.zwz, var_0.d)));
}

