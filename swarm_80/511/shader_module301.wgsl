struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, 102f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c.x + arg_2.d), arg_0, true)), -624f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, arg_0, arg_3.d, arg_3.c.x) - arg_3.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, arg_2.c.x, 1614f, -1000f))))));
    var var_1 = arg_2.b.x;
    var_1 = min(min(firstLeadingBit(27030u), countOneBits(_wgslsmith_mod_u32(firstTrailingBit(arg_1), ~45067u))), select(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~72348u, arg_3.b.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(43495u, arg_1), select(1u, 4294967295u, true)), _wgslsmith_dot_vec2_u32(u_input.a.yz << (vec2<u32>(u_input.b, 12571u) % vec2<u32>(32u)), arg_3.b.yx & arg_2.b.yx)), any(vec2<bool>(true, true)) & false));
    var_1 = _wgslsmith_mod_u32(arg_2.b.x, 2829u);
    var var_2 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, 4294967295u, 0u, u_input.b) & vec4<u32>(arg_3.b.x, 0u, arg_3.b.x, 20224u)), ~(~vec4<u32>(arg_1, arg_3.b.x, 0u, 1u))), min(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u) << (u_input.a % vec4<u32>(32u)), vec4<u32>(880u, u_input.b, u_input.b, u_input.b)) ^ _wgslsmith_sub_vec4_u32(u_input.a, u_input.a >> (u_input.a % vec4<u32>(32u))));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.x, min(-1i, arg_3.a.x), 2147483647i, -11193i), (vec4<i32>(-2147483647i, arg_2.a.x, arg_2.a.x, arg_2.a.x) & vec4<i32>(arg_2.a.x, -1379i, 0i, -29207i)) ^ (vec4<i32>(24013i, -1i, arg_2.a.x, arg_3.a.x) << (vec4<u32>(u_input.a.x, arg_1, 1u, 67678u) % vec4<u32>(32u))), select(~vec4<i32>(arg_2.a.x, -8714i, arg_3.a.x, arg_3.a.x), vec4<i32>(-10693i, arg_2.a.x, 3207i, arg_3.a.x), any(vec3<bool>(false, false, true)))), vec4<i32>(1i, -1i, ~arg_2.a.x, _wgslsmith_div_i32(firstLeadingBit(arg_2.a.x), abs(-29790i)))), -1i);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_i32((_wgslsmith_mod_i32(func_3(arg_0, 0u, Struct_1(vec2<i32>(29618i, 1i), vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec4<f32>(arg_0, arg_0, -103f, arg_0), -152f), Struct_1(vec2<i32>(44182i, -4201i), vec3<u32>(0u, u_input.a.x, 106884u), vec4<f32>(arg_0, arg_0, arg_0, arg_0), 1912f)), ~14096i) ^ (i32(-1i) * -8057i)) & _wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(arg_0 + arg_0), 11876u, Struct_1(vec2<i32>(-2147483647i, 2877i), u_input.a.yxy, vec4<f32>(2274f, arg_0, arg_0, -1309f), 1231f), Struct_1(vec2<i32>(16245i, -21316i), vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<f32>(-578f, -257f, -1460f, -1000f), 788f)), firstLeadingBit(min(-20150i, 9879i))), -_wgslsmith_div_i32(~func_3(1298f, u_input.a.x, Struct_1(vec2<i32>(-72631i, 17231i), u_input.a.yyx, vec4<f32>(-200f, -1044f, arg_0, 1890f), 139f), Struct_1(vec2<i32>(-43407i, 1i), vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec4<f32>(732f, 297f, 705f, arg_0), -302f)), 10468i));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec2_i32(-select(vec2<i32>(18296i, var_0), vec2<i32>(-38832i, var_0), true), vec2<i32>(var_0, -var_0), vec2<i32>(_wgslsmith_add_i32(var_0, var_0), _wgslsmith_mult_i32(var_0, var_0))), reverseBits(vec3<u32>(firstTrailingBit(u_input.b) ^ 72913u, 1u, 21989u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(310f)), _wgslsmith_f_op_f32(-714f - arg_0), _wgslsmith_f_op_f32(-arg_0)))), vec4<f32>(-591f, -1492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f * 413f) + 617f))));
    var var_2 = 1000f;
    let var_3 = _wgslsmith_clamp_i32(select(var_1.a.x, -2147483647i, true), -_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-33595i, -1i, var_1.a.x)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, var_1.a.x, var_0), vec3<i32>(var_0, 7851i, -47701i), vec3<bool>(true, false, false)), vec3<i32>(-2147483647i, var_1.a.x, -1i))), -69372i);
    var var_4 = abs(-abs(vec3<i32>(~16543i, -1i, var_3)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.c.zz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, -1493f)), _wgslsmith_f_op_vec2_f32(-var_1.c.xw))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.xz)), _wgslsmith_f_op_vec2_f32(arg_1.c.xz + arg_1.c.wy)) - vec2<f32>(arg_0.c.x, -106f))), all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)))));
    var var_1 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a << (u_input.a % vec4<u32>(32u)));
    var var_2 = _wgslsmith_div_f32(arg_1.d, arg_1.d);
    let var_3 = Struct_1(arg_0.a, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, 1889u >> (1u % 32u), u_input.b), vec3<u32>(firstTrailingBit(u_input.b), 4294967295u, ~27398u)), vec3<u32>(~arg_1.b.x, 27023u, ~4294967295u) >> (min(u_input.a.xyz | arg_1.b, ~arg_1.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2051f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -717f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.d, -1709f)))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2445f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1589f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - arg_1.c.x), var_0.x))));
    return _wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(firstLeadingBit(arg_1.a.x), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.a.x, arg_1.a.x, 1i, -2147483647i)), vec4<i32>(-29940i, 36986i, arg_1.a.x, -37644i))), abs(select(min(vec3<u32>(u_input.b, 0u, 41491u), reverseBits(vec3<u32>(arg_0, 4294967295u, 0u))), arg_1.b, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(trunc(-1000f)), arg_1.d, arg_1.d)))), arg_1.c.x);
    var_0 = Struct_1(-arg_1.a, select(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, 97253u, 1u), var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), arg_1.b)) >> (~vec3<u32>(var_0.b.x, 4294967295u, 1u) % vec3<u32>(32u)), u_input.a.yzw, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)))), vec4<f32>(-1089f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_1, arg_1, vec3<u32>(90530u, arg_0, arg_1.b.x) << (var_0.b % vec3<u32>(32u)))) - _wgslsmith_f_op_f32(-1349f - _wgslsmith_f_op_f32(var_0.d * arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_0.c.x)), 501f), _wgslsmith_f_op_f32(-arg_1.c.x));
    var_0 = arg_1;
    var var_1 = select(vec2<bool>(false, true | (u_input.a.x > arg_0)), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(all(vec2<bool>(false, true)), arg_1.c.x != var_0.d), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(true, false)), true)), vec2<bool>(false, any(vec4<bool>(true, true, true, false))), true));
    var var_2 = 853f;
    return Struct_1(vec2<i32>(arg_1.a.x, abs(~(-32849i >> (u_input.b % 32u)))), firstTrailingBit(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, 1u, 44226u)), ~u_input.a.wxw) << (~var_0.b % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) - var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec2<bool>(any(vec4<bool>(true, false, false, true)), true));
    var var_1 = func_4(u_input.b, Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, -48220i, -1165i)), vec4<i32>(1i, 1i, 1i, 1i)), abs(_wgslsmith_clamp_i32(0i, 34066i, 1842i))), vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.b)), 62515u, ~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) * 498f), _wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(-1i, 43015i), vec3<u32>(79220u, u_input.a.x, 35508u), vec4<f32>(-1391f, 1314f, 360f, 580f), -843f), Struct_1(vec2<i32>(1985i, -17918i), u_input.a.yyz, vec4<f32>(660f, -910f, 234f, 341f), -1419f), vec3<u32>(u_input.b, u_input.b, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f + -336f))), -1000f));
    var var_2 = Struct_1(-_wgslsmith_mult_vec2_i32(var_1.a, var_1.a), vec3<u32>(~(~_wgslsmith_clamp_u32(74081u, var_1.b.x, 0u)), ~u_input.a.x, ~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1541f)) + _wgslsmith_div_f32(-525f, var_1.c.x))), -277f, -343f, 301f), -1041f);
    var_2 = func_4(1u, func_4(firstTrailingBit(u_input.b), func_4(u_input.a.x, func_4(reverseBits(var_2.b.x), Struct_1(vec2<i32>(0i, 36302i), vec3<u32>(106631u, 4294967295u, 4294967295u), var_1.c, -320f)))));
    var_1 = func_4(~(~_wgslsmith_add_u32(countOneBits(u_input.b), ~var_2.b.x)), func_4(~select(~var_2.b.x, var_1.b.x >> (4294967295u % 32u), var_0), func_4(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_2.b.x, 1u), func_4(36742u, Struct_1(vec2<i32>(-1i, -6102i), vec3<u32>(1u, 0u, u_input.b), var_2.c, -1000f)).b.x), Struct_1(var_2.a, _wgslsmith_div_vec3_u32(vec3<u32>(584u, 69831u, 24895u), var_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.c.x, 248f, var_2.c.x)), var_2.c.x))));
    let var_3 = Struct_1(~var_2.a, ~_wgslsmith_mod_vec3_u32(min(var_2.b, ~var_2.b), var_2.b), _wgslsmith_f_op_vec4_f32(var_2.c - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.c * var_2.c)))), _wgslsmith_f_op_f32(trunc(-719f)));
    let var_4 = _wgslsmith_f_op_f32(floor(var_2.c.x));
    var var_5 = func_4(~(_wgslsmith_mod_u32(0u, var_2.b.x) >> (48355u % 32u)) & var_1.b.x, Struct_1(var_2.a, vec3<u32>(0u, ~_wgslsmith_mod_u32(var_2.b.x, 1u), _wgslsmith_mod_u32(var_2.b.x | 23228u, u_input.a.x & u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2011f, 462f, var_1.c.x, -295f) * vec4<f32>(-219f, 575f, 755f, var_1.c.x)))) + var_2.c), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(28372u, firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 0u))) ^ _wgslsmith_add_vec2_u32(~var_3.b.yz, vec2<u32>(var_5.b.x, min(u_input.b, var_3.b.x))), countOneBits(0i ^ ((var_1.a.x << (4294967295u % 32u)) << (1u % 32u))), 2147483647i, min(vec3<i32>(abs(var_3.a.x), -var_2.a.x, 2147483647i), vec3<i32>(reverseBits(49762i), -var_2.a.x, var_1.a.x)) ^ ~(-abs(vec3<i32>(62313i, var_1.a.x, var_1.a.x))), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(var_2.a.x, firstLeadingBit(-2147483647i))), -vec2<i32>(var_2.a.x, ~var_5.a.x)));
}

