struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    let var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(~countOneBits(0i), arg_2.x, -6966i, 2147483647i), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~u_input.e, u_input.e), vec4<i32>(reverseBits(arg_2.x), u_input.e.x, reverseBits(1i), 2147483647i)));
    var var_1 = Struct_3(countOneBits(arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-313f, -413f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), -118f, -2132f)), _wgslsmith_f_op_f32(ceil(arg_0.x)), ~(-28110i), vec2<bool>(true, true));
    var_1 = Struct_3(-2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -506f, 1000f, 1000f)) + vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(select(arg_0.x, -534f, false)), arg_0.x, _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -236f, -936f, arg_1.x)))))), arg_2.x > ~(var_1.d << (0u % 32u)))), arg_0.x, max(_wgslsmith_sub_i32(firstTrailingBit(var_0.x), -8999i), -_wgslsmith_div_i32(firstTrailingBit(85026i), _wgslsmith_dot_vec4_i32(var_0, var_0))), var_1.e);
    var_1 = Struct_3(-(~arg_2.x), vec4<f32>(-833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-var_1.b.x), 148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_1.x, true))) - _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(sign(arg_1.x)))))), ~var_0.x, select(vec2<bool>(any(select(vec3<bool>(var_1.e.x, false, var_1.e.x), vec3<bool>(true, var_1.e.x, false), vec3<bool>(var_1.e.x, false, true))), (false || var_1.e.x) && var_1.e.x), select(!select(vec2<bool>(var_1.e.x, true), var_1.e, var_1.e.x), select(select(var_1.e, vec2<bool>(false, var_1.e.x), var_1.e), vec2<bool>(true, false), true), false), var_1.e));
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.b, u_input.d.xy);
    return -1156f;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = Struct_3(u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(step(704f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, vec2<f32>(-913f, 396f), vec2<i32>(u_input.e.x, u_input.c), 42228u)) * -740f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-215f - arg_0.x) + -367f), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(627f, -1472f, 500f, 103f) - vec4<f32>(arg_1, -1527f, arg_1, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 2174f, 880f) * vec4<f32>(605f, arg_1, 626f, -390f)))))), _wgslsmith_f_op_f32(f32(-1f) * -270f), u_input.c, vec2<bool>(false, select(-1i >= _wgslsmith_add_i32(u_input.c, u_input.c), false, !select(true, true, true))));
    var_0 = Struct_3(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)) + _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b))) + _wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.x), any(vec3<bool>(var_0.e.x, var_0.e.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1832f)), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(23406i, 26196i, var_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(19816i, var_0.d, 1117i), u_input.e.xzx), firstTrailingBit(vec3<i32>(-33098i, var_0.a, var_0.a))), vec3<i32>(29299i, 1143i, var_0.d & var_0.a)), var_0.e);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b), 592f, var_0.e.x, _wgslsmith_sub_vec4_i32(~(~u_input.e ^ u_input.e), -vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.c, u_input.e.x), _wgslsmith_div_i32(1i, u_input.e.x), -13101i, 12574i)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, arg_0.x, var_0.b.x, 106f))), _wgslsmith_div_f32(638f, arg_0.x), 6413u > (4294967295u ^ _wgslsmith_clamp_u32(82583u, 1u, 4294967295u)), -var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(347f, _wgslsmith_f_op_f32(-var_0.b.x)))), u_input.b.x << (26523u % 32u), max(firstLeadingBit(0u) >> (~u_input.d.x % 32u), _wgslsmith_div_u32(~u_input.d.x, u_input.d.x)) & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.b.x) | vec4<u32>(1u, 62006u, u_input.b.x, 0u), ~vec4<u32>(u_input.d.x, u_input.b.x, 21468u, u_input.d.x)) ^ _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), u_input.d), u_input.d)), var_1.a.wz);
    var var_3 = ~0u;
    return var_1.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_2(arg_0, arg_1.b.x, u_input.d.x, 19536u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1320f, arg_1.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c)))), !(!(!arg_1.e)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(arg_0.a.x - 321f), -267f, -418f)) - vec4<f32>(-1000f, 992f, arg_0.a.x, 1590f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_0.b, var_0.e.x, -582f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_0.a.b, arg_0.b, var_0.a.b))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, 967f, -484f, 2319f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(986f, 511f, -275f, 153f), vec4<f32>(1000f, -3182f, 741f, 1006f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 302f, 1682f, -1206f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1565f)), true, vec4<i32>(u_input.e.x, 3938i, u_input.e.x >> (u_input.b.x % 32u), u_input.a)), Struct_3(79016i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 238f, -1000f, 142f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, -740f, -1299f)), -567f)), 65633i, select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec3<i32>(-u_input.c, ~u_input.e.x, min(1i, -u_input.e.x))))));
    var var_1 = !all(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, false));
    var_1 = false;
    var_1 = all(vec2<bool>(false, true));
    let var_2 = var_0.xz;
    return _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1607f, 299f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, var_0.x)), u_input.e.ww, abs(u_input.d.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x - var_0.x)))), 1000f, -698f), var_0.wx, vec2<i32>(~firstLeadingBit(_wgslsmith_mod_i32(-10812i, -18721i)), i32(-1i) * -29464i), ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>((~u_input.d.x << (u_input.d.x % 32u)) > _wgslsmith_mod_u32(20449u ^ u_input.b.x, _wgslsmith_mod_u32(4294967295u, u_input.d.x)), false & all(vec2<bool>(true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~0u, min(max(u_input.d.x, u_input.b.x) ^ 1u, u_input.b.x)), u_input.e.x, ~vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.e.x), -u_input.a) & u_input.e.zw, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f * _wgslsmith_f_op_f32(160f + -181f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-188f, 2764f)))), _wgslsmith_f_op_f32(func_1()), true)));
}

