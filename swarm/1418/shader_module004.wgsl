struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> u32 {
    return 1750u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(select(select(vec3<bool>(true, true, all(vec4<bool>(arg_0.x, arg_1.x, true, arg_1.x))), arg_1, true), arg_0, false));
    global0 = 4032u & _wgslsmith_mult_u32(19188u, ~1u | u_input.a.x);
    let var_2 = _wgslsmith_sub_u32(4294967295u, abs(~57507u));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_div_f32(arg_3, arg_3), true)), arg_3, arg_3)), vec4<f32>(arg_3, arg_3, arg_3, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(-792f - arg_3)))));
    return vec3<bool>(true, false && any(select(select(arg_0.zy, arg_1.yy, var_1.a.zy), vec2<bool>(true, true), arg_0.xy)), true);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    return Struct_4(~vec4<u32>(68896u, ~u_input.a.x, 0u, ~u_input.a.x) | ~vec4<u32>(u_input.a.x, abs(1u), 4294967295u, u_input.a.x), Struct_1(!func_3(!vec3<bool>(arg_1.c.x, false, arg_1.c.x), !vec3<bool>(arg_1.a, arg_1.a, arg_1.c.x), u_input.b, _wgslsmith_f_op_f32(step(arg_1.b.x, arg_0)))), arg_1, arg_1.c, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~firstLeadingBit(u_input.d.x << ((u_input.a.x ^ u_input.a.x) % 32u)));
    let var_1 = func_2(_wgslsmith_f_op_f32(ceil(723f)), Struct_2(false, vec2<f32>(1f, _wgslsmith_f_op_f32(round(-622f))), vec2<bool>(true, true)));
    var var_2 = var_1.c;
    global1 = array<vec3<f32>, 6>();
    let var_3 = any(select(var_2.c, var_1.c.c, vec2<bool>(all(vec3<bool>(false, false, var_1.c.a)), false)));
    let var_4 = var_1.b;
    var var_5 = Struct_1(!(!select(!var_4.a, !vec3<bool>(var_3, true, var_3), vec3<bool>(false, true, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.b.x)), _wgslsmith_div_f32(-625f, -108f), var_1.c.b.x), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a.x ^ u_input.a.x, var_0, 23821u >> (var_1.a.x % 32u)), 6u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1439f, var_1.c.b.x, var_1.c.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, var_2.b.x, -740f)))))), firstLeadingBit(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, var_0), 50272u), min(23837u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, var_1.a.x), vec3<u32>(var_0, 11506u, var_0))))), _wgslsmith_add_u32(1u, min(~_wgslsmith_add_u32(3894u, var_0), ~4294967295u >> (~var_0 % 32u))), vec3<f32>(func_2(var_1.c.b.x, var_1.c).c.b.x, var_1.c.b.x, var_2.b.x));
}

