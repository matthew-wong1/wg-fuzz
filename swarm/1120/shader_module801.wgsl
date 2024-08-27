struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = !arg_2;
    let var_1 = 997f;
    let var_2 = Struct_2(Struct_1(~(-_wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), _wgslsmith_f_op_f32(var_1 * 1f), vec3<i32>(1i, min(21854i, 17733i) >> (~u_input.b % 32u), max(1i >> (arg_1.x % 32u), firstLeadingBit(arg_0)))), vec4<i32>(0i, -58600i, 2147483647i, -(i32(-1i) * -47073i)), _wgslsmith_f_op_f32(sign(-1095f)));
    var var_3 = -(vec2<i32>(u_input.e.x, -46407i) >> (vec2<u32>(~arg_1.x, 63859u) % vec2<u32>(32u)));
    var_3 = var_2.b.xw;
    return select(select(vec2<bool>(true, any(vec4<bool>(var_0, true, var_0, true))), !(!vec2<bool>(false, var_0)), select(!(!vec2<bool>(arg_2, true)), vec2<bool>(var_0, any(vec2<bool>(false, true))), !select(vec2<bool>(var_0, false), vec2<bool>(false, false), vec2<bool>(var_0, false)))), !(!select(!vec2<bool>(false, var_0), !vec2<bool>(true, var_0), true)), false);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(131i), ~(u_input.e.x & u_input.d.x)), u_input.e.x), ~(~(~u_input.d.x)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.e.x, u_input.a, -1i), vec4<i32>(u_input.d.x, -668i, u_input.d.x, u_input.d.x)) >> (~vec4<u32>(u_input.c, u_input.b, 1u, u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -1i, 0i) | vec4<i32>(1i, 1i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, -15649i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.e.x, u_input.d.x, 1i)))));
    var var_1 = ~u_input.c;
    var_1 = ~(~firstTrailingBit(firstTrailingBit(~39471u)));
    var_1 = firstLeadingBit(abs(_wgslsmith_mult_u32(51559u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.c))))) & u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(474f))) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(exp2(arg_0))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.x))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(abs(14662u)), ~4294967295u, ~(~55993u)), ~vec3<u32>(u_input.b, u_input.c, u_input.c) & ~vec3<u32>(u_input.c, u_input.c, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(21871u, 57488u, u_input.b)) ^ vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), countOneBits(u_input.b), u_input.b)), vec3<u32>(~(~(u_input.c >> (u_input.b % 32u))), 13581u, ~99674u), !(!vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true)));
    var var_1 = select(vec2<bool>(true, !all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), true);
    var_1 = select(func_2(~reverseBits(firstLeadingBit(u_input.a)), vec3<u32>(u_input.b, var_0.x, ~(~u_input.c)), !(u_input.c < abs(2775u))), vec2<bool>(!(1u <= u_input.c), var_1.x), -2454f <= _wgslsmith_f_op_f32(max(445f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1694f * 1212f))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, 1000f, -1297f, 2117f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(804f, -1325f, -1541f, 652f)))), vec4<f32>(_wgslsmith_f_op_f32(1201f + -1202f), -1000f, _wgslsmith_f_op_f32(1339f - 688f), -1439f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(804f, -2105f, 945f, 886f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f * -344f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(793f)) - _wgslsmith_f_op_f32(max(109f, 1624f))), -751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-727f)) + -786f))));
    var var_3 = Struct_3(-(~0i), vec4<u32>(var_0.x, u_input.c, 0u, ~var_0.x), Struct_1(~u_input.d.x, -1402f, u_input.e), _wgslsmith_f_op_vec2_f32(select(var_2.yz, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x))), vec2<bool>((var_1.x && true) && all(vec3<bool>(var_1.x, var_1.x, var_1.x)), false && !var_1.x))), var_2.wz);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.x, var_3.d.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(var_2.x, var_3.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-184f, 503f), _wgslsmith_f_op_f32(round(-586f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f), 416f), -1950f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2153f, 287f, 1000f))), !select(true, all(vec3<bool>(false, false, true)), true))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-840f, _wgslsmith_f_op_f32(f32(-1f) * -636f), true)), _wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1301f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1288f * 588f) * _wgslsmith_div_f32(1337f, 301f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, 150f)), _wgslsmith_f_op_f32(243f + -869f))), var_0.x));
    var var_2 = countOneBits(reverseBits(vec2<i32>(u_input.e.x, u_input.e.x)));
    var var_3 = u_input.e;
    let var_4 = var_0.xz;
    var var_5 = Struct_3(firstLeadingBit(var_3.x << (u_input.c % 32u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 25317u, 0u, u_input.c), vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b) ^ vec4<u32>(u_input.b, 11776u, 1u, 4294967295u)) | ~(~(vec4<u32>(u_input.b, 8181u, 1316u, u_input.b) >> (vec4<u32>(119208u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), Struct_1(-firstTrailingBit(~var_3.x), var_4.x, select(vec3<i32>(1i, var_2.x, -2147483647i), ~vec3<i32>(3814i, 14466i, -1i), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)) ^ ~u_input.e), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f + var_1.x) - _wgslsmith_div_f32(-574f, -372f)), _wgslsmith_f_op_f32(f32(-1f) * -2039f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-840f, var_4.x) - _wgslsmith_f_op_vec2_f32(-var_4)))), var_4));
    var_3 = -(~vec3<i32>(select(i32(-1i) * -17134i, select(0i, u_input.e.x, false), all(vec4<bool>(true, false, true, true))), -29723i, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_mod_vec4_u32(select(~select(var_5.b, var_5.b, vec4<bool>(false, false, true, true)), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 0u), _wgslsmith_clamp_u32(1u, u_input.c, u_input.c), var_5.b.x ^ u_input.c, ~0u), true), var_5.b), vec3<u32>(u_input.c, 4294967295u, (~var_5.b.x & ~u_input.b) | 4294967295u));
}

