struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_3(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(arg_0.d.a.x))));
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.a.x, arg_0.d.a.x)))) - arg_1.x), -689f));
    let var_1 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, _wgslsmith_mult_u32(12694u, arg_0.b)), vec3<u32>(4294967295u, ~min(u_input.a.x, 0u), 40388u), arg_0.a.e), countOneBits(~vec3<u32>(abs(arg_0.a.a.x), ~arg_0.b, u_input.a.x & 7274u)));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -311f) + 1f)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(arg_0.d.a)));
    return -461f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = arg_2.c.xx;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(arg_2, 93293u, u_input.a, Struct_3(arg_3.zz)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.x, -1533f, 1335f, arg_3.x))), reverseBits(vec4<u32>(arg_2.a.x, u_input.a.x, 1u, arg_2.a.x)), 2147483647i << (u_input.a.x % 32u)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(900f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1000f) - -1044f)))));
    let var_2 = Struct_5(Struct_1(arg_2.a, vec2<bool>(true, arg_2.e.x || all(vec4<bool>(true, true, arg_2.b.x, false))), arg_2.c, _wgslsmith_sub_i32(firstLeadingBit(-53916i), -61119i), arg_2.e));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(324f, arg_0), -618f, -278f, _wgslsmith_f_op_f32(-arg_0))));
    var var_4 = var_2.a.c.x;
    return select(select(select(arg_2.e, select(var_2.a.e, !vec3<bool>(true, var_2.a.b.x, var_2.a.b.x), false), false), !(!vec3<bool>(false, var_2.a.e.x, true)), var_2.a.e.x), var_2.a.e, true);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> vec4<u32> {
    let var_0 = vec4<bool>(all(select(vec3<bool>(true, true, arg_2 >= -938f), !func_2(arg_2, u_input.a.yz, Struct_1(vec2<u32>(3122u, u_input.a.x), vec2<bool>(false, false), vec3<i32>(-42420i, arg_0, arg_0), arg_0, vec3<bool>(true, false, false)), vec3<f32>(arg_2, 1999f, arg_2)), any(vec3<bool>(false, true, false)))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), func_2(arg_2, u_input.a.yy, Struct_1(vec2<u32>(4294967295u, u_input.a.x), vec2<bool>(true, false), vec3<i32>(arg_0, 7484i, arg_0), arg_0, vec3<bool>(true, false, true)), vec3<f32>(arg_2, -717f, arg_2)).zz), func_2(arg_2, u_input.a.yy, Struct_1(arg_1.wz, vec2<bool>(false, true), vec3<i32>(-33546i, 8507i, 5171i), 0i, vec3<bool>(false, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -1456f, -949f))).xy, true)), false, any(select(vec2<bool>(true, true), func_2(_wgslsmith_f_op_f32(737f - 1644f), abs(u_input.a.xy), Struct_1(u_input.a.yy, vec2<bool>(false, false), vec3<i32>(-2147483647i, -14266i, arg_0), 32641i, vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1605f, -595f, arg_2))).xz, 1i < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0, -5902i, arg_0), vec4<i32>(34308i, -22632i, arg_0, 2147483647i)))));
    return vec4<u32>(0u, u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(~(arg_1 ^ arg_1), ~abs(arg_1))), firstLeadingBit(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-(~2147483647i) | _wgslsmith_add_i32(reverseBits(i32(-1i) * -41467i), firstTrailingBit(1i) ^ 23347i));
    var_0 = _wgslsmith_mult_i32(12393i, _wgslsmith_add_i32(34091i, -firstTrailingBit(29812i)) >> (~select(u_input.a.x, ~1u, true) % 32u));
    var var_1 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x >> (~25678u % 32u), u_input.a.x, 15499u, ~reverseBits(94375u)), ~func_1(~(-2147483647i), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 69673u), vec4<u32>(u_input.a.x, 10828u, u_input.a.x, 44595u), true), -782f)), _wgslsmith_mod_vec4_u32(max(min(vec4<u32>(4629u, 24465u, 30069u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 90985u, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)), vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), vec4<u32>(~26598u, select(0u, max(u_input.a.x, 54637u), true), ~0u ^ u_input.a.x, ~u_input.a.x)), func_2(_wgslsmith_f_op_f32(-1454f * _wgslsmith_f_op_f32(771f + -375f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 80317u), func_1(7731i, vec4<u32>(u_input.a.x, 0u, 36248u, u_input.a.x), 1110f).zw, _wgslsmith_sub_vec2_u32(u_input.a.xx, u_input.a.xy)), Struct_1(min(vec2<u32>(1u, 27670u), u_input.a.xx), vec2<bool>(true, true), abs(vec3<i32>(-1i, 11168i, -27045i)), -912i, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-132f, -1197f, 837f), vec3<f32>(445f, 605f, 678f))) - vec3<f32>(1f, 1f, 1f))).x || any(vec4<bool>(true, select(false, true, true), true, true)));
    var_1 = abs(abs(func_1(2147483647i, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, 4332u, var_1.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), 1849f))) >> (vec4<u32>(~abs(var_1.x), 0u, u_input.a.x, 0u) % vec4<u32>(32u));
    var_1 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(max(var_1.x, 1u), 1u, 0u, 38377u), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(var_1.x, 41434u, 4294967295u, 31601u)), vec4<u32>(var_1.x, u_input.a.x, 0u, var_1.x), select(vec4<u32>(1u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_1.x), vec4<bool>(true, true, false, true))))));
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 979f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-255f - 1139f), _wgslsmith_f_op_f32(1816f - -338f), true)))), 878f));
    var_0 = -33476i;
    var var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-10474i, _wgslsmith_mult_i32(2147483647i, 0i)), ~abs(vec2<i32>(-31341i, -16223i))) | _wgslsmith_sub_vec2_i32(max(vec2<i32>(-39469i, -1i), firstTrailingBit(vec2<i32>(0i, -2147483647i))), vec2<i32>(countOneBits(7036i), 2147483647i)), vec2<i32>(1i, 1i), -(-firstTrailingBit(vec2<i32>(-15854i, -8298i)) ^ vec2<i32>(_wgslsmith_mult_i32(-27725i, -17400i), 0i)));
    var_1 = select(firstTrailingBit(~vec4<u32>(var_1.x >> (var_1.x % 32u), ~44726u, reverseBits(var_1.x), 48701u)), min(vec4<u32>(var_1.x, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(20167u, 0u))), 21404u, ~(~u_input.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u) ^ vec4<u32>(0u, 10223u, var_1.x, var_1.x)), vec4<u32>(4294967295u, ~u_input.a.x, 1u, 1u))), any(select(vec4<bool>(true, func_2(var_2.a.x, var_1.xz, Struct_1(vec2<u32>(var_1.x, 6234u), vec2<bool>(true, false), vec3<i32>(var_3.x, var_3.x, 0i), var_3.x, vec3<bool>(false, false, false)), vec3<f32>(-697f, 637f, var_2.a.x)).x, var_3.x >= var_3.x, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, true, false), all(vec3<bool>(false, true, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_3.x, var_3.x), vec4<i32>(-19487i, 0i, var_3.x, 1i))), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(2147483647i, var_3.x, 23950i, var_3.x)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, -1i, var_3.x, 2147483647i), vec4<i32>(var_3.x, var_3.x, var_3.x, 0i)), -vec4<i32>(var_3.x, var_3.x, var_3.x, 1i), true))), var_1.x, var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, 1f, true)), var_2.a.x, _wgslsmith_f_op_f32(trunc(-833f)))));
}

