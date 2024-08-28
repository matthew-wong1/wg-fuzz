struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_4(!vec4<bool>(any(vec2<bool>(true, true)), true & all(vec4<bool>(true, true, true, false)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -188f), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1762f + _wgslsmith_f_op_f32(-459f + -669f)), select(select(0i, 2147483647i, true), -1i, true)), ~1i), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, -756f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 1252f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(218f, 620f)), _wgslsmith_f_op_f32(1844f + 791f)), 15078i)));
    let var_1 = Struct_4(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-346f, -1063f)))), var_0.c, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1310f))) + _wgslsmith_f_op_vec2_f32(select(var_0.d.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(838f, 1000f), vec2<f32>(var_0.b, var_0.d.b.a), false)), var_0.a.x & false))), Struct_1(100f, -50568i)));
    let var_2 = vec3<u32>(65647u, 64218u, _wgslsmith_dot_vec2_u32(arg_1.zz, countOneBits(~(~arg_0.yx))));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-var_1.d.b.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.b), -max(var_1.d.b.b, var_1.c.a.b)), _wgslsmith_add_i32(-33351i, _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, 23482i), var_0.d.b.b ^ var_1.c.b))), var_0.d);
    let var_3 = var_0.d;
    return false;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec2<bool>(!select(false, true, true), func_3(u_input.a.wwz, firstTrailingBit(u_input.a)))), true, true, any(vec3<bool>(true, true, true)));
    var_0 = select(select(!(!select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, var_0.x, var_0.x, false), false)), select(vec4<bool>(var_0.x, var_0.x, any(vec4<bool>(true, false, true, var_0.x)), true), select(vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), true)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, true, false), false)), var_0.x), !(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), var_0.x);
    var var_1 = vec3<f32>(-1678f, -1662f, _wgslsmith_f_op_f32(f32(-1f) * -555f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-228f)), 291f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-362f)) * -640f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 587f))))));
    return Struct_1(var_2, _wgslsmith_sub_i32(arg_0.a.b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.a.b, arg_0.a.b, -1700i, arg_0.b), ~vec4<i32>(arg_0.b, arg_0.b, arg_0.b, -2147483647i)), min(vec4<i32>(arg_0.b, -39479i, -2147483647i, arg_0.a.b), vec4<i32>(arg_0.a.b, 38712i, arg_0.b, arg_0.a.b)) >> (_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(75997u, u_input.a.x, 46024u, 59529u)) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(612f)) + _wgslsmith_f_op_f32(f32(-1f) * -1154f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2776f)) + _wgslsmith_f_op_f32(-260f + 1172f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)) * arg_0.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a + -145f)) - _wgslsmith_f_op_f32(f32(-1f) * -474f)), 999f));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.a, var_0.x, 129f), vec3<f32>(-1298f, -754f, arg_0.a.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-121f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, 2069f, 179f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a) - vec3<f32>(-972f, 134f, 1137f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, 2004f, arg_0.a.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, -1450f, arg_0.a.a))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -588f, _wgslsmith_f_op_f32(-arg_0.a.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.a.a, 725f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 1924f, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(step(2064f, 725f)), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1201f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.a, arg_0.a.a, 813f), vec3<f32>(arg_0.a.a, arg_0.a.a, var_0.x), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, -306f, arg_0.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1448f, -925f) - vec3<f32>(var_0.x, -2517f, var_0.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1147f, -479f, arg_0.a.a)))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0.a.a, -1427f) * vec3<f32>(-293f, 1000f, 300f)))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 249f, -1202f)), vec3<f32>(var_0.x, var_0.x, arg_0.a.a), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, -836f, 305f) * vec3<f32>(-306f, var_0.x, -505f)), vec3<f32>(arg_0.a.a, arg_0.a.a, 903f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, -1184f, var_0.x)))))));
    return Struct_4(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))), true), _wgslsmith_f_op_f32(floor(1355f)), Struct_2(arg_0.a, arg_0.b), Struct_3(vec2<f32>(1505f, var_0.x), arg_0.a));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    let var_0 = vec3<i32>(0i, i32(-1i) * -(32476i << ((u_input.a.x | u_input.a.x) % 32u)), ~(_wgslsmith_mult_i32(1i, ~(-1i)) ^ (_wgslsmith_sub_i32(arg_0.d.b.b, -1i) << (1u % 32u))));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_0, var_0, vec3<i32>(6532i, var_0.x, arg_2.b.b)), reverseBits(-var_0)) | ~var_0, vec3<i32>(0i, firstTrailingBit(-8822i), 45597i) ^ var_0);
    let var_2 = arg_2;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) + 1599f))), var_2.b.a, _wgslsmith_f_op_f32(exp2(arg_2.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a - -2301f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(456f - var_2.a.x), var_2.a.x)))));
    let var_4 = 0u;
    return select(!vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(!arg_0.a.x, arg_0.a.x, false, !(245u < max(var_4, var_4))), !(!(arg_0.b < -1280f)) & !arg_0.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    var var_0 = !func_5(func_4(Struct_2(func_2(Struct_2(Struct_1(2594f, -2147483647i), 26897i)), arg_2.b.b)), func_2(Struct_2(Struct_1(arg_0.a.x, arg_2.b.b), arg_0.b.b | arg_2.b.b)).a, arg_0, arg_3.x);
    var_0 = !(!select(vec4<bool>(true, true, 18295u > u_input.a.x, arg_1.x || var_0.x), func_5(Struct_4(vec4<bool>(false, var_0.x, false, arg_1.x), arg_0.b.a, Struct_2(Struct_1(arg_3.x, 23825i), 1i), arg_0), 1147f, arg_2, arg_2.a.x), func_5(Struct_4(vec4<bool>(var_0.x, arg_1.x, false, false), arg_3.x, Struct_2(Struct_1(arg_3.x, 0i), 1i), Struct_3(arg_0.a, arg_0.b)), _wgslsmith_f_op_f32(arg_0.b.a + 1010f), func_4(Struct_2(arg_2.b, 2147483647i)).d, _wgslsmith_f_op_f32(-737f - -139f))));
    return !all(var_0.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~20642i, -1034i), vec2<i32>(firstTrailingBit(15887i), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(0i, -10158i)), ~1i)));
    var var_1 = !vec3<bool>(!(!func_1(Struct_3(vec2<f32>(-333f, 722f), Struct_1(1000f, -8362i)), vec2<bool>(false, false), Struct_3(vec2<f32>(-871f, 295f), Struct_1(1726f, 0i)), vec4<f32>(605f, 312f, 374f, -658f))), _wgslsmith_sub_i32(var_0.x & var_0.x, _wgslsmith_mod_i32(var_0.x, 0i)) >= 2147483647i, true);
    var_1 = select(vec3<bool>(true, true, any(!vec4<bool>(false, var_1.x, false, var_1.x))), !(!vec3<bool>(!var_1.x, true, true)), vec3<bool>(!func_5(Struct_4(vec4<bool>(true, var_1.x, var_1.x, false), 1830f, Struct_2(Struct_1(691f, var_0.x), var_0.x), Struct_3(vec2<f32>(670f, 401f), Struct_1(667f, var_0.x))), _wgslsmith_div_f32(-1435f, 370f), Struct_3(vec2<f32>(661f, -477f), Struct_1(582f, 3639i)), -439f).x, var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1410f + 1064f))) != _wgslsmith_div_f32(-431f, _wgslsmith_div_f32(157f, -1295f))));
    let var_2 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * func_4(Struct_2(Struct_1(645f, var_0.x), var_0.x)).b), -2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -18411i, -2147483647i, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), vec4<i32>(var_0.x, -3239i, var_0.x, -72508i)))));
    var var_3 = Struct_2(func_4(Struct_2(func_4(Struct_2(var_2, var_2.b)).c.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, var_2.b, var_2.b), vec4<i32>(46476i, var_0.x, 1i, var_0.x)))).d.b, var_0.x);
    let var_4 = !(!(!vec3<bool>(!var_1.x, var_1.x & var_1.x, var_1.x != var_1.x)));
    var_1 = select(select(vec3<bool>(var_4.x | func_1(Struct_3(vec2<f32>(var_2.a, var_3.a.a), var_3.a), vec2<bool>(false, true), Struct_3(vec2<f32>(var_3.a.a, var_2.a), Struct_1(-162f, -13361i)), vec4<f32>(var_3.a.a, 877f, var_3.a.a, 198f)), false, false), vec3<bool>(-var_2.b >= ~var_0.x, all(select(vec4<bool>(var_1.x, var_4.x, var_1.x, false), vec4<bool>(var_4.x, var_1.x, true, true), var_1.x)), true), !((var_1.x && var_4.x) | !var_1.x)), vec3<bool>(var_4.x, true, all(var_1.xy)), vec3<bool>(var_1.x, true, var_1.x));
    let var_5 = Struct_5(vec4<i32>(-1i) * -vec4<i32>(var_3.a.b, var_0.x, 0i & var_0.x, _wgslsmith_add_i32(-30920i, var_3.b)), -1385f);
    let var_6 = func_4(func_4(func_4(func_4(func_4(Struct_2(Struct_1(601f, var_0.x), var_2.b)).c).c).c).c).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.a.wzx, ~vec3<u32>(4294967295u, 0u, u_input.a.x), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.wwx, vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.a.zyw & u_input.a.wzw)));
}

