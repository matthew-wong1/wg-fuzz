struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-2589f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1477f)) + 2761f) + -916f)));
    let var_2 = all(!select(!(!vec3<bool>(false, arg_0, true)), select(!vec3<bool>(arg_1.a.a, false, true), !vec3<bool>(true, arg_0, arg_2), all(arg_1.c)), !vec3<bool>(arg_1.c.x, true, arg_2)));
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2029f + 148f) + _wgslsmith_div_f32(-907f, 183f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2414f))))));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = !(!(!func_3(any(vec3<bool>(false, false, false)), Struct_2(Struct_1(true), u_input.a, vec2<bool>(true, true)), false)));
    var_0 = true;
    let var_1 = arg_0.x;
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * 934f), -1000f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-260f - 1179f)))), Struct_1(true), -(~7982i), vec4<i32>(~(~_wgslsmith_add_i32(-21177i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), -23106i >> (u_input.b % 32u), -184i, u_input.a << (1u % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, 25835i), vec4<i32>(u_input.a, u_input.a, -22862i, u_input.a)) & vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), 0i, -((u_input.a & 2147483647i) | (u_input.a ^ u_input.a))), 1u);
    var var_3 = var_1;
    return Struct_3(var_2.a, var_2.a, 61668i, firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), u_input.a >> (9399u % 32u), abs(var_2.c), _wgslsmith_sub_i32(u_input.a, var_2.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.d, var_2.d, var_2.d), ~var_2.d))), var_2.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    return arg_0;
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, 277f, 629f, 462f) + vec4<f32>(-1000f, 557f, 2052f, -1748f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1599f, -1641f, -1310f, 1000f)))))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1472f)), -547f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -658f)))).b);
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, 984f, 1035f, 194f)), vec4<f32>(115f, -923f, 910f, -692f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-846f - 212f), _wgslsmith_f_op_f32(sign(-1440f)), -1709f, _wgslsmith_f_op_f32(-585f * -720f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f) * _wgslsmith_f_op_f32(-246f + 609f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + _wgslsmith_f_op_f32(abs(142f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(586f, -1344f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f) - _wgslsmith_f_op_f32(f32(-1f) * -3766f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-792f, 544f, var_0.b.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -732f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-314f, -931f)), 1091f)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-945f, _wgslsmith_f_op_f32(var_1 * var_1))), -254f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-550f, 696f, false)), var_1)))));
    var var_3 = false;
    return vec2<i32>(-23119i, _wgslsmith_sub_i32(var_0.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_0.c, var_0.c, 1i), ~var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1459f, -375f, 1000f))))))));
    let var_1 = ~_wgslsmith_clamp_vec2_i32(~func_1(), vec2<i32>(_wgslsmith_add_i32(2147483647i, -u_input.a), -u_input.a), select(reverseBits(vec2<i32>(5375i, -1i)), vec2<i32>(1i, 0i), true) << ((u_input.c.yy | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.c.wz)) % vec2<u32>(32u)));
    var var_2 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(!func_3(true, Struct_2(Struct_1(true), -2147483647i, vec2<bool>(true, true)), true), true, !(1748f >= var_0.x)), firstTrailingBit(var_1.x) > u_input.a, !(all(vec3<bool>(false, false, false)) && func_3(false, Struct_2(Struct_1(true), var_1.x, vec2<bool>(false, true)), true))), vec4<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), -var_1.x <= (i32(-1i) * -13384i), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.x), vec4<i32>(u_input.a, -9060i, var_1.x, u_input.a)) <= u_input.a) & true, select(-1193f <= var_0.x, func_3(false, Struct_2(Struct_1(true), -1i, vec2<bool>(true, true)), false) || true, true)));
    var var_3 = -max(var_1.x, 24826i);
    let var_4 = Struct_3(Struct_1(var_2.x), func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 1408f, 487f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1052f, -912f, var_0.x))))), func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f) + vec4<f32>(var_0.x, 1831f, 1891f, var_0.x)), vec4<f32>(869f, var_0.x, var_0.x, var_0.x)))).b).a, countOneBits(u_input.a), max((vec4<i32>(39020i, -5758i, -3215i, -2147483647i) ^ vec4<i32>(var_1.x, -2147483647i, -85266i, -1i)) >> (vec4<u32>(u_input.d, u_input.c.x, 1u, u_input.d) % vec4<u32>(32u)), -(vec4<i32>(0i, var_1.x, var_1.x, u_input.a) ^ vec4<i32>(2147483647i, 2147483647i, 1i, u_input.a))) | (select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_1.x, -439i), vec4<i32>(u_input.a, 1i, u_input.a, -1i)), vec4<i32>(var_1.x, var_1.x, var_1.x, 3136i), u_input.c.x >= u_input.d) ^ -vec4<i32>(-28456i, var_1.x, u_input.a, u_input.a)), ~4294967295u);
    let var_5 = -vec2<i32>(0i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(var_1.x & -9685i, var_4.c)), _wgslsmith_mult_vec2_i32(var_4.d.xy, abs(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, var_5.x))))), 70412u, _wgslsmith_f_op_vec3_f32(var_0 - var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(576f, var_0.x, 974f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0, var_0), vec3<f32>(-1676f, var_0.x, var_0.x))), all(vec4<bool>(var_4.b.a, true, false, var_2.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(1661f, var_0.x, 263f)), var_2.wzy)))));
}

