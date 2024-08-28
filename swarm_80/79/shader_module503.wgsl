struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = (11222i & _wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(-347i, 2147483647i)), firstTrailingBit(_wgslsmith_mod_i32(-5898i, 1i)))) == 2147483647i;
    let var_2 = ~_wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yx), u_input.a.x) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, min(1u, u_input.a.x), max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(22570u, 1u, u_input.a.x))), ~(~u_input.a)) & _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51397u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 46381u), u_input.a) ^ ~1u, ~(~4294967295u)));
    var var_3 = Struct_5(_wgslsmith_add_i32(-8934i, -27098i), vec2<i32>(~1i, _wgslsmith_div_i32(~firstTrailingBit(-27828i), 1i)), -1i, -12640i);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1212f, -1142f, 1988f) * vec3<f32>(-755f, 199f, 1166f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(step(-395f, 2031f)), _wgslsmith_f_op_f32(-1660f * 432f))) * vec3<f32>(-653f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-916f, 259f)), 445f), _wgslsmith_f_op_f32(select(1476f, _wgslsmith_f_op_f32(-135f * -1149f), var_3.d == -56123i)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1717f)), -275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1555f)) - _wgslsmith_f_op_f32(ceil(3115f))) + _wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(f32(-1f) * -711f), true)))), !select(vec3<bool>(var_0.x, any(vec4<bool>(var_1, var_0.x, true, false)), arg_0 | var_0.x), var_0, var_0.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(var_4.x - -530f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.x)) - _wgslsmith_f_op_f32(var_4.x - -201f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(ceil(-2767f))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(f32(-1f) * -322f)))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-876f * var_0.x))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x * 784f), true)) + _wgslsmith_f_op_f32(f32(-1f) * -995f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1862f)) + 1f), _wgslsmith_f_op_f32(sign(-617f)), _wgslsmith_f_op_f32(select(-147f, _wgslsmith_f_op_f32(var_0.x - 757f), true))))));
    var var_1 = firstTrailingBit(0u);
    var_1 = max(~1u, ~4294967295u);
    var var_2 = select(!vec3<bool>(!any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(sign(var_0.x)) > var_0.x, u_input.a.x == 4294967295u), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), false);
    return !any(!vec3<bool>(var_2.x, var_2.x, !var_2.x));
}

fn func_1() -> bool {
    let var_0 = !func_2() && any(select(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), true));
    let var_1 = _wgslsmith_f_op_f32(-1039f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1000f, var_0)) + _wgslsmith_div_f32(874f, 718f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-373f + -1000f), _wgslsmith_f_op_f32(select(2120f, 1519f, var_0)), var_0))))));
    return select(1u > u_input.a.x, var_0, _wgslsmith_clamp_u32(~abs(u_input.a.x), reverseBits(1u), _wgslsmith_add_u32(_wgslsmith_add_u32(114351u, u_input.a.x), 1u)) <= 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24247i;
    let var_1 = Struct_1(2147483647i);
    var var_2 = !vec3<bool>(true, !func_1(), func_2());
    var var_3 = Struct_1(-1470i);
    var var_4 = Struct_4(1000f, Struct_3(select(5486u, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(u_input.a.x, 0u)), true), -43622i, ~(~vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x))), true, var_1, Struct_3(select(u_input.a.x, ~4294967295u, true) & countOneBits(countOneBits(u_input.a.x)), select(var_1.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.a, -29923i, -53417i, -50120i), vec4<i32>(35709i, var_1.a, var_3.a, 0i)), vec4<i32>(var_1.a, -2147483647i, var_0, 2147483647i)), var_2.x), ~(~max(u_input.a, vec4<u32>(22359u, 0u, 30825u, 1u)))));
    let var_5 = var_1;
    let var_6 = vec2<u32>(~(~0u), reverseBits(~u_input.a.x | u_input.a.x) >> (max(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(19117u, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<u32>(0u, u_input.a.x, 0u)))) % 32u));
    var var_7 = var_4.b.c;
    let var_8 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(0u, abs(_wgslsmith_add_u32(var_7.x, 1u)) ^ _wgslsmith_clamp_u32(abs(0u), var_7.x, _wgslsmith_div_u32(var_7.x, 9402u))), ~vec2<u32>(~(1u >> (1u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(26010u, var_7.x), vec2<u32>(u_input.a.x, var_7.x))), -6196i, -3741i, 0u);
}

