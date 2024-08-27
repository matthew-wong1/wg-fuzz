struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(752f, 455f, 472f, 611f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = reverseBits(vec2<i32>(i32(-1i) * -38440i, arg_3));
    let var_1 = max(~_wgslsmith_div_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(arg_0.c.c, vec3<u32>(0u, 32501u, arg_0.a.c.x))), u_input.a);
    var var_2 = arg_0.a.a.x;
    let var_3 = vec2<bool>(all(select(select(arg_1.b, vec3<bool>(false, arg_2, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, arg_2), arg_1.b, arg_2), true | arg_0.b.x)) || arg_2, firstTrailingBit(_wgslsmith_mod_u32(~arg_1.c.c.x, _wgslsmith_mod_u32(arg_0.a.c.x, u_input.a))) != arg_0.a.c.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, -1760f, arg_1.a.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(min(-1205f, 1041f)))))));
    return Struct_1(select(!(!arg_0.c.a), vec2<bool>(true, !arg_0.a.a.x), arg_1.c.a.x | !arg_0.a.a.x), -35260i, vec3<u32>(~reverseBits(reverseBits(arg_1.c.c.x)), _wgslsmith_mod_u32(~(arg_0.a.c.x | arg_1.c.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.c.x, 1u, var_1, 1u), reverseBits(vec4<u32>(u_input.a, 10118u, u_input.a, 0u)))), 1u), _wgslsmith_f_op_f32(-arg_0.c.d), ~min(select(vec4<i32>(arg_3, 0i, -13260i, u_input.b), vec4<i32>(20194i, -50378i, 2147483647i, arg_0.a.b) >> (vec4<u32>(30486u, 1050u, arg_0.c.c.x, var_1) % vec4<u32>(32u)), true || arg_0.a.a.x), vec4<i32>(0i, -1i >> (var_1 % 32u), ~arg_3, var_0.x)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> bool {
    var var_0 = select(select(vec3<bool>(true, arg_1.a.a.x, true), !vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, false), select(select(!arg_0.a.b, vec3<bool>(true, arg_1.b.x, arg_0.a.c.a.x), !arg_1.b.x), arg_1.b, true & arg_0.a.b.x)), vec3<bool>(all(arg_1.b), true, !(!(false & arg_0.a.b.x))), arg_0.a.b);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 19793u, 61654u, arg_0.a.a.c.x), vec4<u32>(1142u, 23894u, 0u, arg_0.a.c.c.x))), ~(~u_input.a)) ^ vec2<u32>(arg_0.a.a.c.x, arg_1.a.c.x), vec2<u32>(arg_1.a.c.x, countOneBits(70440u)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-472f, _wgslsmith_f_op_f32(ceil(-265f)), global0.x, -345f), vec4<f32>(-1157f, global0.x, _wgslsmith_f_op_f32(1000f * -423f), _wgslsmith_f_op_f32(536f - arg_0.a.a.d))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, arg_1.a.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.d, -278f, 294f, 2131f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1451f, arg_0.a.c.d, -474f, -322f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.d, arg_1.a.d, arg_0.a.a.d, global0.x) + vec4<f32>(arg_1.a.d, -1000f, 283f, arg_1.a.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, arg_1.a.d, arg_0.a.c.d, 1062f) * vec4<f32>(-524f, global0.x, 722f, -1000f))))) * vec4<f32>(func_1(Struct_3(func_1(Struct_3(arg_0.a.c, arg_0.a.b, Struct_1(vec2<bool>(true, false), u_input.b, arg_0.a.a.c, global0.x, arg_0.a.c.e)), arg_0.a, arg_0.a.b.x, 1i), select(vec3<bool>(true, arg_1.a.a.x, arg_0.a.b.x), arg_0.a.b, arg_1.b), Struct_1(vec2<bool>(var_0.x, false), arg_0.a.c.b, arg_1.a.c, -1695f, vec4<i32>(arg_1.a.b, arg_1.a.e.x, arg_0.a.a.e.x, u_input.b))), arg_0.a, true || all(vec4<bool>(arg_0.a.b.x, var_0.x, arg_0.a.b.x, arg_0.a.b.x)), arg_1.a.e.x).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.d)) + global0.x)), arg_0.a.a.d, _wgslsmith_f_op_f32(max(-196f, func_1(Struct_3(Struct_1(arg_1.b.zy, -59036i, arg_1.a.c, arg_0.a.a.d, arg_0.a.a.e), arg_1.b, Struct_1(vec2<bool>(false, true), -1i, vec3<u32>(18611u, 25682u, 117787u), arg_1.a.d, vec4<i32>(arg_0.a.c.e.x, 10860i, -1i, 2147483647i))), arg_0.a, !var_0.x, -2147483647i).d))));
    var_0 = arg_0.a.b;
    return all(!(!vec4<bool>(!var_0.x, all(vec4<bool>(arg_0.a.a.a.x, var_0.x, arg_0.a.c.a.x, arg_1.b.x)), all(vec3<bool>(arg_1.a.a.x, false, true)), false)));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: u32) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, arg_0.a.c.d, 354f, -102f), vec4<f32>(arg_0.a.c.d, -1000f, 756f, arg_0.a.a.d))))), vec4<f32>(-1319f, arg_0.a.c.d, 1101f, arg_0.a.c.d)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1135f, _wgslsmith_f_op_f32(floor(global0.x)), -996f, _wgslsmith_f_op_f32(arg_0.a.a.d + -747f)), vec4<f32>(_wgslsmith_div_f32(global0.x, -346f), _wgslsmith_div_f32(global0.x, -1592f), arg_0.a.a.d, _wgslsmith_f_op_f32(-arg_0.a.a.d)), !all(arg_0.a.a.a))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(429f, arg_0.a.c.d, 836f, 100f) - vec4<f32>(arg_0.a.a.d, global0.x, 185f, arg_0.a.a.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, arg_0.a.c.d, arg_0.a.a.d, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-598f, -1057f, -422f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.c.d, arg_0.a.c.d, arg_0.a.c.d, arg_0.a.c.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(1765f, arg_0.a.a.d, global0.x, global0.x) - vec4<f32>(-438f, arg_0.a.c.d, 1000f, -413f))))))));
    let var_0 = vec2<f32>(-384f, 805f);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(sign(var_0)))));
    let var_2 = Struct_2(vec3<u32>(22159u, ~firstLeadingBit(~13235u), arg_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.wxw + vec3<f32>(582f, -554f, var_0.x)))))));
    return 4764u;
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, _wgslsmith_f_op_f32(-1580f - -1330f), -1594f, -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1500f, arg_2.d, 1000f, arg_2.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(712f, global0.x, 500f, arg_3.d) - vec4<f32>(arg_2.d, -255f, 198f, 956f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 209f, 850f, 656f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.c.d, arg_2.d, -265f, 2205f), vec4<f32>(arg_0.a.a.d, arg_2.d, -424f, -1164f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, -1271f, 486f, arg_0.a.c.d) - vec4<f32>(1000f, -603f, global0.x, arg_0.a.a.d)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-455f, arg_2.d, arg_2.d, -1330f), vec4<f32>(arg_3.d, 1903f, 1206f, global0.x), true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(636f, -354f, global0.x, -226f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.d, arg_3.d, 786f, 309f), vec4<f32>(arg_3.d, -123f, arg_3.d, 1545f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.d, arg_0.a.c.d, 1000f, 1569f) * vec4<f32>(-448f, 1015f, 862f, arg_2.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.d, 1929f, arg_2.d, 1690f))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1360f, func_1(arg_0.a, Struct_3(Struct_1(arg_0.a.b.yx, -11048i, vec3<u32>(15301u, arg_0.a.c.c.x, 0u), arg_2.d, vec4<i32>(arg_3.e.x, arg_0.a.a.b, arg_2.e.x, arg_2.b)), arg_0.a.b, func_1(arg_0.a, arg_0.a, true, arg_2.b)), true, (arg_0.a.a.e.x ^ arg_3.e.x) << (_wgslsmith_sub_u32(arg_0.a.a.c.x, arg_3.c.x) % 32u)).d, _wgslsmith_f_op_f32(f32(-1f) * -575f), arg_2.d));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, _wgslsmith_f_op_f32(f32(-1f) * -603f), 1000f, arg_3.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, global0.x, global0.x, -804f) * vec4<f32>(arg_3.d, -1648f, arg_3.d, -363f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, arg_2.d, -282f, arg_3.d))))));
    let var_0 = func_1(arg_0.a, arg_0.a, all(!arg_0.a.b), arg_2.e.x);
    var var_1 = vec4<u32>(37774u, max(func_4(Struct_5(arg_0.a), 85416u, func_3(Struct_5(Struct_3(var_0, arg_0.a.b, Struct_1(vec2<bool>(arg_2.a.x, arg_3.a.x), u_input.b, vec3<u32>(11865u, 13291u, 32714u), arg_3.d, vec4<i32>(-27247i, 11761i, arg_2.b, -1i)))), Struct_4(arg_0.a.c, vec3<bool>(false, false, var_0.a.x))), _wgslsmith_add_u32(var_0.c.x, arg_0.a.c.c.x | arg_3.c.x)), 4294967295u), ~(~_wgslsmith_add_u32(func_4(arg_0, 939u, false, arg_0.a.c.c.x), _wgslsmith_div_u32(arg_0.a.a.c.x, arg_0.a.c.c.x))), ~(func_1(Struct_3(Struct_1(arg_3.a, var_0.b, vec3<u32>(4294967295u, arg_2.c.x, arg_3.c.x), 639f, arg_0.a.a.e), vec3<bool>(false, arg_1, arg_0.a.a.a.x), arg_2), Struct_3(Struct_1(arg_0.a.c.a, 2147483647i, vec3<u32>(117750u, 31495u, arg_2.c.x), 2417f, vec4<i32>(arg_3.b, arg_3.b, arg_2.b, -1i)), arg_0.a.b, Struct_1(var_0.a, 37088i, arg_0.a.c.c, 138f, vec4<i32>(arg_3.e.x, -20132i, u_input.b, -2147483647i))), arg_1, _wgslsmith_clamp_i32(arg_0.a.c.e.x, -49730i, u_input.b)).c.x << (_wgslsmith_div_u32(var_0.c.x ^ arg_0.a.c.c.x, ~0u) % 32u)));
    return Struct_1(vec2<bool>(0u != ~var_1.x, any(vec3<bool>(func_1(arg_0.a, Struct_3(var_0, vec3<bool>(false, var_0.a.x, arg_1), Struct_1(arg_2.a, -17427i, arg_2.c, arg_2.d, vec4<i32>(-2147483647i, -16742i, var_0.b, u_input.b))), true, var_0.e.x).a.x, func_1(arg_0.a, arg_0.a, false, 37377i).a.x, 507f == global0.x))), 1i, arg_0.a.a.c, var_0.d, vec4<i32>(max(_wgslsmith_mult_i32(var_0.e.x >> (arg_2.c.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(831i, -1i, arg_2.e.x, 2147483647i), arg_2.e)), -_wgslsmith_mod_i32(arg_0.a.a.e.x, arg_0.a.c.e.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(43406i, 2147483647i, 1i), arg_0.a.a.e.x ^ arg_3.e.x), ~u_input.b), _wgslsmith_mult_i32(countOneBits(0i), arg_3.e.x), i32(-1i) * -1850i));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_5(Struct_3(arg_3, select(vec3<bool>(false, all(vec3<bool>(false, arg_3.a.x, arg_3.a.x)), true), vec3<bool>(!arg_3.a.x, arg_3.a.x, true & arg_3.a.x), func_2(Struct_5(Struct_3(arg_3, vec3<bool>(arg_3.a.x, arg_3.a.x, false), Struct_1(vec2<bool>(true, arg_3.a.x), u_input.b, arg_3.c, -418f, arg_3.e))), arg_3.a.x, arg_3, arg_3).c.x <= reverseBits(arg_3.c.x)), arg_3));
    let var_1 = Struct_4(func_2(Struct_5(Struct_3(arg_3, vec3<bool>(true, false, false), Struct_1(vec2<bool>(arg_3.a.x, true), -2147483647i, var_0.a.c.c, 184f, vec4<i32>(-38344i, -1i, -2147483647i, -3825i)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a.c.x, 0u), arg_3.c.yx), 2049u) != select(1u, ~1u, true), arg_3, func_2(Struct_5(var_0.a), !(!var_0.a.b.x), arg_3, arg_3)), !var_0.a.b);
    var_0 = Struct_5(Struct_3(Struct_1(select(var_1.a.a, func_1(var_0.a, var_0.a, var_0.a.c.a.x, 2147483647i).a, func_2(Struct_5(var_0.a), var_1.a.a.x, var_0.a.a, var_1.a).a), _wgslsmith_mod_i32(arg_2.x, -1i), var_1.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.d * var_0.a.c.d))), firstLeadingBit(-arg_3.e)), !select(!vec3<bool>(true, var_0.a.c.a.x, true), vec3<bool>(var_0.a.a.a.x, true, arg_3.a.x), !var_1.b.x), Struct_1(select(func_1(var_0.a, Struct_3(Struct_1(vec2<bool>(true, false), arg_3.e.x, var_1.a.c, 1000f, vec4<i32>(u_input.b, var_0.a.a.e.x, arg_3.e.x, -2147483647i)), vec3<bool>(true, false, var_1.a.a.x), var_1.a), arg_3.a.x, 6539i).a, vec2<bool>(false, false), arg_3.a.x), u_input.b, var_0.a.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), var_0.a.c.e)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d, 409f, arg_0.b.x, arg_1) + vec4<f32>(-2127f, arg_0.b.x, 1000f, -841f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(781f, -143f, 645f, 482f)))))))), false));
    var var_2 = Struct_4(func_1(Struct_3(Struct_1(vec2<bool>(arg_3.a.x, var_0.a.c.a.x), -10948i, vec3<u32>(0u, arg_0.a.x, arg_3.c.x), arg_3.d, vec4<i32>(arg_3.b, -43622i, arg_3.b, -25043i)), !var_1.b, var_1.a), Struct_3(func_2(Struct_5(var_0.a), true, Struct_1(var_0.a.a.a, u_input.b, var_1.a.c, -1130f, var_1.a.e), func_2(Struct_5(var_0.a), true, arg_3, var_0.a.a)), !vec3<bool>(var_0.a.a.a.x, false, true), arg_3), !(!all(vec4<bool>(true, false, arg_3.a.x, var_1.b.x))), -2147483647i), !var_0.a.b);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.d), var_2.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.d) - -1187f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1089f - 817f), -1363f, _wgslsmith_f_op_f32(-193f - 416f), _wgslsmith_f_op_f32(sign(-444f))) * vec4<f32>(-932f, _wgslsmith_f_op_f32(arg_0.b.x + arg_3.d), -245f, _wgslsmith_f_op_f32(arg_3.d - var_1.a.d))), !var_0.a.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, var_1.a.d, 845f, -226f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, arg_3.d, arg_3.d, 1798f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(abs(vec3<u32>(u_input.a, u_input.a, 1u)), vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(step(1245f, global0.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -9001i, -2147483647i), ~vec3<i32>(u_input.b, 47173i, -1i)), func_2(Struct_5(Struct_3(Struct_1(vec2<bool>(false, false), 0i, vec3<u32>(u_input.a, u_input.a, u_input.a), 1227f, vec4<i32>(-44245i, -22469i, 1i, u_input.b)), vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, false), 1i, vec3<u32>(4294967295u, 4294967295u, u_input.a), global0.x, vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)))), any(vec4<bool>(false, false, false, true)), func_1(Struct_3(Struct_1(vec2<bool>(true, false), 0i, vec3<u32>(16767u, 77723u, 29818u), 913f, vec4<i32>(-15744i, 1i, u_input.b, u_input.b)), vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, false), 39068i, vec3<u32>(u_input.a, 46085u, 12891u), -173f, vec4<i32>(-25605i, -8597i, -3762i, u_input.b))), Struct_3(Struct_1(vec2<bool>(true, true), u_input.b, vec3<u32>(38825u, u_input.a, u_input.a), 320f, vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true), u_input.b, vec3<u32>(1u, u_input.a, u_input.a), -1064f, vec4<i32>(-10563i, u_input.b, 2147483647i, u_input.b))), false, 11847i), func_1(Struct_3(Struct_1(vec2<bool>(false, false), u_input.b, vec3<u32>(u_input.a, 131831u, 19208u), -427f, vec4<i32>(-1i, u_input.b, u_input.b, 49385i)), vec3<bool>(false, false, false), Struct_1(vec2<bool>(true, true), -1i, vec3<u32>(u_input.a, 1u, u_input.a), global0.x, vec4<i32>(-9624i, u_input.b, u_input.b, -1533i))), Struct_3(Struct_1(vec2<bool>(false, true), u_input.b, vec3<u32>(4142u, 29894u, 32490u), global0.x, vec4<i32>(-2147483647i, 35657i, 2147483647i, u_input.b)), vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, true), u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), global0.x, vec4<i32>(-4785i, u_input.b, -1i, 0i))), true, u_input.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -1228f, global0.x, global0.x))))), _wgslsmith_f_op_f32(floor(-447f)) != _wgslsmith_f_op_f32(545f + -1620f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1805f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1426f)) - global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f), _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(exp2(global0.x)), 803f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1845f), 768f, 246f))));
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(645f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(reverseBits(~vec3<u32>(1u, u_input.a, 0u)), global0.xzy), _wgslsmith_f_op_f32(-global0.x), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -4978i, 0i), vec3<i32>(-1i, u_input.b, u_input.b)), func_2(Struct_5(Struct_3(Struct_1(vec2<bool>(true, true), 17068i, vec3<u32>(4294967295u, u_input.a, 33116u), 422f, vec4<i32>(-1i, u_input.b, -39351i, u_input.b)), vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, true), -21453i, vec3<u32>(u_input.a, u_input.a, u_input.a), global0.x, vec4<i32>(1i, -2147483647i, -1i, -31145i)))), false, func_1(Struct_3(Struct_1(vec2<bool>(true, false), 0i, vec3<u32>(u_input.a, 4294967295u, 4294967295u), -691f, vec4<i32>(39295i, 2147483647i, u_input.b, -40671i)), vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, false), u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), var_1, vec4<i32>(-22197i, 0i, 9692i, u_input.b))), Struct_3(Struct_1(vec2<bool>(true, true), 33596i, vec3<u32>(0u, u_input.a, u_input.a), global0.x, vec4<i32>(u_input.b, u_input.b, u_input.b, 1466i)), vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, false), 2147483647i, vec3<u32>(u_input.a, 0u, u_input.a), -1399f, vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.b))), true, u_input.b), func_1(Struct_3(Struct_1(vec2<bool>(true, false), u_input.b, vec3<u32>(5182u, 1u, 0u), var_1, vec4<i32>(0i, 20648i, -13744i, 0i)), vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, false), 58193i, vec3<u32>(1u, u_input.a, u_input.a), 830f, vec4<i32>(u_input.b, u_input.b, -1i, u_input.b))), Struct_3(Struct_1(vec2<bool>(true, false), 0i, vec3<u32>(17344u, 6152u, u_input.a), -551f, vec4<i32>(-22694i, u_input.b, 4564i, 23718i)), vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, false), u_input.b, vec3<u32>(0u, 0u, u_input.a), 246f, vec4<i32>(5347i, u_input.b, 27901i, u_input.b))), any(vec4<bool>(true, true, true, false)), -18940i << (0u % 32u))))).x - 1276f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~(~(vec4<u32>(27377u, u_input.a, 79402u, 0u) & vec4<u32>(u_input.a, 0u, 21587u, 34892u)))));
}

