struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    return all(vec4<bool>(arg_0.x < _wgslsmith_f_op_f32(arg_0.x + -963f), true, false, 1317f <= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, 1178f), -1541f, u_input.a.x >= u_input.a.x))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = ~(~arg_3.b.zz);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(95307u >> (arg_3.a.a.a % 32u), _wgslsmith_mult_u32(1u, var_0.x), _wgslsmith_sub_u32(arg_3.b.x, var_0.x), arg_3.b.x), min(vec4<u32>(48856u, arg_3.a.a.a, arg_3.b.x, arg_3.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)) & ~vec4<u32>(48970u, 54069u, 0u, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3.b.x, arg_3.a.b.a, u_input.a.x, 16575u), ~vec4<u32>(1u, var_0.x, arg_3.b.x, var_0.x))), _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.x), ~u_input.a)));
    var_1 = ~arg_3.b.x;
    let var_2 = arg_3.c;
    var var_3 = Struct_3(Struct_1(~1u, _wgslsmith_add_u32(~4294967295u, 1u), arg_3.a.a.c), arg_3.a.b, select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(5117u, u_input.a.x, 63421u, 0u), vec4<u32>(arg_3.b.x, var_0.x, u_input.a.x, arg_3.a.b.a)) < 1u, false), vec2<bool>(all(select(vec4<bool>(true, arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x), vec4<bool>(arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x, true), arg_3.a.c.x)), arg_3.a.c.x), arg_3.a.c.x));
    return func_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))), 982f));
}

fn func_2() -> bool {
    global0 = !(!all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)));
    global0 = any(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, !func_3(-28618i, vec3<f32>(1669f, 724f, 1133f), 18718i, Struct_4(Struct_3(Struct_1(1u, u_input.a.x, vec4<f32>(-1000f, 2093f, -1523f, 950f)), Struct_2(u_input.a.x, vec2<f32>(-1612f, -1000f)), vec2<bool>(true, true)), vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec2<i32>(-26628i, 32908i))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2304f))), _wgslsmith_f_op_f32(-1000f - 526f))));
    global0 = false;
    var var_1 = Struct_3(Struct_1(select(u_input.a.x, u_input.a.x, func_1(vec2<f32>(492f, -1689f))), countOneBits(~55784u | ~u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1622f) - _wgslsmith_f_op_f32(f32(-1f) * -1989f)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1945f, var_0.x), var_0.x)))), Struct_2(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, 36846u, u_input.a.x), vec3<u32>(44026u, u_input.a.x, 40589u), vec3<bool>(true, false, true)), vec3<u32>(select(u_input.a.x, 70339u, true), ~u_input.a.x, 26961u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(var_0)), var_0)) - var_0)), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), true));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1126f)) + 182f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(f32(-1f) * -2431f)))));
    global0 = true;
    global0 = false;
    global0 = any(vec4<bool>(select(true, func_2(), func_1(vec2<f32>(-462f, 835f)) != true), !any(vec4<bool>(false, false, false, false)), any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true)), all(vec2<bool>(false, all(vec2<bool>(false, false))))));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(f32(-1f) * -185f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1462f, -1192f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-773f, -1014f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1843f, 502f) * vec2<f32>(1094f, 1731f)))), vec2<f32>(-844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-612f, 177f)) + _wgslsmith_div_f32(-1152f, 900f))), true)));
    let var_1 = select(any(vec2<bool>(true, true)), false & select(false, func_2(), !func_1(vec2<f32>(990f, 913f))), all(!vec3<bool>(select(true, false, true), any(vec4<bool>(true, true, false, true)), select(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -30407i) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(min(0u, 1u), 1u), 4294967295u) % 32u), vec2<i32>(max(9157i, _wgslsmith_clamp_i32(i32(-1i) * -10815i, abs(-2147483647i), min(1i, 42204i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(32133i, -3094i), -1i, -40797i, ~(-1i)), reverseBits(-vec4<i32>(3866i, 31951i, 1i, -2147483647i)))), vec3<u32>(4294967295u, 4294967295u, 11711u), max(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, _wgslsmith_clamp_i32(~(-17288i), -6040i, ~(-1i)), -8942i)), var_0.a);
}

