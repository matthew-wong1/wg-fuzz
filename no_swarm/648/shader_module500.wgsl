struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(905f + arg_1.x);
    var var_1 = u_input.d;
    let var_2 = u_input.b.xz;
    let var_3 = Struct_4(vec3<bool>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, -5596i, -9383i)), select(vec3<i32>(-20884i, -21439i, u_input.e), vec3<i32>(u_input.e, 2147483647i, -2147483647i), false)) == reverseBits(1i), false, arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 147f)) + 1000f))), ~vec4<u32>(~_wgslsmith_mod_u32(45958u, u_input.b.x), 4294967295u, u_input.d, u_input.d), Struct_3(firstLeadingBit(abs(var_2.x)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, false, true, arg_0), any(vec4<bool>(arg_0, false, true, arg_0))), !vec4<bool>(arg_0, true, arg_0, arg_0), ~var_2.x <= (0u | u_input.b.x)), select(vec3<bool>(false, arg_0, false), !vec3<bool>(true, arg_0, true), any(vec3<bool>(false, true, arg_0))), Struct_2(reverseBits(i32(-1i) * -2147483647i))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x + -2157f))));
    return !select(vec3<bool>(false, true, var_3.d.c.x & arg_0), var_3.d.b.yxy, !(var_3.d.b.x && true));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_4(!(!vec3<bool>(true, any(vec2<bool>(true, false)), arg_0 < 211f)), 1207f, vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.d, u_input.c, u_input.b.x, u_input.c)), u_input.d), _wgslsmith_clamp_u32(0u, u_input.c, ~_wgslsmith_mult_u32(4294967295u, u_input.d)), u_input.c), Struct_3(87394u, vec4<bool>(true, all(func_3(true, vec4<f32>(arg_0, arg_0, -338f, -1000f), vec4<f32>(arg_0, arg_0, arg_0, arg_0))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true), vec3<bool>(true, true, true), Struct_2(0i)));
    var var_1 = var_0;
    var_1 = Struct_4(!select(select(!var_1.d.c, vec3<bool>(true, true, true), true), var_1.d.c, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-406f)) * _wgslsmith_f_op_f32(f32(-1f) * -1244f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.b)), arg_0)))), firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 0u), var_1.c.x, reverseBits(u_input.d), ~4294967295u) >> (min(var_1.c | vec4<u32>(var_0.d.a, u_input.c, var_0.c.x, var_1.c.x), var_1.c) % vec4<u32>(32u))), Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29053u, u_input.b.x, u_input.d), vec3<u32>(u_input.d, var_0.c.x, 31442u)) >> (_wgslsmith_dot_vec4_u32(var_1.c, var_1.c) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a, 4294967295u, 0u, var_0.c.x), var_0.c), ~4294967295u)), !var_1.d.b, func_3(!(!var_1.d.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.b, 646f, 463f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_0.b, arg_0, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, arg_0, 143f, var_1.b)))), Struct_2(select(var_1.d.d.a, _wgslsmith_mod_i32(u_input.a, var_0.d.d.a), true))));
    var var_2 = 75639u;
    var_1 = Struct_4(vec3<bool>(true, var_0.d.b.x, true), 107f, vec4<u32>(var_1.c.x, _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_clamp_u32(1u, var_0.d.a & 31052u, 1u)), 1u, u_input.b.x), Struct_3(_wgslsmith_clamp_u32(u_input.c, select(45470u, 4294967295u, true), 44378u) | ~_wgslsmith_mult_u32(var_1.d.a, 55568u), vec4<bool>(false, var_1.d.b.x, var_1.a.x, all(var_0.a.zz)), !vec3<bool>(true, true, false & var_1.d.b.x), Struct_2(firstTrailingBit(var_1.d.d.a ^ 0i))));
    return Struct_2(-abs(-18596i));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -259f)))))));
    let var_1 = vec3<u32>(~reverseBits(_wgslsmith_mod_u32(u_input.b.x, 0u)), ~0u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, max(u_input.b.x, u_input.c), 1u, 25234u), reverseBits(~vec4<u32>(5313u, u_input.b.x, 37118u, u_input.b.x))), ~(~_wgslsmith_mod_u32(0u, 4343u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1322f, 634f) + -1995f)) + _wgslsmith_div_f32(1016f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(450f - 1399f), -1380f)))));
    var var_3 = firstTrailingBit(vec3<i32>(-abs(0i) ^ u_input.e, countOneBits(u_input.a), countOneBits(i32(-1i) * -2147483647i)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 870f) * vec2<f32>(var_2, var_2)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2), -347f), vec2<f32>(_wgslsmith_f_op_f32(var_2 - var_2), 1904f))), all(vec4<bool>(true, true, true, true))));
    return Struct_3(firstTrailingBit(~u_input.b.x), vec4<bool>(!(var_4.x >= _wgslsmith_f_op_f32(-148f * var_4.x)), !(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.c, 35533u, var_1.x), vec4<u32>(1u, u_input.d, u_input.c, u_input.c)) >= min(var_1.x, u_input.b.x)), !func_3(false, vec4<f32>(161f, var_4.x, -1093f, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 347f, var_4.x, -585f))).x, false), select(vec3<bool>(u_input.b.x == 4294967295u, all(vec4<bool>(false, true, true, true)) | any(vec2<bool>(false, false)), true), select(vec3<bool>(-2147483647i < var_3.x, true, var_2 == 260f), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(select(true, false, false), any(vec3<bool>(false, true, true)), select(true, true, false))), select(true, func_3(true, vec4<f32>(299f, 553f, var_4.x, -1000f), vec4<f32>(848f, -197f, 489f, -829f)).x, _wgslsmith_f_op_f32(exp2(var_2)) < 201f)), var_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1000f, false)) + _wgslsmith_f_op_f32(arg_1.x - -658f)), 1558f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + 1054f), 504f) * vec3<f32>(_wgslsmith_f_op_f32(-1549f + -661f), _wgslsmith_f_op_f32(round(-1458f)), _wgslsmith_f_op_f32(ceil(-1399f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -3485f))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -369f, _wgslsmith_f_op_f32(floor(arg_1.x))), func_1().d.a > 1i)) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-1000f - arg_1.x))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * 2564f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1497f * 191f), arg_1.x))));
    var var_1 = false;
    let var_2 = func_1().d;
    var var_3 = var_0.x;
    let var_4 = Struct_4(vec3<bool>(true, true, func_3((36489u < arg_0.a) || true, _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(190f, 728f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, true))))).x), 773f, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(59118u, arg_0.a, u_input.b.x, u_input.b.x)), ~(vec4<u32>(20263u, 59469u, arg_0.a, 1u) << (vec4<u32>(u_input.d, 0u, arg_0.a, 2433u) % vec4<u32>(32u)))), max(vec4<u32>(4812u, u_input.d, u_input.c, arg_0.a) | vec4<u32>(arg_0.a, 0u, arg_0.a, 4294967295u), vec4<u32>(906u, arg_0.a, 40938u, u_input.c)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 13761u, 105082u, 4294967295u), select(vec4<u32>(4294967295u, u_input.d, 8208u, u_input.b.x), vec4<u32>(85040u, 83219u, 26954u, 43967u), arg_0.c.x)) % vec4<u32>(32u))), arg_0);
    return _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.e), min(~vec2<i32>(select(var_4.d.d.a, 0i, true), -16474i), vec2<i32>(~arg_0.d.a, min(var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(26042i, -40954i, var_2.a, -24869i), vec4<i32>(-2147483647i, 0i, -4935i, var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1618f)) + _wgslsmith_f_op_f32(805f * 892f)))));
    let var_1 = _wgslsmith_add_vec2_i32(~(vec2<i32>(46569i, -2147483647i) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u))) | vec2<i32>(u_input.e, -u_input.a << ((1u ^ u_input.b.x) % 32u)), func_4(func_1(), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-436f, var_0, 780f, -653f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 723f, -1078f, var_0) + vec4<f32>(var_0, var_0, var_0, var_0))), true && (103159u != u_input.d)))));
    let var_2 = vec3<i32>(-61951i << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, 1i), vec3<i32>(-27298i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 73518i, u_input.a), -vec4<i32>(var_1.x, 1i, var_1.x, u_input.a)), ~(-17494i))), -1202i);
    var var_3 = Struct_1(func_3(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, var_0, 1147f, 1903f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(278f, var_0, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0 - 1235f), var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(-519f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2034f, var_0, var_0, -1185f))), var_0 != var_0))).x);
    var_3 = Struct_1(var_2.x >= 73727i);
    var_3 = Struct_1(func_1().c.x);
    let var_4 = func_1();
    var_3 = Struct_1(all(var_4.c.xy));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.a, var_1.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-210f, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) + _wgslsmith_f_op_f32(-var_0))), 1000f));
}

