struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-(vec3<i32>(-10468i, -7319i, -1i) ^ vec3<i32>(-2147483647i, u_input.a, u_input.a)), abs(max(vec3<i32>(u_input.a, u_input.d, u_input.d), vec3<i32>(10820i, -54379i, u_input.e)))), -_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-2147483647i, u_input.e, -1i), vec3<i32>(-2147483647i, u_input.a, -34223i)), vec3<i32>(u_input.e, -2147483647i, -33100i), vec3<i32>(1i, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.b.x, arg_0.a.x, 4294967295u) % vec3<u32>(32u)))) & (_wgslsmith_mod_vec3_i32(vec3<i32>(-19971i, -17148i, u_input.a), vec3<i32>(-u_input.d, u_input.e, _wgslsmith_mult_i32(u_input.a, u_input.c.x))) | (~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 33569i, u_input.c.x), vec3<i32>(u_input.c.x, -1i, -12022i)) >> (countOneBits(vec3<u32>(4294967295u, 1u, global1.x)) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1029f))), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(f32(-1f) * -1720f));
    global0 = true;
    let var_2 = false;
    var var_3 = Struct_1(vec4<u32>(max(0u, ~global1.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(58663u), u_input.b.x & 4294967295u), 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.b.x, 64895u), arg_0.a)), _wgslsmith_dot_vec4_u32(max(arg_0.a, vec4<u32>(47555u, 36696u, 9084u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.b.x, 36452u), ~vec4<u32>(global1.x, u_input.b.x, u_input.b.x, 75213u))), u_input.b.x));
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(819f - var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = arg_1;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, _wgslsmith_f_op_f32(-arg_0.x), 638f, -541f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, arg_0.x, -347f, -270f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)), -887f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), -1703f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * 1035f))), arg_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(129f, arg_0.x, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2418f, 771f, -1511f, arg_0.x)))))));
    var var_3 = arg_2;
    let var_4 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(firstLeadingBit(u_input.c.x), -var_1.x, i32(-1i) * -2147483647i), -(~vec3<i32>(u_input.d, var_1.x, var_1.x)), select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, arg_3, arg_3), arg_3))) & -(select(vec3<i32>(2147483647i, u_input.a, u_input.d), vec3<i32>(u_input.d, 12442i, 1i), false) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(21311u, global1.x, 21460u), vec3<u32>(61084u, 16105u, arg_2.a.x)) % vec3<u32>(32u))), vec3<i32>(u_input.e, -24061i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(20664i, var_1.x)))));
    return ~(var_1.x & 1i);
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(~4294967295u, reverseBits(u_input.b.x)), global1.x, ~(u_input.b.x | (global1.x >> (u_input.b.x % 32u)))));
    let var_1 = vec4<i32>(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.a))), Struct_1(var_0.a), Struct_1(abs(var_0.a)), true), firstLeadingBit(-(~(-35045i))), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(-52249i, u_input.d), -1i), abs(-(i32(-1i) * -33087i))) << (var_0.a % vec4<u32>(32u));
    global1 = ~_wgslsmith_add_vec2_u32(var_0.a.yz, ~var_0.a.ww);
    global1 = ~vec2<u32>(47622u, 60870u);
    let var_2 = Struct_1(max(vec4<u32>(u_input.b.x, u_input.b.x, 2255u, _wgslsmith_mult_u32(var_0.a.x, var_0.a.x)), vec4<u32>(~(~1u), 28147u, 52548u, abs(u_input.b.x))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1744f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -436f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-216f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, -1372f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(922f, -773f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, -652f) + vec2<f32>(1411f, 782f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(-113f));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-313f, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(1549f, -838f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-878f, -1000f), vec2<f32>(-486f, -1030f), false))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -420f) + vec2<f32>(-1134f, 1463f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 2316f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0)))));
    var var_2 = arg_0;
    var var_3 = vec2<u32>(max(global1.x, _wgslsmith_mod_u32(global1.x, var_2.a.x) & max(arg_0.a.x, var_2.a.x)), u_input.b.x) ^ vec2<u32>(~(~27509u), ~_wgslsmith_dot_vec2_u32(var_2.a.zw << (arg_1.a.wx % vec2<u32>(32u)), vec2<u32>(45122u, 68396u)));
    var var_4 = !any(vec3<bool>(true, true, true));
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = arg_2.a.xw | ~_wgslsmith_div_vec2_u32(~(~arg_1.a.wy), _wgslsmith_add_vec2_u32(arg_2.a.xz, countOneBits(u_input.b)));
    let var_0 = select(firstTrailingBit(vec2<u32>(abs(4294967295u), global1.x)), arg_1.a.zw, false);
    var var_1 = vec4<u32>(~arg_1.a.x, arg_3, _wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global1.x), var_0)), arg_2.a.zw << (_wgslsmith_mod_vec2_u32(~arg_1.a.xx, arg_2.a.wz) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(32573u, arg_3), ~max(vec2<u32>(var_0.x, arg_2.a.x), var_0) | var_0));
    var var_2 = 4294967295u;
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(~var_1.x, ~(~7170u)), 55750u ^ arg_2.a.x, u_input.b.x, var_1.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-902f, 191f)) + _wgslsmith_f_op_f32(max(1000f, -2058f))) * 184f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, _wgslsmith_f_op_f32(ceil(145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1206f)) - _wgslsmith_f_op_f32(-1070f - 339f)), _wgslsmith_f_op_f32(ceil(-424f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), -157f, _wgslsmith_f_op_f32(1078f + 1000f), _wgslsmith_f_op_f32(856f + 629f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1265f, -196f, -1450f, 1184f), vec4<f32>(-1000f, 745f, 1428f, -1947f)))))))), true));
    let var_2 = func_5(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), func_1(Struct_1(vec4<u32>(4294967295u, 279u, u_input.b.x, 1u)), Struct_1(vec4<u32>(global1.x, u_input.b.x, 0u, 13791u))), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, 0u != global1.x, true)), Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, u_input.b.x, 4294967295u, u_input.b.x) & vec4<u32>(global1.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(4294967295u, 0u, u_input.b.x, global1.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(35232u, global1.x, global1.x, 0u), vec4<u32>(32314u, u_input.b.x, 1u, 18733u), vec4<u32>(global1.x, 1u, 4294967295u, 1u)))), Struct_1(vec4<u32>(select(0u, u_input.b.x & global1.x, func_1(Struct_1(vec4<u32>(0u, global1.x, u_input.b.x, 4294967295u)), Struct_1(vec4<u32>(global1.x, global1.x, u_input.b.x, 12556u))).x), firstLeadingBit(u_input.b.x), ~_wgslsmith_mod_u32(28860u, u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.x, 1u), ~global1.x))), ~(~firstLeadingBit(_wgslsmith_mult_u32(66839u, global1.x))));
    let var_3 = 2147483647i;
    global2 = !any(vec3<bool>(true, true, !any(vec3<bool>(true, true, false))));
    global2 = var_1.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.x)), -1019f)))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yy + var_1.ww))), var_2.a.x, var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -229f, 428f))) + var_1.wwx)) * vec3<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, -1154f), var_1.x)));
}

