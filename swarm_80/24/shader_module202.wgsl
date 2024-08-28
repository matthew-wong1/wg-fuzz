struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = ~arg_0.b;
    var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -1190f)) + -847f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-925f + _wgslsmith_f_op_f32(1791f + -551f)))));
    var var_2 = arg_0;
    var_0 = 6058i;
    return Struct_2(_wgslsmith_f_op_f32(round(var_1.x)), !(_wgslsmith_f_op_f32(-1757f + _wgslsmith_f_op_f32(-var_1.x)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(508f)), _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1808f * -776f), arg_1.a, 793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * arg_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(928f, -735f, 280f, 1167f), vec4<f32>(arg_1.a, -1345f, 1862f, arg_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1495f, 856f, 592f, arg_1.a) * vec4<f32>(arg_1.a, arg_1.a, 578f, -561f))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -112f), func_2(Struct_1(arg_0.a, arg_0.b), vec3<u32>(arg_2.x, arg_2.x, arg_2.x)).a, _wgslsmith_f_op_f32(trunc(460f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(579f, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f + -816f)), _wgslsmith_f_op_f32(ceil(-2462f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-430f, -198f, arg_1.a, arg_1.a), vec4<f32>(arg_1.a, arg_1.a, -1952f, -969f))))));
    var var_1 = arg_1.b;
    let var_2 = select(vec3<bool>(!((true && arg_1.b) & all(vec4<bool>(arg_1.b, false, true, false))), true, u_input.c.x < u_input.c.x), vec3<bool>(any(!(!vec3<bool>(arg_1.b, arg_1.b, arg_1.b))), false, true), !any(select(vec2<bool>(false, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b), arg_1.b)));
    var_1 = true;
    var var_3 = _wgslsmith_f_op_f32(sign(767f));
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -5103i), -(arg_0.b << (92123u % 32u)) >> (~1u % 32u)) & -1i;
}

fn func_1() -> u32 {
    let var_0 = -(~func_3(Struct_1(3796u, _wgslsmith_mult_i32(24762i, u_input.c.x)), func_2(Struct_1(12312u, -95140i), ~vec3<u32>(21894u, 58013u, 53340u)), ~vec2<u32>(4294967295u, 7972u)));
    var var_1 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(38926u, u_input.a, 39054u)), ~_wgslsmith_add_vec3_u32(min(vec3<u32>(21176u, u_input.e, 4294967295u), u_input.b), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b)));
    var_1 = 0u;
    var_1 = 1u;
    var_1 = _wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.e, u_input.e), max(~vec3<u32>(u_input.b.x, u_input.a, 1u), ~vec3<u32>(u_input.b.x, u_input.e, u_input.b.x))));
    return 20658u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 215f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2173f, _wgslsmith_f_op_f32(ceil(263f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(258f * 2320f), _wgslsmith_f_op_f32(1219f - 378f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1111f, -386f) + vec2<f32>(-273f, 498f))))) * vec2<f32>(787f, _wgslsmith_f_op_f32(abs(-871f)))));
    let var_2 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_3 = u_input.b;
    var_3 = vec3<u32>(func_1(), ~23313u, _wgslsmith_div_u32(var_3.x, _wgslsmith_sub_u32(u_input.a, ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, countOneBits(-1i), u_input.c.x & (-62126i ^ (-u_input.c.x >> ((46107u << (1u % 32u)) % 32u))), abs(u_input.a), select(21867i, u_input.c.x | -9615i, false));
}

