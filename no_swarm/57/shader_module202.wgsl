struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = -1815f;
    var var_1 = -2147483647i;
    var var_2 = 39071i;
    global0 = vec4<u32>(_wgslsmith_sub_u32(arg_0.b.x, global0.x << (reverseBits(0u << (arg_0.b.x % 32u)) % 32u)), select(_wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x), arg_0.c, any(vec2<bool>(true, true))), _wgslsmith_add_u32(1u, global0.x), global0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-414f, -178f)))), abs(~(~vec2<u32>(0u, global0.x))), _wgslsmith_mod_u32(global0.x, 4294967295u));
    return ~(~(~vec4<u32>(global0.x, _wgslsmith_div_u32(arg_0.b.x, 4294967295u), var_3.c, ~31287u)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = vec4<u32>(global0.x, 0u, 33201u, ~0u);
    global0 = abs(vec4<u32>(global0.x, abs(~global0.x) << (var_0.x % 32u), ~42967u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, global0.x), var_0.xwy), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(global0.x, global0.x) & vec2<u32>(global0.x, 4294967295u)))));
    global0 = var_0;
    global0 = vec4<u32>(var_0.x, ~1u, ~(~global0.x), func_1(Struct_1(_wgslsmith_div_f32(-681f, 600f), vec2<u32>(global0.x, var_0.x) & vec2<u32>(var_0.x, 28848u), ~global0.x)).x >> (_wgslsmith_mult_u32(21383u ^ (1u >> (global0.x % 32u)), 36764u) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1021f, 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1420f, 1233f), _wgslsmith_div_f32(915f, 908f), true)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2834f, -1662f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1057f * -600f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1025f - -1497f), _wgslsmith_div_f32(-456f, 859f))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec2<f32>(1019f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, true))), -2245f), -244f)));
    global0 = abs(~vec4<u32>(46900u, arg_1.b.x & arg_1.c, 1u, arg_1.c | global0.x)) & ~firstTrailingBit(func_1(Struct_1(var_0.x, vec2<u32>(6530u, global0.x), 15451u)));
    var var_1 = vec2<bool>(false, all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true), true)));
    global0 = abs(vec4<u32>(_wgslsmith_div_u32(abs(reverseBits(4294967295u)), global0.x ^ global0.x), _wgslsmith_div_u32(~(1u | arg_1.b.x), 73499u), 1u, abs(731u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-604f))), _wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(select(1365f, var_0.x, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))))));
    return firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(~global0.x, 103896u), abs(~(vec2<u32>(4294967295u, 21780u) ^ vec2<u32>(arg_1.b.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(min(global0.x, global0.x), ~global0.x), global0.x, _wgslsmith_mult_u32(~global0.x, 1u), global0.x)) << (~func_1(Struct_1(_wgslsmith_f_op_f32(abs(-716f)), vec2<u32>(0u, 7139u), ~global0.x)) % vec4<u32>(32u));
    let var_0 = global0.xw;
    let var_1 = Struct_1(990f, abs(~_wgslsmith_add_vec2_u32(func_1(Struct_1(-420f, global0.yy, global0.x)).ww, func_2(vec4<f32>(993f, 936f, 2010f, -522f), Struct_1(733f, vec2<u32>(33453u, var_0.x), var_0.x)))), ~(~_wgslsmith_div_u32(~36663u, var_0.x << (13318u % 32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)) + 1f), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)) * _wgslsmith_f_op_f32(-521f - var_1.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, 592f) * vec2<f32>(var_1.a, var_1.a)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, var_1.a)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 555f), vec2<f32>(var_2.x, var_2.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a * var_2.x), _wgslsmith_f_op_f32(-239f + -2040f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 740f))))));
    global0 = ~(select(_wgslsmith_mod_vec4_u32(vec4<u32>(7526u, 72189u, var_1.b.x, global0.x), ~vec4<u32>(global0.x, 4458u, 42054u, 4294967295u)), ~(~vec4<u32>(117140u, 26982u, 4294967295u, var_0.x)), vec4<bool>(true, true, true, true)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(88009u, global0.x, var_0.x, global0.x), abs(vec4<u32>(global0.x, global0.x, var_0.x, global0.x))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.x, 0u, global0.x, 15889u)), vec4<u32>(86714u, var_1.b.x, 54349u, 35343u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1851f, var_1.a), vec2<f32>(-774f, 332f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_3)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(select(false, false, true), true), ~52352u <= ~var_1.c))), -(abs(i32(-1i) * -48560i) << (~_wgslsmith_mod_u32(global0.x, var_0.x) % 32u)));
}

