struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
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

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 4294967295u, 32409u, 52960u), vec4<u32>(0u, 38944u, 46982u, 17131u), vec4<u32>(0u, 18176u, 28559u, 31862u), vec4<u32>(54690u, 0u, 39013u, 4294967295u), vec4<u32>(51421u, 25816u, 43903u, 40713u), vec4<u32>(0u, 33182u, 3876u, 53875u), vec4<u32>(93843u, 61011u, 15321u, 4294967295u), vec4<u32>(9281u, 0u, 51471u, 37143u), vec4<u32>(16040u, 40618u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(37775u, 9208u, 4294967295u, 4294967295u), vec4<u32>(25790u, 13441u, 0u, 1u), vec4<u32>(1u, 0u, 62645u, 1u), vec4<u32>(4294967295u, 0u, 15865u, 443u), vec4<u32>(10635u, 4294967295u, 0u, 1u), vec4<u32>(0u, 902u, 1u, 26828u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(41844u, 0u, 20607u, 26730u), vec4<u32>(28827u, 1u, 2800u, 4294967295u), vec4<u32>(53274u, 4294967295u, 70964u, 19580u), vec4<u32>(33911u, 11361u, 0u, 0u), vec4<u32>(19436u, 41947u, 100083u, 143025u), vec4<u32>(17732u, 21129u, 26899u, 1u));

var<private> global3: array<Struct_4, 10>;

var<private> global4: f32 = -1059f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    global3 = array<Struct_4, 10>();
    global2 = array<vec4<u32>, 23>();
    let var_0 = Struct_2(arg_1.a.a.a);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global1 = array<Struct_2, 3>();
    return var_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_div_f32(1435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(min(global0.x, global0.x)))) - -1137f)) <= global0.x;
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, 59593u), 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1637f))), -462f, global0.x) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(772f, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))))))));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))))))));
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<bool>(!(!(true | all(vec2<bool>(true, false)))), func_3(global1[_wgslsmith_index_u32(53453u, 3u)], Struct_3(Struct_2(func_2(true, global3[_wgslsmith_index_u32(u_input.b, 10u)]))), i32(-1i) * -50201i), true, true);
    let var_1 = global1[_wgslsmith_index_u32(1u, 3u)];
    var var_2 = ~(-vec3<i32>(u_input.a, 2147483647i, u_input.a));
    var var_3 = all(vec4<bool>(any(!select(var_0.zxy, vec3<bool>(false, false, false), vec3<bool>(var_1.a.a, var_0.x, true))), !(true || (4294967295u > u_input.d.x)), true, true));
    global1 = array<Struct_2, 3>();
    return Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(u_input.d.x), u_input.d.x ^ 26279u), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]) & _wgslsmith_mod_u32(8609u, 1u)) | u_input.b, 3u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> Struct_4 {
    var var_0 = Struct_4(arg_1.b, !func_3(arg_1.b.a, arg_1.b, max(-52098i, -561i)), _wgslsmith_f_op_f32(trunc(-580f)), Struct_1(any(!select(vec3<bool>(arg_0, true, arg_1.c.a), vec3<bool>(true, arg_0, arg_1.c.a), vec3<bool>(true, arg_0, false)))), vec3<bool>(u_input.d.x != u_input.d.x, false, (global0.x >= arg_1.a) && true));
    global4 = _wgslsmith_f_op_f32(-var_0.c);
    var var_1 = u_input.a;
    global4 = _wgslsmith_f_op_f32(-var_0.c);
    global2 = array<vec4<u32>, 23>();
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, ~_wgslsmith_mod_u32(u_input.b, 0u)), 10u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    global3 = array<Struct_4, 10>();
    var var_0 = arg_0.a;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_i32(5060i, _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_add_i32(-u_input.a, ~20766i)), u_input.c.x));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-620f, global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.yy + vec2<f32>(836f, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(func_4(true, Struct_5(_wgslsmith_div_f32(-1176f, global0.x), func_1(), Struct_1(true))), ~(~u_input.c))), _wgslsmith_add_u32(~u_input.d.x, u_input.d.x), var_2.x, vec3<i32>(u_input.c.x, 1i, 3840i) << (~vec3<u32>(4294967295u, u_input.b, 47858u) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b >> (u_input.b % 32u), u_input.d.x), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(79733u, u_input.b) | u_input.d), u_input.d)));
}

