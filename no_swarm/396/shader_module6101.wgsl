struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1663f, _wgslsmith_f_op_f32(arg_3.x - arg_2), _wgslsmith_f_op_f32(min(arg_2, -1484f)), _wgslsmith_f_op_f32(step(-1396f, arg_3.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, arg_2, -3017f, 383f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1082f, arg_3.x, -1464f, arg_3.x), vec4<f32>(arg_2, arg_2, arg_2, -473f), vec4<bool>(false, true, false, false)))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(284f, arg_3.x, arg_3.x, arg_2))), any(vec3<bool>(true, abs(arg_1.x) >= 1i, true))));
    let var_1 = Struct_5(vec4<bool>(true, false, !(arg_1.x <= _wgslsmith_mod_i32(arg_1.x, arg_1.x)), true), vec2<u32>(~23965u, u_input.b.x) << (vec2<u32>(~abs(1u), 3809u) % vec2<u32>(32u)), Struct_3(vec3<i32>(1i, 1i, 1i), abs(~(~u_input.b.yz)), -(_wgslsmith_mult_i32(arg_1.x, -38902i) << (arg_0 % 32u))), vec3<i32>((_wgslsmith_clamp_i32(1i, 1i, 12171i) & ~(-2147483647i)) << (arg_0 % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(7893i, 59751i, -2147483647i), select(vec3<i32>(arg_1.x, 31928i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, -2147483647i), false)), arg_1.x), min(arg_1.x, i32(-1i) * -25534i) & _wgslsmith_mod_i32(9303i, 1i << (u_input.a % 32u))), (((u_input.a & 0u) << (28511u % 32u)) << ((~0u << (_wgslsmith_mult_u32(11988u, u_input.a) % 32u)) % 32u)) == _wgslsmith_div_u32(30843u, u_input.b.x));
    let var_2 = vec2<u32>(80784u, var_1.c.b.x) | ~_wgslsmith_sub_vec2_u32(abs(max(vec2<u32>(arg_0, var_1.c.b.x), var_1.b)), var_1.c.b);
    var var_3 = -715f;
    let var_4 = _wgslsmith_f_op_f32(ceil(var_0.x));
    return vec3<i32>(reverseBits(arg_1.x), arg_1.x, min(-75186i, ~(-2147483647i)));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> bool {
    let var_0 = 341f;
    var var_1 = true;
    var_1 = arg_1.e;
    var_1 = any(arg_1.a.wz);
    var var_2 = Struct_4(~_wgslsmith_sub_u32(arg_0, ~1u), !select(vec2<bool>(true, all(vec4<bool>(true, true, true, arg_1.e))), select(select(arg_1.a.yy, arg_1.a.yx, vec2<bool>(arg_1.a.x, true)), vec2<bool>(arg_1.a.x, false), any(arg_1.a)), arg_1.a.x), _wgslsmith_clamp_vec3_i32(~(~(-arg_1.d)), min(-(~vec3<i32>(-2147483647i, arg_1.c.c, 1i)), -arg_1.c.a), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_1.d, arg_1.c.a), vec3<i32>(-2147483647i, arg_1.d.x, 1i) | min(vec3<i32>(1i, 2147483647i, 16861i), arg_1.c.a))));
    return arg_1.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    var var_1 = vec4<bool>(func_4(u_input.a, Struct_5(select(vec4<bool>(var_0.a, false, arg_1.a, false), !vec4<bool>(var_0.a, false, false, var_0.a), select(false, var_0.a, true)), ~vec2<u32>(1u, 24585u), Struct_3(func_3(18357u, vec2<i32>(-2147483647i, arg_0), -589f, vec2<f32>(1694f, 275f)), min(u_input.b.zw, u_input.b.ww), 10181i >> (u_input.b.x % 32u)), vec3<i32>(-1i) * -vec3<i32>(7412i, arg_0, arg_0), any(!var_0.b.xx))), true, var_0.a, arg_1.a);
    let var_2 = Struct_2(~51327u, arg_1.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(498f, -1581f, 808f, -860f), vec4<f32>(541f, -110f, 971f, -873f), vec4<bool>(false, arg_1.a, arg_1.b.x, true))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1798f, 105f, _wgslsmith_f_op_f32(select(-145f, 694f, false)), _wgslsmith_f_op_f32(1582f * 294f))))), select(!select(!vec4<bool>(var_1.x, var_1.x, arg_1.a, false), !vec4<bool>(false, true, true, var_1.x), true), vec4<bool>(var_1.x, false, var_0.a, true), !(!(!vec4<bool>(var_0.a, true, false, true)))));
    let var_3 = vec3<i32>(53759i, -4027i, firstLeadingBit(_wgslsmith_clamp_i32(-arg_0 ^ -arg_0, arg_0, ~(arg_0 & arg_0))));
    var_1 = !select(vec4<bool>(true, any(var_2.d), !var_0.b.x, !any(var_2.d)), select(!select(var_2.d, var_2.d, false), !select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_0.a, true, false, var_0.a), var_1.x), select(vec4<bool>(var_0.b.x, var_2.d.x, false, false), !var_2.d, vec4<bool>(arg_1.a, arg_1.b.x, true, var_1.x))), var_2.d);
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) * var_2.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -639f), -682f);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(-32140i | arg_1.c.x, Struct_1(false, vec3<bool>(arg_1.b.x, false, true)))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, 442f, -518f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(435f, -521f, 243f) - vec3<f32>(992f, 1420f, -1283f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(1226f)), -299f, -1091f)));
    let var_1 = _wgslsmith_sub_vec2_i32(~arg_1.c.yy, -vec2<i32>(abs(abs(-2147483647i)), _wgslsmith_clamp_i32(max(-18799i, arg_1.c.x), i32(-1i) * -22068i, 0i)));
    let var_2 = vec3<u32>(26044u, abs(arg_1.a), ~_wgslsmith_sub_u32(65604u, ~(~u_input.a)));
    let var_3 = !(!(!vec3<bool>(all(vec3<bool>(true, false, arg_1.b.x)), true, false)));
    let var_4 = max(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.c.x, var_1.x, var_1.x), vec4<i32>(arg_1.c.x, 1i, var_1.x, 22307i)), ~(-1i), countOneBits(arg_1.c.x)) >> (((u_input.b.x ^ var_2.x) << (26058u % 32u)) % 32u), var_1.x), var_1);
    return arg_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = Struct_3(vec3<i32>(-1i) * -min(arg_1.c ^ arg_1.c, -arg_1.c), reverseBits(~u_input.b.yz), ~min(_wgslsmith_dot_vec2_i32(arg_1.c.xy, arg_2.c.xy), arg_2.c.x) | 1i);
    var_0 = Struct_3(_wgslsmith_mult_vec3_i32(-vec3<i32>(46341i, abs(arg_1.c.x), ~arg_1.c.x), func_3(firstLeadingBit(17940u), ~select(vec2<i32>(-1i, arg_2.c.x), vec2<i32>(-33559i, arg_2.c.x), arg_2.b), 707f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-3128f, 1078f), vec2<f32>(-201f, -914f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(312f, -1000f) - vec2<f32>(1006f, 526f))))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.b.wx), vec2<u32>(~0u, 0u), firstTrailingBit(vec2<u32>(arg_2.a, 1u) ^ vec2<u32>(var_0.b.x, 1u))), arg_1.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2415f, _wgslsmith_f_op_vec3_f32(func_2(~arg_1.c.x, Struct_1(false, vec3<bool>(arg_2.b.x, arg_1.b.x, arg_0.x)))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-831f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, -224f, 1000f) + vec3<f32>(119f, 966f, 728f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, 376f, -627f)))))));
    var_0 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(var_0.a.x, arg_1.c.x), arg_1.c.x, _wgslsmith_mod_i32(~(15880i ^ arg_2.c.x), ~abs(0i))), var_0.b >> (_wgslsmith_sub_vec2_u32(~u_input.b.zx, ~(~vec2<u32>(42603u, var_0.b.x))) % vec2<u32>(32u)), 2147483647i);
    let var_2 = vec2<u32>(0u, ~4294967295u);
    return _wgslsmith_mod_vec3_i32(-vec3<i32>(-countOneBits(var_0.c), arg_2.c.x, ~(i32(-1i) * -3515i)), vec3<i32>(0i, select(_wgslsmith_mod_i32(max(2147483647i, arg_1.c.x), _wgslsmith_dot_vec2_i32(arg_1.c.xy, vec2<i32>(arg_2.c.x, var_0.a.x))), -var_0.a.x, !all(vec3<bool>(false, arg_1.b.x, false))), _wgslsmith_dot_vec2_i32(arg_1.c.xz, ~var_0.a.xx ^ min(vec2<i32>(11237i, -10984i), vec2<i32>(var_0.c, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~countOneBits(vec3<i32>(0i, countOneBits(2147483647i), max(13079i, 0i))));
    var_0 = abs(-vec3<i32>(~(~(-31567i)), var_0.x, ~(~var_0.x)));
    var_0 = _wgslsmith_sub_vec3_i32(firstTrailingBit(func_5(vec2<bool>(0u >= u_input.b.x, 4294967295u <= u_input.a), func_1(~4294967295u, Struct_4(4294967295u, vec2<bool>(false, false), vec3<i32>(var_0.x, var_0.x, var_0.x)), 57622u), func_1(_wgslsmith_add_u32(u_input.a, u_input.b.x), Struct_4(u_input.a, vec2<bool>(false, true), vec3<i32>(var_0.x, 25861i, -1i)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)))), -(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-15407i, -1i, var_0.x), vec3<i32>(-30944i, -82475i, var_0.x))) ^ _wgslsmith_div_vec3_i32(func_5(vec2<bool>(true, true), Struct_4(u_input.b.x, vec2<bool>(false, false), vec3<i32>(var_0.x, -16363i, var_0.x)), Struct_4(4294967295u, vec2<bool>(false, false), vec3<i32>(1i, 11794i, 31901i))), vec3<i32>(-1i, var_0.x, var_0.x) >> (u_input.b.zwx % vec3<u32>(32u)))));
    var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-max(var_0.x, var_0.x), -_wgslsmith_add_i32(var_0.x, var_0.x), 21649i), countOneBits(abs(~vec3<i32>(-35757i, -15545i, var_0.x))));
    var var_1 = vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, true);
    var_1 = !(!vec4<bool>(true, true, var_1.x, false));
    var_0 = vec3<i32>(-2147483647i, 1i, (1i | select(-50975i, -1i, var_1.x)) | var_0.x) << (~(abs(vec3<u32>(0u, u_input.a, 4132u)) | firstTrailingBit(u_input.b.zwx)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34402u, u_input.b.x), vec3<u32>(50615u, 1u, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x, u_input.a))));
}

