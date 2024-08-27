struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(true, vec4<i32>(0i, 20386i, 58472i, 1i)), -1000f, Struct_1(true, vec4<i32>(-33334i, 59610i, -454i, 2147483647i)), true, -1i), Struct_2(Struct_1(true, vec4<i32>(10908i, -15822i, -30265i, i32(-2147483648))), -287f, Struct_1(true, vec4<i32>(-19101i, i32(-2147483648), 61841i, -40118i)), true, 2147483647i), Struct_2(Struct_1(false, vec4<i32>(2147483647i, 35595i, 0i, -17383i)), 715f, Struct_1(true, vec4<i32>(2147483647i, 3697i, 2147483647i, -1i)), false, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 1150f))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), arg_0)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0, 1336f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))), _wgslsmith_f_op_f32(sign(-1677f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1571f)), var_0.x));
    global0 = array<Struct_2, 3>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(var_0.x)));
    return var_0.x;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = ~max(firstLeadingBit(_wgslsmith_sub_u32(~arg_3, u_input.c.x)), _wgslsmith_clamp_u32(abs(arg_3) & 51316u, ~0u, max(_wgslsmith_sub_u32(arg_2, 3247u), ~57227u)));
    var var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -1091f, -1044f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(549f, 1000f, arg_1.b) - vec3<f32>(arg_1.b, 560f, -224f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -1749f, -359f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, arg_1.b, 403f)))), !vec3<bool>(false, arg_0, arg_0))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)), 337f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1179f, arg_1.b, arg_0)), arg_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(434f, 4294967295u, arg_1.c, u_input.e.x)), _wgslsmith_f_op_f32(min(1492f, arg_1.b))))) - vec3<f32>(122f, 934f, -218f));
    let var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, -(u_input.b.x >> (u_input.c.x % 32u)), i32(-1i) * -25693i, 2147483647i), arg_1.c.b);
    var_0 = ~4294967295u;
    return _wgslsmith_sub_u32(arg_2, _wgslsmith_mult_u32(17922u, ~u_input.c.x));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = u_input.c.x;
    var var_2 = 1101f;
    let var_3 = select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(func_2(arg_0.x, u_input.c.x, Struct_1(false, vec4<i32>(u_input.e.x, var_0, 17345i, var_0)), 1i)) <= arg_0.x, true)), vec2<bool>(true, true));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_1, func_3(any(!vec2<bool>(var_3.x, var_3.x)), Struct_2(Struct_1(false, vec4<i32>(var_0, u_input.a.x, -30966i, 0i)), -1220f, Struct_1(var_3.x, vec4<i32>(55975i, var_0, -19675i, u_input.e.x)), true, -1i), ~(~var_1), var_1)), ~_wgslsmith_div_u32(96991u, u_input.c.x)), 3u)];
    return global0[_wgslsmith_index_u32(var_1, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1823f, -2339f, false)), _wgslsmith_f_op_f32(-309f * 562f)) * -666f) + 765f));
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1731f, -1000f), vec3<f32>(144f, -1345f, -122f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 639f, 871f) * vec3<f32>(1981f, -1093f, -1103f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(500f, -272f, 150f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(698f, 1062f, -1778f)))))));
    let var_3 = u_input.c.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, var_2.b))).b) - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)));
    var var_4 = select(!vec4<bool>((var_2.a.a && var_2.a.a) || var_2.d, true, all(select(vec2<bool>(true, var_2.c.a), vec2<bool>(true, var_2.d), var_2.d)), var_2.d), select(select(select(select(vec4<bool>(var_2.d, var_2.c.a, var_2.d, var_2.d), vec4<bool>(var_2.d, var_2.a.a, false, true), var_2.a.a), vec4<bool>(false, true, true, var_2.a.a), vec4<bool>(var_2.a.a, var_2.d, true, true)), vec4<bool>(false, false, true, false), !(!vec4<bool>(var_2.c.a, false, true, var_2.d))), vec4<bool>((10836i >= var_2.a.b.x) != true, all(vec4<bool>(var_2.a.a, true, var_2.d, false)), !all(vec2<bool>(var_2.c.a, var_2.a.a)), !(!var_2.a.a)), false), vec4<bool>(var_2.a.a, var_2.c.a, false, var_2.a.a));
    var var_5 = u_input.c.x | (~_wgslsmith_add_u32(var_3, u_input.c.x) >> (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.c.b, 1402u, ~vec3<u32>(abs(~var_0.x), ~48467u, 52910u), vec4<u32>(~var_0.x, var_3, _wgslsmith_clamp_u32(var_3, 4294967295u, ~u_input.c.x), ~(~firstLeadingBit(u_input.c.x))));
}

