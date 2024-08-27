struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_3(~vec4<i32>(-(u_input.a & -75003i), -2147483647i, countOneBits(max(u_input.d.x, u_input.a)), ~1i), _wgslsmith_div_vec4_f32(vec4<f32>(-1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) * -613f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.x - arg_2.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1291f, arg_2.x, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1948f, -977f, -874f, arg_2.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -139f, arg_2.x, -698f)))))), _wgslsmith_add_vec4_u32(vec4<u32>(55685u, _wgslsmith_clamp_u32(~0u, ~arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1), u_input.c.ww)), ~(0u & u_input.c.x), _wgslsmith_mod_u32(9367u, firstTrailingBit(u_input.c.x))), min(~countOneBits(u_input.c), u_input.c)), all(!(!select(vec2<bool>(arg_3, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_3)))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), 362f, _wgslsmith_f_op_f32(sign(-266f)), arg_2.x));
    var var_1 = ~(_wgslsmith_add_u32(33729u, 1u) >> (firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, 18634u, ~1u)) % 32u));
    var_1 = _wgslsmith_clamp_u32(1u, ~2987u, arg_1);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.e.zxx + var_0.b.xzx))))), firstLeadingBit(max(vec2<i32>(u_input.d.x, var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x))) | vec2<i32>(countOneBits(u_input.b), 21884i), var_0.a.wwx), vec4<bool>(~max(var_0.a.x, u_input.d.x) >= countOneBits(-26095i), !arg_3, arg_3 == (var_0.a.x > -20571i), select(false, arg_3 && (false && var_0.d), any(select(vec2<bool>(arg_3, true), vec2<bool>(arg_0, arg_0), true)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e.wzy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + var_0.b.yyz)) - vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x)))), ~(~vec2<i32>(var_0.a.x, 53814i)), ~firstLeadingBit(-vec3<i32>(-36110i, var_0.a.x, var_0.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.yyz + var_0.e.yzy)) * var_0.e.wzy), _wgslsmith_mod_vec2_i32(var_0.a.yz, u_input.d), var_0.a.wwx));
    var_0 = Struct_3(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e * vec4<f32>(var_2.a.a.x, _wgslsmith_f_op_f32(-var_2.c.a.x), var_2.c.a.x, -1041f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_0.b, _wgslsmith_div_vec4_f32(var_0.b, var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(step(943f, arg_2.x)), _wgslsmith_f_op_f32(select(var_2.c.a.x, var_0.b.x, arg_3)), _wgslsmith_f_op_f32(886f + arg_2.x), _wgslsmith_f_op_f32(var_2.d.a.x + 936f))))), u_input.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)) >> (abs(var_0.c.yz) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x))) >= ~(~firstLeadingBit(var_0.c.x)), var_0.e);
    return -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a, -countOneBits(vec4<i32>(0i, var_2.d.b.x, var_0.a.x, var_0.a.x))), vec4<i32>(select(countOneBits(44001i), _wgslsmith_add_i32(u_input.a, u_input.a), true), -2147483647i, 9494i, (1i >> (1u % 32u)) | ~u_input.b));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> vec3<f32> {
    let var_0 = arg_0.c.x;
    var var_1 = vec2<i32>(-1i, arg_0.a.x);
    var_1 = vec2<i32>(-1i) * -vec2<i32>(max(var_1.x, _wgslsmith_div_i32(-59245i, u_input.a)), 0i);
    var_1 = select(~u_input.d, -u_input.d, vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.e.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(306f, -1000f)))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(400f + -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, arg_0.e.x) * _wgslsmith_f_op_f32(-1489f + arg_0.e.x))))) + arg_0.e.ywy);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec3<f32> {
    let var_0 = u_input.d.x;
    var var_1 = Struct_1(arg_0.xzz, select(~(~vec2<i32>(-1i, var_0)) | ~(~u_input.d), vec2<i32>(-abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.a))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), vec3<i32>(~_wgslsmith_mod_i32(-u_input.d.x, _wgslsmith_div_i32(u_input.d.x, var_0)), var_0, var_0 << (firstTrailingBit(~14681u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1753f, 140f, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))));
    var var_3 = min(vec2<i32>(-2147483647i, -1i), var_1.b);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 0i, -2147483647i, -1i), func_3(false, 0u, vec2<f32>(var_2.x, var_2.x), true), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, var_0, var_3.x, -43323i), vec4<i32>(2147483647i, var_0, var_0, -1i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_2.x, var_2.x, -1062f) + arg_0))), select(u_input.c, u_input.c, vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1086f, -669f, 749f) * arg_0))), ~(~vec3<i32>(0i, u_input.d.x, -1i)), -2147483647i)), _wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, ~var_3.x), _wgslsmith_sub_vec2_i32(var_1.b, var_1.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_3.x & u_input.d.x, -min(u_input.a, -56161i)), var_1.c));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(sign(arg_0.x)), -635f) * arg_0.yww);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_3.d.a.zy))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_3.a.a.yy))));
    let var_1 = arg_3.b.x & true;
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 569f, arg_3.a.a.x, 231f))))))), ~arg_2))));
    let var_4 = -vec4<i32>(arg_0, abs(u_input.a), _wgslsmith_mult_i32(u_input.d.x, u_input.a) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a, 1i, arg_0), vec4<i32>(0i, -43867i, arg_3.d.b.x, arg_3.a.c.x)), vec4<i32>(arg_0, arg_0, 1i, 0i)), -(arg_0 >> (~u_input.c.x % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 + -442f)))) - 438f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-616f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1i, vec2<u32>(u_input.c.x, u_input.c.x), 1u, Struct_2(Struct_1(vec3<f32>(-725f, 139f, -1000f), u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.b)), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(597f, 1084f, 989f), u_input.d, vec3<i32>(19092i, 2147483647i, u_input.d.x)), Struct_1(vec3<f32>(106f, 2570f, -1543f), vec2<i32>(u_input.d.x, 2672i), vec3<i32>(2147483647i, u_input.d.x, u_input.b))))) - _wgslsmith_f_op_f32(max(1805f, -327f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(689f - -345f), _wgslsmith_f_op_f32(max(1362f, 533f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, 1000f)))));
    let var_1 = vec4<u32>(0u, ~(~abs(u_input.c.x)), ~u_input.c.x & 0u, abs(_wgslsmith_mod_u32(reverseBits(37829u), ~u_input.c.x)) >> (4294967295u % 32u));
    var var_2 = 1360f;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -887f, var_0.x)))))), (-u_input.d & -vec2<i32>(5414i, 1i)) | vec2<i32>(firstLeadingBit(u_input.d.x), -459i ^ u_input.a), vec3<i32>(reverseBits(abs(2147483647i)), _wgslsmith_mod_i32(~u_input.a, u_input.a | 2147483647i), countOneBits(u_input.a << (u_input.c.x % 32u)))), vec4<bool>(_wgslsmith_add_u32(1u, 9151u) <= (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.c.x), u_input.c.xy) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, 1u, var_1.x))), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))) && true, select(true && any(vec2<bool>(false, true)), true, false)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1981f, var_0.x, 1758f))))), -u_input.d | -vec2<i32>(1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.d.x, 2147483647i, _wgslsmith_mult_i32(-26971i, u_input.d.x)), -vec3<i32>(40818i, u_input.a, u_input.a) & ~vec3<i32>(-1i, 1i, -27010i))), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(671f, _wgslsmith_f_op_f32(var_0.x + 1501f), -938f), _wgslsmith_f_op_vec3_f32(vec3<f32>(201f, var_0.x, var_0.x) - vec3<f32>(-199f, var_0.x, var_0.x)))), -max(u_input.d, firstLeadingBit(u_input.d)), vec3<i32>(15241i, _wgslsmith_dot_vec4_i32(vec4<i32>(786i, u_input.a, u_input.b, -8563i), vec4<i32>(u_input.d.x, 2147483647i, u_input.b, u_input.b)), ~15579i) | vec3<i32>(_wgslsmith_add_i32(-32163i, u_input.d.x), u_input.d.x, ~(-7926i))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(var_3.c.a, _wgslsmith_f_op_vec3_f32(-var_3.c.a)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_3.c.a, var_3.c.a)))), firstLeadingBit(u_input.d) | -_wgslsmith_mod_vec2_i32(func_3(true, var_1.x, var_3.c.a.yz, true).wy, vec2<i32>(0i, -1i)), reverseBits(vec3<i32>(0i, -18753i, 0i)));
    var_4 = var_3.c;
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1988f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(vec4<i32>(var_4.b.x, var_3.c.c.x, var_3.c.c.x, u_input.b), vec4<f32>(var_0.x, var_3.a.a.x, -1180f, var_4.a.x), u_input.c, true, vec4<f32>(-1115f, 1235f, var_3.d.a.x, 1000f)), var_3.a.c, -1i)).x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_0.x))))), ~vec4<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_4.c, var_4.c), var_4.c), firstTrailingBit(-33932i), _wgslsmith_mod_i32(~(-2147483647i), -2147483647i)), 4294967295u, var_1);
}

