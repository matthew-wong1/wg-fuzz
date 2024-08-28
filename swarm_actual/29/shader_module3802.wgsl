struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), 0i, ~16347i, ~(~min(u_input.d.x, u_input.a))), select(reverseBits(~firstLeadingBit(u_input.d)), _wgslsmith_mod_vec4_i32(max(u_input.d, vec4<i32>(u_input.a, 0i, 2147483647i, 1i)), _wgslsmith_div_vec4_i32(u_input.d, u_input.d)), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), !(select(true, all(vec2<bool>(false, false)), true) & any(vec2<bool>(true, true))));
    let var_1 = 480f;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, arg_0) << (vec2<u32>(u_input.e, 16227u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0, 4294967295u), countOneBits(vec2<u32>(4294967295u, u_input.b)))), select(_wgslsmith_mult_vec4_i32(var_0.b, vec4<i32>(-2147483647i, var_0.b.x, -21122i, -5423i)), -countOneBits(vec4<i32>(u_input.c.x, 11172i, var_0.b.x, var_0.b.x)), var_0.c), Struct_1(vec4<i32>(-8552i, -41218i, var_0.b.x, ~var_0.a.x), min(var_0.b >> (vec4<u32>(77613u, arg_0, 39314u, 7716u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(var_0.b, u_input.d)), var_0.c)), var_0.c | true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(var_2, var_2))), _wgslsmith_f_op_f32(floor(var_2)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-231f - _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(f32(-1f) * -1970f))), var_2, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2230f - _wgslsmith_f_op_f32(exp2(var_2))) + var_3.c)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, var_3.c, 1839f, var_1))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 1410f, 1319f, var_1)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1013f, var_2, 1761f, -761f))))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-225f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_add_u32(u_input.e | 4294967295u, u_input.b) & u_input.e, _wgslsmith_sub_vec4_i32(vec4<i32>(max(arg_1, -16471i), 1i, _wgslsmith_div_i32(u_input.d.x, 15210i), _wgslsmith_mod_i32(arg_1, 5045i)), vec4<i32>(arg_1 & -2639i, -44128i, _wgslsmith_mod_i32(1i, u_input.c.x), arg_1)), Struct_1(u_input.d, ~(-vec4<i32>(u_input.c.x, 1i, -27409i, 2147483647i)), !(24882i != arg_1))), !arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(751f, _wgslsmith_f_op_f32(f32(-1f) * -693f), all(vec4<bool>(arg_2.x, arg_0.x, false, arg_2.x))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.e)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 1393f) * _wgslsmith_f_op_f32(f32(-1f) * -1078f)))))));
    let var_2 = 221f;
    let var_3 = Struct_2(~(~18511u), _wgslsmith_div_vec4_i32(~u_input.d, u_input.d), Struct_1(countOneBits(u_input.d), ~vec4<i32>(52309i, -u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d.zyy, vec3<i32>(u_input.d.x, u_input.a, 2147483647i)), ~var_0.a.b.x), arg_0.x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(464f, _wgslsmith_f_op_f32(min(1219f, _wgslsmith_f_op_f32(-700f * var_1.x)))))));
    return ~((~vec2<u32>(u_input.b, var_3.a) & countOneBits(vec2<u32>(4294967295u, var_3.a))) >> (vec2<u32>(var_3.a >> (61238u % 32u), var_0.a.a | var_3.a) % vec2<u32>(32u))) << (vec2<u32>(~_wgslsmith_div_u32(~41132u, 4294967295u), var_3.a) % vec2<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_clamp_vec2_u32(func_2(select(!(!vec4<bool>(arg_1.x, false, true, true)), select(select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, false), true), select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(true, true, arg_1.x, arg_1.x)), vec4<bool>(true, arg_1.x, true, arg_1.x)), !arg_1.x | (arg_1.x & arg_1.x)), min(1i, u_input.c.x), !arg_1), firstTrailingBit(vec2<u32>((u_input.e >> (4294967295u % 32u)) & 1u, _wgslsmith_mult_u32(var_0, _wgslsmith_sub_u32(arg_0.x, 6806u)))), vec2<u32>(1u, abs(firstTrailingBit(arg_0.x)) | 10163u));
    let var_2 = Struct_2(abs(_wgslsmith_dot_vec4_u32(arg_0, select(arg_0, countOneBits(vec4<u32>(var_1.x, 15779u, arg_0.x, u_input.b)), false))), _wgslsmith_sub_vec4_i32(u_input.d, ~(~vec4<i32>(-2147483647i, 12194i, 47733i, u_input.d.x) >> (arg_0 % vec4<u32>(32u)))), Struct_1(vec4<i32>(_wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_mult_i32(-1i, -1i)), abs(_wgslsmith_sub_i32(21054i, 1i)), 34236i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.d.x), -u_input.d.x)), -vec4<i32>(u_input.c.x, 45833i, -2147483647i, -1i) | u_input.d, arg_1.x));
    let var_3 = 1000f;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -1000f, 1000f) - vec3<f32>(-1863f, var_3, 476f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_3, var_3)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(939f, -916f, var_3) * vec3<f32>(var_3, var_3, var_3)))))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1260f, var_3), _wgslsmith_f_op_f32(var_3 * 782f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.yz) * var_4.zy)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(func_2(select(vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0, false), _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(u_input.d.x, u_input.a)), arg_0.xwy), vec2<u32>(~u_input.b, 4294967295u)), firstTrailingBit(max(1u, u_input.e)), (u_input.e | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(0u, u_input.e))) << (_wgslsmith_add_u32(abs(u_input.e), _wgslsmith_mult_u32(u_input.b, u_input.e)) % 32u), _wgslsmith_mod_u32(~30161u, ~0u ^ u_input.e)), select(select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.zxy), !vec3<bool>(true, arg_0.x, true), !(!arg_0.yxy)), !select(!arg_0.wyy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), true)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-2302f, 1051f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-190f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-824f, -470f), vec2<f32>(var_0.x, var_0.x), true)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(837f, 152f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.x), vec2<f32>(var_0.x, 577f), u_input.b <= 37133u))), select(arg_0.yy, vec2<bool>(true, !arg_0.x), true))), vec2<f32>(-596f, _wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_1 = var_0.x;
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var var_2 = u_input.c.x;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(368f, -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1428f, -252f), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1435f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1170f, -892f)), -2511f))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-1345f)), _wgslsmith_f_op_f32(f32(-1f) * -134f), var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -207f, var_0.x, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(1u)), _wgslsmith_f_op_f32(f32(-1f) * -275f), 935f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -607f, 659f, var_0.x) - vec4<f32>(-450f, var_0.x, var_0.x, -1657f)) * vec4<f32>(var_0.x, 379f, var_0.x, var_0.x)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), 1026f, var_0.x, _wgslsmith_f_op_f32(func_1(vec4<bool>(any(vec2<bool>(false, true)), false, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)))))));
    let var_1 = any(select(vec3<bool>(any(vec2<bool>(true, true)), true || (44046u < u_input.e), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
    var_0 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1670f) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))) - -220f));
    let var_2 = Struct_2(~64092u | _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, u_input.b, 50324u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.e), vec3<u32>(u_input.e, 3449u, u_input.e)))), u_input.d, Struct_1(vec4<i32>(min(_wgslsmith_add_i32(-2147483647i, u_input.a), 1i), abs(firstLeadingBit(u_input.d.x)), 5248i, u_input.d.x ^ firstLeadingBit(u_input.d.x)), max(firstTrailingBit(select(u_input.d, vec4<i32>(u_input.c.x, 1i, -35347i, u_input.c.x), vec4<bool>(var_1, true, true, true))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, -19325i, 54045i, -1i), vec4<i32>(6542i, u_input.d.x, u_input.c.x, u_input.c.x), var_1), u_input.d, -u_input.d)), any(select(select(vec2<bool>(false, var_1), vec2<bool>(false, false), vec2<bool>(var_1, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, var_1)), vec2<bool>(true, var_1)))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2507f, -976f), _wgslsmith_f_op_f32(-669f - var_0.x), _wgslsmith_div_f32(313f, -359f), _wgslsmith_div_f32(1121f, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-958f, var_0.x, 1719f, -1361f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1137f, 868f, var_0.x, -574f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1049f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -308f, -940f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2985f), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -708f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -972f, -752f, 698f) * vec4<f32>(-1229f, -1551f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 150f, var_0.x) + vec4<f32>(-159f, -1715f, var_0.x, 590f)))))));
    var var_4 = select(-vec3<i32>(-1i, u_input.a, firstTrailingBit(-1i)), countOneBits(vec3<i32>(43074i, -99616i, 1i)), vec3<bool>(all(vec2<bool>(any(vec2<bool>(var_1, true)), true)), any(select(vec3<bool>(true, var_2.c.c, var_2.c.c), !vec3<bool>(false, var_1, false), select(vec3<bool>(false, false, var_2.c.c), vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_2.c.c, true)))), any(!select(vec4<bool>(false, true, false, var_1), vec4<bool>(true, false, var_1, var_2.c.c), vec4<bool>(false, var_2.c.c, var_1, var_1)))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u << (_wgslsmith_mult_u32(var_5.a, 15960u) % 32u))));
}

