struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: array<bool, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec2<u32>, 31>();
    return -629f;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.b.x;
    global1 = array<bool, 20>();
    var var_1 = Struct_2(select(vec4<i32>(u_input.b.x, abs(6672i), 13185i, -47055i), abs(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i)), vec4<bool>(global1[_wgslsmith_index_u32(var_0, 20u)], true, all(!vec2<bool>(arg_1.e.x, true)), false)), -2147483647i, arg_1.d.zxy, _wgslsmith_mod_u32(var_0, 74885u), u_input.b.x);
    return vec4<bool>(!all(vec4<bool>(global1[_wgslsmith_index_u32(69647u, 20u)], true, global1[_wgslsmith_index_u32(var_1.c.x, 20u)], arg_1.e.x)) && !(var_1.e == u_input.b.x), all(arg_1.e), false, all(select(vec4<bool>(arg_1.e.x, any(vec2<bool>(global1[_wgslsmith_index_u32(44773u, 20u)], true)), !arg_1.e.x, true), vec4<bool>(arg_1.a.x <= arg_0, true, true, false), true)));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.c.x;
    var var_1 = !vec4<bool>(!((false && global1[_wgslsmith_index_u32(u_input.c.x, 20u)]) || global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), true, select(global1[_wgslsmith_index_u32(max(max(53735u, u_input.c.x), u_input.c.x << (var_0 % 32u)), 20u)], false, false), select(false, global1[_wgslsmith_index_u32(u_input.a, 20u)], !global1[_wgslsmith_index_u32(~u_input.a, 20u)]));
    var_1 = vec4<bool>(false, !any(func_3(2305f, Struct_1(vec2<f32>(-176f, -619f), u_input.c, 1330f, vec4<u32>(var_0, u_input.a, u_input.a, var_0), var_1.wy))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(72268u, var_0, 1u), vec3<u32>(u_input.a, var_0, var_0)) & countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 0u, 4966u, u_input.a))), 59778u), 20u)], all(func_3(799f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1164f, -1488f)), u_input.c << (vec2<u32>(u_input.a, 2081u) % vec2<u32>(32u)), 617f, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0, 61497u, 0u), vec4<u32>(64974u, 3111u, u_input.c.x, u_input.a)), var_1.xw)).yw));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1429f, _wgslsmith_f_op_f32(f32(-1f) * -1136f)))))));
    let var_3 = !var_1.yx;
    return Struct_2(vec4<i32>(-countOneBits(u_input.b.x) ^ u_input.b.x, ~(~(-42011i)), _wgslsmith_sub_i32(-(u_input.b.x >> (u_input.c.x % 32u)), -15915i), -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x)), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, 5438i, u_input.b.x, 0i))), u_input.b.x, vec3<u32>(~max(106176u << (0u % 32u), _wgslsmith_div_u32(var_0, 0u)), u_input.c.x, ~4294967295u), ~_wgslsmith_div_u32(abs(var_0), firstTrailingBit(max(var_0, var_0))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-531f, -923f), vec2<f32>(519f, 170f))), Struct_2(vec4<i32>(u_input.b.x, 75428i, u_input.b.x, u_input.b.x), ~(-1i), vec3<u32>(0u, u_input.a, 10888u), _wgslsmith_sub_u32(u_input.c.x, 692u), ~(-71349i))))) - 1048f);
    global0 = array<vec2<u32>, 31>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0), 810f);
    let var_2 = func_2();
    global0 = array<vec2<u32>, 31>();
    global1 = array<bool, 20>();
    var var_3 = select(select(~select(max(vec4<u32>(var_2.d, var_2.c.x, u_input.a, var_2.d), vec4<u32>(0u, u_input.c.x, var_2.c.x, u_input.a)), ~vec4<u32>(50880u, var_2.c.x, var_2.d, 1u), func_3(-637f, Struct_1(vec2<f32>(1496f, 190f), vec2<u32>(4294967295u, u_input.c.x), var_0, vec4<u32>(u_input.c.x, var_2.c.x, var_2.d, var_2.d), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 20u)], true))).x), ~(~(vec4<u32>(25837u, 1u, var_2.d, 0u) << (vec4<u32>(15973u, var_2.c.x, var_2.d, u_input.a) % vec4<u32>(32u)))), !select(true, true, global1[_wgslsmith_index_u32(0u, 20u)]) && (var_1.x != _wgslsmith_f_op_f32(var_0 - var_1.x))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.c.x), var_2.c.x >> (u_input.a % 32u), var_2.d, ~0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_2.d, 13805u), firstLeadingBit(vec4<u32>(u_input.a, 0u, 66433u, var_2.d)))) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c), ~global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_mult_u32(_wgslsmith_sub_u32(1544u, 1u), 1u), func_2().c.x, 3440u), false);
    var var_4 = reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 79439u, var_3.x, 54057u), vec4<u32>(var_2.d, var_2.d, 78523u, 4294967295u)), vec4<u32>(u_input.a, u_input.c.x, 4294967295u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.d, 1u, u_input.c.x) | vec4<u32>(var_2.c.x, var_3.x, 0u, var_2.d), vec4<u32>(var_3.x, var_2.c.x, 23161u, u_input.a)))) << (~(~select(vec4<u32>(0u, 4294967295u, u_input.c.x, var_3.x), ~vec4<u32>(var_3.x, 1u, 1u, 39094u), vec4<bool>(global1[_wgslsmith_index_u32(var_2.c.x, 20u)], false, false, global1[_wgslsmith_index_u32(var_3.x, 20u)]))) % vec4<u32>(32u));
    var var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-563f)))), ~reverseBits(vec2<u32>(~var_3.x, _wgslsmith_dot_vec3_u32(var_2.c, vec3<u32>(u_input.a, 4294967295u, 69138u)))), 457f, abs(~firstLeadingBit(vec4<u32>(var_2.d, var_4.x, 42194u, 1u))), vec2<bool>(~var_3.x != var_4.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1), vec2<u32>(var_3.x, 32507u), _wgslsmith_div_f32(-704f, 248f), select(vec4<u32>(var_4.x, var_3.x, var_4.x, 50344u), vec4<u32>(1u, 4294967295u, 78635u, 1u), true), vec2<bool>(false, global1[_wgslsmith_index_u32(var_4.x, 20u)]))).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - var_5.c), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_0 + 993f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(-452f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3115f, -948f))), _wgslsmith_f_op_f32(f32(-1f) * -1383f)), countOneBits(var_2.a));
}

