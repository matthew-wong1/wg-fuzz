struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> u32 {
    return select(~24031u, u_input.b, false);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_2.a)), u_input.a.x, vec3<bool>(!(true && all(arg_2.c.xz)), false, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b, select(select(arg_2.c, !vec3<bool>(arg_2.c.x, var_0.c.x, false), arg_2.c), select(select(arg_2.c, arg_2.c, vec3<bool>(var_0.c.x, false, false)), arg_2.c, 34688u > max(65761u, u_input.d)), any(select(vec4<bool>(false, var_0.c.x, var_0.c.x, arg_2.c.x), !vec4<bool>(var_0.c.x, false, false, var_0.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, arg_2.c.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(1363f, _wgslsmith_f_op_f32(exp2(var_0.a)))), -(~(-2147483647i)), select(vec3<bool>(any(select(var_0.c, vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(true, arg_2.c.x, true))), false, select(false, false, var_0.c.x) || !var_0.c.x), !(!select(vec3<bool>(arg_2.c.x, false, true), vec3<bool>(false, true, arg_2.c.x), var_0.c.x)), select(var_0.c, !select(var_0.c, vec3<bool>(true, var_0.c.x, true), var_0.c.x), false)));
    var var_3 = arg_2;
    var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(168f)), reverseBits(-44704i), !select(arg_2.c, var_2.c, all(vec3<bool>(true, false, true))));
    return 2147483647i;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 457f, arg_0.a, arg_0.a) * vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.a, -110f, -1165f), vec4<f32>(-1009f, -454f, arg_0.a, -2350f), false)))) * vec4<f32>(445f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(max(arg_0.a, 180f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f - arg_0.a)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(216f + 1291f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 1619f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1325f + 519f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + arg_0.a) - -814f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(-1293f * _wgslsmith_f_op_f32(abs(276f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(f32(-1f) * -359f)))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.b, arg_0.b), -arg_0.b), ~arg_0.b), min(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b, u_input.a.x), vec2<i32>(-6853i, u_input.a.x)), u_input.a), abs(vec2<i32>(34595i, u_input.a.x)))), _wgslsmith_dot_vec2_i32(~max(max(vec2<i32>(2147483647i, arg_0.b), vec2<i32>(arg_0.b, -2147483647i)), -vec2<i32>(1i, u_input.a.x)), -u_input.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), ~(-2147483647i), !select(arg_0.c, select(arg_0.c, vec3<bool>(arg_0.c.x, true, arg_0.c.x), !arg_0.c), arg_0.c.x));
    var var_3 = ~vec2<i32>(var_1 & _wgslsmith_mult_i32(-7749i, var_1), -46093i) ^ u_input.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -636f))) - var_2.a)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_4(Struct_1(-1523f, func_3(arg_3, arg_3, Struct_1(-1079f, u_input.a.x, vec3<bool>(arg_1, arg_1, true))), vec3<bool>(false, arg_1, true)))), arg_0.x, _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), u_input.a.x, vec3<bool>(false, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-518f, _wgslsmith_f_op_f32(arg_0.x * 661f), 1165f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))))) * arg_0), arg_1));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2531f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_mult_i32(abs(1i), u_input.a.x), vec3<bool>(!any(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(false, arg_1, true, arg_1), true)), !arg_1, any(!vec3<bool>(true, arg_1, false))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = ~vec2<i32>(arg_2.x, -2147483647i);
    var_2 = 1f;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - var_1.a), (i32(-1i) * -(i32(-1i) * -7081i)) << (arg_3 % 32u), vec3<bool>(select(~var_3.x < select(var_1.b, -35662i, arg_1), false, var_1.c.x), all(!(!vec4<bool>(true, var_1.c.x, var_1.c.x, false))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(76568u, ~abs(~0u));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-964f, -1393f, -178f, 2221f))), vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f + -841f) + _wgslsmith_f_op_f32(-1000f * 1467f)), -1058f, -500f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(363f, -612f, true)))))), true, -vec2<i32>(u_input.a.x, abs(u_input.a.x) & _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), func_1() | ~var_0.x);
    var var_2 = 1u;
    var var_3 = ~(~(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b, -33966i, -2147483647i, var_1.b), -vec4<i32>(1i, -3962i, -5531i, u_input.a.x)) ^ _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(22855i, var_1.b, 13828i, var_1.b)), reverseBits(vec4<i32>(u_input.a.x, var_1.b, u_input.a.x, 20014i)))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.d ^ ~62332u, 1u));
}

