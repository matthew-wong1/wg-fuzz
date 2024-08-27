struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: array<u32, 16> = array<u32, 16>(5340u, 4294967295u, 4294967295u, 46628u, 4294967295u, 47607u, 0u, 38145u, 0u, 0u, 1u, 4294967295u, 7592u, 0u, 3645u, 0u);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(61u, -1318f, vec3<f32>(1000f, 693f, -619f), false), Struct_1(39745u, -1429f, vec3<f32>(-1751f, -1005f, -694f), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = ~(min(abs(~vec3<i32>(-1i, 1i, 58673i)), vec3<i32>(-13265i, u_input.c, u_input.c) << (vec3<u32>(arg_2, 1u, 56636u) % vec3<u32>(32u))) & -(countOneBits(vec3<i32>(-6080i, -10724i, arg_1)) << (vec3<u32>(1u, 29264u, arg_3.a) % vec3<u32>(32u))));
    global2 = array<Struct_1, 2>();
    let var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = global2[_wgslsmith_index_u32(60330u, 2u)];
    return _wgslsmith_f_op_f32(777f * _wgslsmith_f_op_f32(ceil(-350f)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1055f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-905f, 1000f, false)) + -870f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(355f, u_input.a.x, 2548u, Struct_1(u_input.e, 584f, vec3<f32>(-182f, -1000f, -1668f), false))) + -2607f))), _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1092f, arg_0.x, u_input.e, Struct_1(u_input.b.x, 256f, vec3<f32>(-210f, -1196f, -377f), true)))), _wgslsmith_f_op_f32(-1f))) + 1331f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1114f)), _wgslsmith_f_op_f32(f32(-1f) * -1666f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1295f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -370f);
    var var_2 = Struct_1(69917u, -509f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(688f, var_0.x), -2403f, -1628f) - vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), 588f, _wgslsmith_f_op_f32(-var_0.x))), var_0.xwz)), true);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b)));
    var var_3 = !vec4<bool>(all(vec2<bool>(all(vec4<bool>(true, var_2.d, true, var_2.d)), 591f == var_2.c.x)), true, !var_2.d & !select(true, true, var_2.d), false);
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_3(-431f, _wgslsmith_div_i32(countOneBits(u_input.d) ^ 0i, arg_0.x), max(reverseBits(0u), _wgslsmith_clamp_u32(var_2.a, 42844u, 0u) & var_2.a), global2[_wgslsmith_index_u32(1u, 2u)])));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~global1[_wgslsmith_index_u32(0u, 16u)];
    var var_1 = !(!vec4<bool>(1u != ~var_0, var_0 <= 12792u, !(!arg_0.d), true));
    let var_2 = Struct_1(_wgslsmith_sub_u32(arg_0.a, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f + arg_0.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(func_2(u_input.a.yxz)), 658f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c + _wgslsmith_f_op_vec3_f32(-arg_0.c))), true)), var_1.x);
    global2 = array<Struct_1, 2>();
    let var_3 = -u_input.d;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.e, 2u)];
    let var_1 = Struct_1(_wgslsmith_mod_u32(var_0.a, u_input.b.x), var_0.c.x, _wgslsmith_f_op_vec3_f32(floor(var_0.c)), true);
    global0 = array<vec3<bool>, 11>();
    global2 = array<Struct_1, 2>();
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, func_1(global2[_wgslsmith_index_u32(1u, 2u)])), countOneBits(vec2<u32>(var_2, global1[_wgslsmith_index_u32(1u, 16u)]) & u_input.b)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_1.a, ~(~(vec2<u32>(global1[_wgslsmith_index_u32(u_input.e, 16u)], var_2) ^ u_input.b) >> (vec2<u32>(~58958u, _wgslsmith_add_u32(var_0.a, 10490u)) % vec2<u32>(32u))));
}

