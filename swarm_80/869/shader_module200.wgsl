struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = vec4<bool>(true, !(!all(vec3<bool>(true, true, false))), select(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), select(true, true, any(vec2<bool>(true, true))), (u_input.a.x > (7012u << (u_input.a.x % 32u))) | !(u_input.b.x == -1i)), all(vec4<bool>(true, true, true, true)) & !(arg_0.x < u_input.b.x));
    let var_1 = vec4<bool>(false, u_input.b.x > _wgslsmith_dot_vec2_i32(vec2<i32>(min(arg_0.x, 0i), select(u_input.b.x, u_input.b.x, var_0.x)), -vec2<i32>(u_input.b.x, 4952i)), var_0.x, !(any(var_0) | (firstTrailingBit(arg_0.x) == (u_input.b.x << (11477u % 32u)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1146f - _wgslsmith_f_op_f32(max(-1018f, -2189f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -122f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_3 = var_0;
    var var_4 = (-37411i | _wgslsmith_div_i32(u_input.b.x, arg_0.x)) ^ -1i;
    return var_0.xw;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(483f, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-760f + arg_0)))), any(!func_3(u_input.c)))));
    var_0 = _wgslsmith_f_op_f32(-463f - arg_0);
    var var_1 = firstTrailingBit(-(~max(u_input.b.x, -23051i))) != 7930i;
    let var_2 = Struct_1(true);
    return _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) - arg_0) - -484f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.x))), arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(arg_0.x)))), arg_0.x), _wgslsmith_f_op_f32(exp2(arg_0.x))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zy, -vec2<i32>(u_input.c.x, 2147483647i)), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~4987i, _wgslsmith_clamp_i32(-2147483647i, 0i, 1i), -13735i), -u_input.c.xxz)) & vec3<i32>(_wgslsmith_mod_i32(-10339i, 7573i), -15123i, 1i);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(479f)), _wgslsmith_f_op_f32(-var_0.a.x)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 503f)), false))))));
    var_1 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, var_1.x, var_1.x), u_input.c) >> (~u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_1.x, var_1.x, 2828i, u_input.b.x)), vec4<i32>(u_input.b.x, 10464i, var_1.x, 25678i)), _wgslsmith_clamp_i32(-u_input.c.x, 2697i, _wgslsmith_mult_i32(-61316i, -7264i))) & u_input.c.xyx);
    var var_2 = ~0u;
    return Struct_2(vec3<i32>(_wgslsmith_mod_i32(-2147483647i & (u_input.b.x | -1i), 1i), _wgslsmith_dot_vec4_i32(~u_input.c, u_input.c), 1i), Struct_1(true), _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(u_input.b.x) << (_wgslsmith_clamp_u32(u_input.a.x, 15565u, u_input.a.x) % 32u), ~var_1.x), select(vec2<i32>(abs(var_1.x), -var_1.x), -u_input.b.yz, any(vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(abs(938f)), -1502f), u_input.a.x);
    var var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x << (_wgslsmith_clamp_u32(65531u, 150u, u_input.a.x) % 32u), u_input.a.x, ~0u), ~1u);
    var var_2 = Struct_4(vec3<f32>(1020f, _wgslsmith_f_op_f32(1229f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1823f - 1303f))), -165f));
    var var_3 = var_0.c;
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(-var_2.a.yz), 71586u);
    var var_4 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 1f), var_1.x << (max(38178u, ~(~var_1.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(659f, 1030f, var_2.a.x, var_2.a.x), vec4<f32>(931f, var_2.a.x, var_2.a.x, var_2.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(659f, 579f, var_2.a.x, var_2.a.x) + vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))))));
}

