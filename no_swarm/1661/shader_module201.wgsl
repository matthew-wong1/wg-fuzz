struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = 147f;
    let var_1 = Struct_2(arg_1, arg_1, arg_1, _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_mod_i32(u_input.c, -29309i), _wgslsmith_clamp_i32(-14404i, -29903i, u_input.c))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.d), reverseBits(vec2<i32>(-31792i, u_input.d))) | (vec2<i32>(-13835i, -1i) >> (~vec2<u32>(94816u, arg_2) % vec2<u32>(32u)))));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(~0u, 11817u, select(_wgslsmith_mod_u32(0u, 2585u), firstLeadingBit(17992u), true) & 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), -1000f)) - arg_1.a.wz), ~countOneBits(~(arg_2 & u_input.b)));
    var_2 = Struct_3(43159u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.x, 1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(-var_1.b.a.xy)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1587f)), -648f))), u_input.b);
    let var_3 = var_1.b;
    return max(~abs(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(0u, var_2.c))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_2, 0u), vec3<u32>(4294967295u, 1u, arg_2))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = -(2147483647i | u_input.c);
    var var_1 = vec2<i32>(u_input.c, -(((u_input.c << (arg_0.x % 32u)) | _wgslsmith_div_i32(u_input.d, var_0)) & 1i));
    let var_2 = ~vec2<i32>(0i << (~func_3(vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(550f, -626f, -907f, -649f), vec2<bool>(true, true), false, true), 1u, true) % 32u), _wgslsmith_div_i32(~2147483647i, -2147483647i));
    var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-var_0), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -35241i), select(var_2, vec2<i32>(var_0, 0i), false)), ~(~4129i), ~_wgslsmith_mult_i32(-1i, u_input.d)), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(0i), var_2.x >> (arg_0.x % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-17574i, 0i, u_input.d), vec3<i32>(var_2.x, var_2.x, u_input.d)), countOneBits(var_1.x) & ~u_input.d, -var_1.x & countOneBits(12220i))), firstTrailingBit(_wgslsmith_clamp_i32(-31184i, 31784i << (u_input.b % 32u), var_2.x) >> (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(arg_0.x, u_input.a), _wgslsmith_div_u32(arg_0.x, u_input.b)) % 32u)));
    var_1 = var_2;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~arg_0.x), vec2<u32>(55623u, _wgslsmith_clamp_u32(arg_0.x, 33134u ^ func_3(vec4<bool>(true, true, false, false), Struct_1(vec4<f32>(-1732f, -459f, -1067f, 1109f), vec2<bool>(false, false), true, false), arg_0.x, false), firstLeadingBit(arg_0.x))));
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.a;
    var var_1 = Struct_3(~(select(func_2(vec4<u32>(4294967295u, u_input.a, 1u, u_input.b)), reverseBits(4294967295u), true) & firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, _wgslsmith_f_op_f32(f32(-1f) * -228f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) + _wgslsmith_f_op_f32(min(181f, -1009f))), _wgslsmith_f_op_f32(select(-651f, 848f, false)))), ~6101u);
    let var_2 = min(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.c, 4294967295u, var_1.a, 19195u)), abs(vec4<u32>(3260u, 62863u, u_input.a, 56638u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, var_1.c, 4294967295u, 1364u), vec4<u32>(58264u, u_input.b, 1u, var_1.a)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a ^ 4294967295u, select(u_input.a, 7506u, true), ~var_1.c, 1u) | ~min(vec4<u32>(var_1.c, 23423u, 73736u, var_1.a), vec4<u32>(4294967295u, 31400u, 55694u, var_1.c)), firstTrailingBit(vec4<u32>(u_input.b, u_input.a, 17601u | u_input.b, abs(0u)))));
    var var_3 = firstLeadingBit(firstTrailingBit(vec4<i32>(1i, u_input.c, ~u_input.c, firstTrailingBit(u_input.c))));
    return vec2<bool>(false, all(vec2<bool>(true, all(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = select(vec2<bool>(false, !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), func_1(), select(vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), func_1(), false));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-132f, 1000f, 2933f, -1058f) - vec4<f32>(140f, 322f, 184f, 383f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-340f, 359f, -1545f, 111f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1428f, 376f, -112f, -1035f), vec4<f32>(421f, 224f, 716f, 471f), vec4<bool>(true, true, var_1.x, var_1.x)))))), vec2<bool>(true, !var_1.x), false, var_1.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f * -253f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-139f, 1872f)), -554f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1679f - 344f))), 263f), vec2<bool>(func_1().x, true), any(!(!vec3<bool>(false, false, var_1.x))), true & !any(vec4<bool>(true, var_1.x, true, var_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1613f, -502f, -1463f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-464f, 1776f, 1000f, 1510f))))), vec2<bool>(true, true), false, all(vec2<bool>(select(var_1.x, true, var_1.x), var_1.x | var_1.x))), firstTrailingBit(min(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -28902i), vec2<i32>(u_input.c, var_0)), max(1i, 0i)), ~(vec2<i32>(0i, u_input.d) ^ vec2<i32>(-30202i, u_input.c)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_2.b.a.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-399f, -785f), vec2<f32>(var_2.c.a.x, var_2.c.a.x), false)) * _wgslsmith_f_op_vec2_f32(-var_2.b.a.zw)), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_2.c.a.wz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.a.x, var_2.c.a.x) - var_2.b.a.wx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, -370f) + var_2.a.a.wy))))))));
    var_2 = Struct_2(var_2.b, var_2.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.b.a.x)), _wgslsmith_f_op_f32(-var_2.c.a.x))), var_2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(508f)) + _wgslsmith_div_f32(var_3.x, var_2.c.a.x)), var_2.b.a.x), var_2.a.b, false, true), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(71263u, 6689u, u_input.a), vec3<u32>(89095u, u_input.b, u_input.b)), vec3<u32>(11288u, u_input.a, 4294967295u) | vec3<u32>(84080u, u_input.b, 1u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 64457u, 0u), vec3<u32>(263u, 39666u, 12502u)), ~(vec3<u32>(9491u, 32916u, 67867u) << (firstLeadingBit(vec3<u32>(u_input.b, u_input.a, 20923u)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.a.x))))), countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.b.a.xz), vec2<f32>(var_2.a.a.x, 103f))));
}

