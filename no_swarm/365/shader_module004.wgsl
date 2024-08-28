struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec4<i32>(2147483647i, 16934i, i32(-2147483648), 48615i), Struct_3(Struct_1(74737u, 0u, -353f, vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, 79038u, 1000f, vec3<bool>(false, true, true)), -1i, -636f, -61896i, false)), vec2<i32>(i32(-2147483648), 1i), i32(-2147483648)), Struct_4(vec4<i32>(14386i, -32688i, 0i, i32(-2147483648)), Struct_3(Struct_1(6308u, 11847u, 316f, vec3<bool>(false, false, true)), Struct_2(Struct_1(57208u, 4294967295u, 792f, vec3<bool>(false, true, false)), 0i, 484f, 0i, false)), vec2<i32>(-1i, i32(-2147483648)), 0i), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -14006i, 0i), Struct_3(Struct_1(0u, 58105u, 1088f, vec3<bool>(true, true, false)), Struct_2(Struct_1(41156u, 4294967295u, 2159f, vec3<bool>(true, false, false)), 2147483647i, -1211f, i32(-2147483648), false)), vec2<i32>(-2491i, -28888i), -1i), Struct_4(vec4<i32>(1i, 0i, 0i, -8696i), Struct_3(Struct_1(4294967295u, 454u, -136f, vec3<bool>(false, true, false)), Struct_2(Struct_1(47647u, 0u, 788f, vec3<bool>(true, false, true)), -35175i, -1239f, 173i, true)), vec2<i32>(2147483647i, -1i), -54371i), Struct_4(vec4<i32>(2147483647i, 14531i, 0i, -73827i), Struct_3(Struct_1(9465u, 21295u, 1788f, vec3<bool>(false, false, false)), Struct_2(Struct_1(1u, 0u, 576f, vec3<bool>(false, false, true)), 1i, -1000f, 2147483647i, true)), vec2<i32>(360i, 30880i), 2147483647i), Struct_4(vec4<i32>(-38508i, 1i, -25687i, 10203i), Struct_3(Struct_1(1u, 4294967295u, 783f, vec3<bool>(true, false, false)), Struct_2(Struct_1(33596u, 14371u, 1183f, vec3<bool>(true, false, false)), i32(-2147483648), 724f, 2147483647i, true)), vec2<i32>(i32(-2147483648), -59945i), -21722i), Struct_4(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_3(Struct_1(0u, 1u, 1392f, vec3<bool>(true, false, true)), Struct_2(Struct_1(1u, 70977u, -219f, vec3<bool>(false, true, false)), 45244i, 526f, 5170i, true)), vec2<i32>(-34585i, 44278i), -44288i), Struct_4(vec4<i32>(-18744i, -22702i, -1481i, 2147483647i), Struct_3(Struct_1(0u, 10598u, 2418f, vec3<bool>(false, true, false)), Struct_2(Struct_1(0u, 14577u, 1000f, vec3<bool>(false, true, false)), -32163i, -192f, i32(-2147483648), false)), vec2<i32>(-14760i, -1i), -49744i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = vec4<bool>(all(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, any(vec3<bool>(arg_2, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(arg_2, true), true))), arg_2, !all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, true, arg_2), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, false), false))), all(vec4<bool>(!(!arg_2), false, true, true)));
    var var_1 = Struct_2(Struct_1(0u, _wgslsmith_div_u32(max(0u, 0u), 57385u), _wgslsmith_f_op_f32(866f + _wgslsmith_f_op_f32(f32(-1f) * -505f)), vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, false)), true, ~4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31023u), vec2<u32>(114536u, 4294967295u)))), _wgslsmith_clamp_i32(arg_0.x ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, arg_0.x)), -33614i), arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1279f, 580f)) - _wgslsmith_f_op_f32(396f + -838f))))), ~abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, u_input.a.x), arg_1.x ^ arg_1.x, -2230i)), false);
    var var_2 = -1013f;
    var_1 = Struct_2(var_1.a, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c + var_1.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1051f))), 0i, var_0.x);
    let var_3 = ~(~(~firstTrailingBit(var_1.a.b)));
    return _wgslsmith_f_op_f32(max(var_1.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) - var_1.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c + 1000f) * -1465f) * _wgslsmith_div_f32(-1000f, -503f)))));
}

fn func_2() -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(185f * _wgslsmith_f_op_f32(177f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2557f) - _wgslsmith_f_op_f32(func_3(u_input.a.yz, vec2<i32>(u_input.a.x, 1i), true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(f32(-1f) * -328f)))))), -394f, _wgslsmith_f_op_f32(ceil(-976f)));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f + _wgslsmith_div_f32(408f, 233f)) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(func_3(u_input.a.wz, min(~vec2<i32>(u_input.a.x, 30407i), ~vec2<i32>(0i, 0i)), any(vec3<bool>(true, true, true)))), -677f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(382f, 198f, -2021f, -841f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -351f, -1000f, 965f), vec4<f32>(-1166f, 893f, 1000f, -326f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1033f, -892f, -903f, 1000f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(275f, 731f)), -562f), _wgslsmith_f_op_f32(854f - -344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1175f)));
    var var_1 = Struct_1(0u >> (_wgslsmith_sub_u32(firstTrailingBit(3469u) | 0u, arg_0) % 32u), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(33293u, arg_0), 4294967295u ^ arg_0), ~(~(~arg_0)), 17817u), -908f, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), any(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~firstTrailingBit(u_input.a.x), 1i | u_input.a.x, 1i), vec3<i32>(u_input.a.x, -abs(u_input.a.x), -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), firstLeadingBit(u_input.a.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1183f, -1818f, 545f) - vec4<f32>(var_0.x, -1155f, -1619f, var_0.x))), vec4<f32>(var_0.x, -1044f, var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    global0 = max((reverseBits(0u) << (0u % 32u)) & ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(2445u, 50930u, 81285u)), ~vec3<u32>(3573u, var_1.b, arg_0)), ~(~5746u));
    return _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(85661u, arg_0) >> (~countOneBits(4294967295u) % 32u), 3623u ^ var_1.a), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(arg_0, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 8>();
    global0 = _wgslsmith_mod_u32(~0u, func_1(19456u));
    global1 = func_1(~0u);
    global0 = 99031u;
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), all(vec2<bool>(false, true)) & true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1u, -(u_input.a.x | firstTrailingBit(2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, firstLeadingBit(-2147483647i)), vec2<i32>(-abs(0i), u_input.a.x)));
}

