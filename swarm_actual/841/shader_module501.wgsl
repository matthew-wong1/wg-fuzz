struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(29022u, _wgslsmith_mult_u32(u_input.c, 46187u), countOneBits(u_input.c), u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 21727u, 1u, u_input.c), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 1624u)), ~4294967295u, ~u_input.c, ~u_input.c) >> (~(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) | vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    global0 = -943f;
    let var_1 = Struct_2(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(!any(vec2<bool>(true, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !all(vec3<bool>(true, true, true))), u_input.b <= u_input.a), ~(-vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 2791i), arg_0, u_input.a)), vec3<i32>(0i, -1i, -928i), vec2<bool>(true, all(vec2<bool>(all(vec3<bool>(true, true, true)), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1200f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1208f + 933f))), _wgslsmith_f_op_f32(f32(-1f) * -2141f), -218f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.e.wwz), var_1.e.xzx, select(select(vec3<bool>(var_1.a.x | var_1.d.x, all(vec2<bool>(false, var_1.a.x)), !var_1.d.x), select(vec3<bool>(var_1.a.x, var_1.d.x, var_1.d.x), !vec3<bool>(var_1.a.x, false, var_1.d.x), var_1.a), select(!var_1.d.x, var_1.d.x, false)), select(vec3<bool>(false, true, true), select(select(vec3<bool>(var_1.a.x, var_1.d.x, true), vec3<bool>(true, var_1.d.x, var_1.a.x), false), select(var_1.a, vec3<bool>(var_1.d.x, true, var_1.a.x), var_1.a.x), var_1.a), all(vec2<bool>(var_1.a.x, false))), !select(var_1.a.x, all(var_1.d), var_1.d.x))));
    let var_3 = var_1;
    return (_wgslsmith_sub_u32(select(min(0u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(0u, 0u)), !var_1.a.x), ~_wgslsmith_div_u32(1u, var_0.x)) | 4294967295u) & countOneBits(78504u);
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(-1i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1284f, 625f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-229f)), _wgslsmith_f_op_f32(159f - -1510f)))) + 571f);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(319f)), 656f)), 935f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -704f))))), -567f));
    var var_2 = Struct_3(var_1, 1u, Struct_2(select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, false, true))), vec3<bool>(any(vec2<bool>(false, false)), true, any(vec2<bool>(true, false))), vec3<bool>(true, true, true)), vec3<i32>(countOneBits(abs(u_input.a)), 2147483647i, -1i), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, 66592i, u_input.b)), vec3<i32>(u_input.b, 42208i, u_input.b) ^ vec3<i32>(-80459i, u_input.a, u_input.b)), abs(-32255i), i32(-1i) * -2147483647i), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(var_1.a.x * -324f), -659f, _wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1158f, var_1.a.x, var_1.a.x) + vec4<f32>(840f, -877f, -167f, 1000f))))));
    var var_3 = vec3<i32>(-1i) * -abs(_wgslsmith_add_vec3_i32(var_2.c.c, _wgslsmith_sub_vec3_i32(var_2.c.b, var_2.c.c)));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(arg_0, arg_1.a.x, 579f))))), 37890u, Struct_2(!select(select(arg_3.c.a, arg_3.c.a, false), select(vec3<bool>(false, arg_3.c.d.x, arg_3.c.d.x), arg_3.c.a, true), vec3<bool>(arg_3.c.a.x, false, false)), vec3<i32>(-50233i, ~(0i | u_input.a), -1i), arg_3.c.b, !arg_3.c.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.a.a.x + arg_1.a.x), arg_1.a.x, -1000f, 1713f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.c.e + vec4<f32>(arg_0, arg_3.c.e.x, -1015f, 174f)) - _wgslsmith_f_op_vec4_f32(abs(arg_3.c.e))))));
    let var_1 = -16946i;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x + arg_0) * _wgslsmith_div_f32(arg_3.a.a.x, -148f)), func_2().a.x, _wgslsmith_f_op_f32(-var_0.c.e.x)))));
    var_2 = arg_3.c.e;
    var var_3 = var_2.zzy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().a.x * -518f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-559f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(~vec2<i32>(max(1i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.b)) << (max(vec2<u32>(u_input.c, u_input.c), ~(~vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(143f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1605f) - -417f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-557f, -173f, false)) + _wgslsmith_f_op_f32(175f + 1110f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1312f, -1096f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f * -737f) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-143f, 154f, -914f), vec3<f32>(-1870f, 614f, -1357f), vec3<bool>(false, true, false)))), countOneBits(vec4<i32>(var_0.x, u_input.b, u_input.b, var_0.x) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), Struct_3(func_2(), 26268u, Struct_2(vec3<bool>(false, true, true), vec3<i32>(u_input.b, var_0.x, -62788i), vec3<i32>(-1140i, -1i, var_0.x), vec2<bool>(false, false), vec4<f32>(-281f, 941f, -829f, -101f))))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(681f * 1332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1077f)))))));
    let var_1 = 0i;
    let var_2 = vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.x == var_1), false)), false, false);
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !(!vec4<bool>(true, arg_1.c.a.x, true, any(select(vec3<bool>(arg_3.d.x, arg_3.a.x, false), vec3<bool>(true, true, arg_1.c.a.x), arg_1.c.a.x))));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = select(select(!var_1.c.a, arg_1.c.a, var_1.c.a), select(var_1.c.a, !var_1.c.a, var_1.c.a), arg_1.c.d.x | all(!select(arg_1.c.a.yz, arg_1.c.d, var_0.zx)));
    var var_3 = var_1.a;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(trunc(112f))));
    global0 = 1486f;
    var var_0 = func_5(43419u, Struct_3(func_1(), 30324u, Struct_2(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(true, true, true, false))), _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 15641i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), reverseBits(vec3<i32>(u_input.a, -2147483647i, u_input.b)), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(floor(1008f)), _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(select(-830f, 1079f, false)), -300f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - 685f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))), 846f), Struct_2(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), min(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -53420i, u_input.b), ~vec3<i32>(u_input.b, 27506i, u_input.a) << (vec3<u32>(0u, 66665u, u_input.c) % vec3<u32>(32u))), firstTrailingBit(firstLeadingBit(~vec3<i32>(u_input.a, 34101i, u_input.a))), !vec2<bool>(all(vec2<bool>(false, true)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 684f, 191f, 1285f), vec4<f32>(1016f, 1000f, -1202f, 2237f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(464f, 437f, 714f, 502f))))))));
    var var_1 = u_input.c;
    let var_2 = -1474i;
    let var_3 = !vec4<bool>(select(true, var_0.d.x, var_0.d.x), false, any(func_5(firstLeadingBit(u_input.c), Struct_3(Struct_1(var_0.e.ywz), u_input.c, Struct_2(vec3<bool>(true, var_0.a.x, false), var_0.c, vec3<i32>(u_input.a, var_2, 14005i), vec2<bool>(var_0.d.x, var_0.d.x), var_0.e)), var_0.e.wy, func_5(0u, Struct_3(Struct_1(var_0.e.zzx), 57053u, Struct_2(vec3<bool>(true, var_0.d.x, true), vec3<i32>(53284i, var_0.b.x, u_input.b), var_0.b, var_0.a.yz, vec4<f32>(167f, var_0.e.x, -700f, -468f))), var_0.e.xz, Struct_2(var_0.a, vec3<i32>(-11977i, var_0.b.x, 42465i), var_0.c, vec2<bool>(var_0.a.x, var_0.d.x), var_0.e))).a.xy), func_5(14580u, Struct_3(Struct_1(var_0.e.zzw), u_input.c, Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, var_0.d.x), vec3<i32>(u_input.a, var_0.b.x, -15711i), var_0.c, vec2<bool>(true, var_0.d.x), vec4<f32>(var_0.e.x, 424f, var_0.e.x, var_0.e.x))), vec2<f32>(107f, _wgslsmith_f_op_f32(floor(-194f))), Struct_2(func_5(u_input.c, Struct_3(Struct_1(vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)), u_input.c, Struct_2(var_0.a, vec3<i32>(4835i, 2147483647i, var_0.c.x), var_0.b, var_0.d, var_0.e)), var_0.e.ww, Struct_2(vec3<bool>(var_0.a.x, var_0.d.x, var_0.a.x), vec3<i32>(-31552i, var_2, var_0.c.x), vec3<i32>(1i, var_2, -38801i), vec2<bool>(true, var_0.a.x), vec4<f32>(var_0.e.x, var_0.e.x, 1796f, -868f))).a, max(var_0.b, var_0.b), min(var_0.b, var_0.c), func_5(u_input.c, Struct_3(Struct_1(vec3<f32>(-323f, var_0.e.x, -833f)), u_input.c, Struct_2(var_0.a, vec3<i32>(-1i, u_input.b, var_2), vec3<i32>(var_2, var_0.b.x, u_input.a), vec2<bool>(var_0.a.x, false), var_0.e)), var_0.e.ww, Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<i32>(2147483647i, -27324i, -1i), var_0.c, var_0.a.yz, var_0.e)).d, vec4<f32>(var_0.e.x, var_0.e.x, 647f, var_0.e.x))).a.x);
    var_1 = _wgslsmith_div_u32(~abs(u_input.c), abs(~1u));
    var_1 = max(54700u, u_input.c);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e.xwz), _wgslsmith_f_op_vec3_f32(-var_0.e.wzz)) + _wgslsmith_f_op_vec3_f32(floor(func_5(70562u, Struct_3(Struct_1(var_0.e.zzx), 1u, Struct_2(vec3<bool>(true, var_0.d.x, true), vec3<i32>(var_2, -19335i, 19270i), var_0.b, vec2<bool>(var_3.x, var_3.x), var_0.e)), _wgslsmith_f_op_vec2_f32(ceil(var_0.e.zy)), func_5(u_input.c, Struct_3(Struct_1(var_0.e.zzz), 64509u, Struct_2(var_0.a, vec3<i32>(u_input.a, -2147483647i, 0i), var_0.b, vec2<bool>(var_0.a.x, false), vec4<f32>(-1000f, -839f, var_0.e.x, var_0.e.x))), var_0.e.xx, Struct_2(var_3.ywy, var_0.b, var_0.b, var_0.a.yx, vec4<f32>(var_0.e.x, var_0.e.x, 225f, var_0.e.x)))).e.wxx))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(max(_wgslsmith_dot_vec2_i32(var_0.c.yx, var_0.b.xx), var_2), firstLeadingBit(-1i), firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, -1i, 4472i)), -var_0.c.x)), -2628i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.e.xz))));
}

