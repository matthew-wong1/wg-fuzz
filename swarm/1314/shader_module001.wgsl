struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(u_input.a.x, 209f), _wgslsmith_div_i32(u_input.a.x, 1i));
    var_0 = Struct_2(var_0.a, reverseBits(var_0.a.a));
    var var_1 = firstLeadingBit(vec4<u32>(0u, _wgslsmith_sub_u32(~u_input.b, 4294967295u) << (((1u << (arg_0.x % 32u)) & ~64944u) % 32u), 4483u, u_input.b & ~_wgslsmith_dot_vec4_u32(arg_0, arg_0)));
    var var_2 = vec2<bool>(~var_1.x <= ~var_1.x, any(select(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.b, var_0.b), vec3<i32>(u_input.a.x, 1i, var_0.a.a)) ^ vec3<i32>(u_input.a.x, 1i, -50197i), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a, u_input.a.x, var_0.b), vec3<i32>(var_0.b, u_input.a.x, 27935i))), 153f), 1i);
    return !select(vec2<bool>(true, !any(vec4<bool>(var_2.x, var_2.x, true, var_2.x))), !(!select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), vec2<bool>(true, true))), select(select(select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), var_2.x), vec2<bool>(false, true), any(vec4<bool>(true, true, var_2.x, var_2.x))), vec2<bool>(var_0.a.b >= var_0.a.b, !var_2.x), var_2.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -582f), _wgslsmith_f_op_f32(step(697f, -844f))) + -995f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1045f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1690f, 236f)) * _wgslsmith_div_f32(-1259f, -156f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(546f, -950f), vec2<f32>(-317f, -870f))))))));
    var_0 = vec2<f32>(129f, 1000f);
    let var_1 = _wgslsmith_f_op_f32(781f + _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = -1000f;
    let var_3 = Struct_2(Struct_1(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(13223i, u_input.a.x, -9575i), vec3<i32>(u_input.a.x, arg_0.x, -2147483647i)), _wgslsmith_mod_i32(-16024i, 2147483647i)), -1538f), u_input.a.x & _wgslsmith_mult_i32(u_input.a.x, arg_0.x));
    return -1199f;
}

fn func_2() -> i32 {
    let var_0 = -2648f;
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_4(vec3<i32>(0i, firstTrailingBit(u_input.a.x >> (39828u % 32u)), ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 44701i)), func_3(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(22225u, 1u, u_input.b, u_input.b))), true)), select(_wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(2999f, 1075f, true))), any(vec2<bool>(all(vec3<bool>(true, false, true)), true)), u_input.b < (~u_input.b | 1u))));
    var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 65144u), 4294967295u) ^ select(u_input.b, firstTrailingBit(u_input.b), var_2 > 1085f);
    var_1 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, 4179u, u_input.b)), vec3<u32>(27951u, u_input.b, 1u >> (1u % 32u))));
    return -_wgslsmith_mult_i32(u_input.a.x, -1i) | ~_wgslsmith_div_i32(u_input.a.x | max(u_input.a.x, u_input.a.x), 12578i);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) & 14979i, _wgslsmith_add_i32(-2147483647i, func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1655f, 1006f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<bool>(arg_0.x, arg_0.x), arg_1.x)), _wgslsmith_f_op_f32(trunc(-397f))))), -(_wgslsmith_sub_i32(abs(-2147483647i), u_input.a.x >> (4294967295u % 32u)) >> (0u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-1224f * _wgslsmith_f_op_f32(-var_0.a.b));
    var var_2 = select(vec4<bool>(true, arg_1.x, true, true), !select(select(vec4<bool>(arg_0.x, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, true, false, true)), u_input.b < u_input.b), vec4<bool>(true, any(vec3<bool>(arg_0.x, false, false)), arg_1.x & true, u_input.a.x == 40914i), select(!vec4<bool>(arg_0.x, true, true, true), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, arg_1.x, arg_1.x, false)), arg_0.x)), !(!(!(!vec4<bool>(true, false, arg_1.x, true)))));
    var var_3 = Struct_2(Struct_1(-u_input.a.x, 689f), var_0.a.a);
    var_2 = vec4<bool>(arg_0.x, any(arg_1) | var_2.x, !arg_0.x, u_input.b <= u_input.b);
    return !select(select(select(!vec4<bool>(arg_1.x, false, var_2.x, false), select(vec4<bool>(false, true, arg_1.x, arg_0.x), vec4<bool>(false, true, var_2.x, arg_0.x), arg_1.x), all(var_2.xz)), select(vec4<bool>(var_2.x, true, arg_1.x, true), !vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, var_2.x, true, var_2.x)), !select(vec4<bool>(true, false, arg_0.x, arg_1.x), vec4<bool>(true, var_2.x, arg_0.x, arg_0.x), true)), vec4<bool>(select(any(var_2.xw), true, func_3(vec4<u32>(38408u, 1u, u_input.b, 1u)).x), true, true, all(var_2.xzw)), vec4<bool>(-320f > _wgslsmith_f_op_f32(ceil(var_0.a.b)), func_3(vec4<u32>(1u, 14028u, 1u, 57829u) & vec4<u32>(33551u, u_input.b, 61992u, u_input.b)).x, !(false && arg_0.x), !func_3(vec4<u32>(43612u, u_input.b, 0u, 1u)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(true, all(func_1(vec2<bool>(true, false), vec3<bool>(true, true, false)))));
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_vec3_u32(abs(vec3<u32>(51168u, reverseBits(u_input.b), abs(4294967295u ^ u_input.b))), ~(~vec3<u32>(~6678u, ~0u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-802f)) - -1000f)), -1395f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-763f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(671f, 787f)), true)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(328f, -763f)), vec2<f32>(-729f, -297f), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1545f, -890f), vec2<f32>(290f, 998f)))))) - vec2<f32>(1141f, 678f)), 2147483647i);
}

