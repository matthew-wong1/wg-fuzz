struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = abs(-1943i);
    var var_1 = Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32701u, 2506u), ~vec3<u32>(7792u, 3984u, 0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 925u, 0u), vec3<u32>(4294967295u, 19071u, 4294967295u)), 1u), ~reverseBits(vec3<u32>(88740u, 43364u, 116520u))), Struct_2(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0, 0i), var_0 | (u_input.a.x & abs(15664i)), abs(u_input.a.x | u_input.a.x) << (~17406u % 32u)), _wgslsmith_add_vec4_u32(abs(~vec4<u32>(36679u, 25536u, 0u, 4294967295u)), select(vec4<u32>(4294967295u, 55274u, 1u, 1u), vec4<u32>(60461u, 4294967295u, 80390u, 4294967295u), vec4<bool>(false, true, true, false)) ^ min(vec4<u32>(4294967295u, 1u, 31099u, 1u), vec4<u32>(51714u, 0u, 0u, 0u))) & vec4<u32>(10384u, 0u >> (1u % 32u), abs(1u), ~1u), Struct_2(true));
    var var_2 = vec4<u32>(~0u, _wgslsmith_dot_vec3_u32((~var_1.d.wzz << (vec3<u32>(59151u, var_1.d.x, var_1.a.x) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(min(vec3<u32>(var_1.d.x, 43549u, var_1.d.x), var_1.d.xzw), firstTrailingBit(vec3<u32>(var_1.a.x, var_1.a.x, 0u))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.d.zz, var_1.d.zw), var_1.d.x, 1u)), 1u >> (1u % 32u), var_1.d.x);
    let var_3 = var_1.d.x & _wgslsmith_add_u32(21066u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.a.x | var_1.a.x, _wgslsmith_add_u32(var_2.x, 4294967295u)), 1u));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, 1000f, -433f, arg_0)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 547f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 701f, arg_0, arg_0) + vec4<f32>(1310f, -1000f, -109f, arg_0))))));
    return -590f;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = 615f;
    let var_1 = -(~u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1858f, 300f, var_0)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1072f, -191f, -109f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(func_3(-1204f)), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 417f, var_0))))));
    var var_3 = arg_0;
    var var_4 = Struct_3(~abs(arg_2.d.yxz), arg_2.e, -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, var_1.x, -1i)), u_input.b), max(~vec4<u32>(~14528u, firstLeadingBit(1u), 0u, arg_2.a.x | 0u), abs(arg_2.d) >> (min(countOneBits(arg_2.d), _wgslsmith_clamp_vec4_u32(arg_2.d, vec4<u32>(23137u, arg_2.a.x, 22503u, 28474u), vec4<u32>(arg_2.a.x, arg_2.d.x, arg_2.d.x, arg_2.d.x))) % vec4<u32>(32u))), Struct_2(true));
    return vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), i32(-1i) * -5732i, ~_wgslsmith_dot_vec3_i32(var_1.wxw, ~(-var_1.xzx)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(u_input.b, -(_wgslsmith_clamp_vec3_i32(u_input.a.zyx, ~u_input.a.zyx, func_2(arg_2, 31034i, Struct_3(arg_0.zzy, Struct_2(true), 2147483647i, vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), Struct_2(true)))) | vec3<i32>(1i, max(u_input.a.x, 0i), u_input.b.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1)))) + arg_1)), u_input.b.x, 1i | func_2(arg_2, 1i, Struct_3(arg_0.yyx, Struct_2(true), ~u_input.b.x, max(vec4<u32>(4509u, 4294967295u, arg_0.x, 26607u), vec4<u32>(14586u, arg_0.x, arg_0.x, 10987u)), Struct_2(arg_2.x))).x);
    var_1 = Struct_1(arg_1, func_2(!arg_2, _wgslsmith_dot_vec2_i32(var_0.zz, (vec2<i32>(var_1.c, u_input.a.x) ^ var_0.xz) ^ var_0.yx), Struct_3(arg_0.zyx, Struct_2(false), u_input.a.x, vec4<u32>(4294967295u ^ arg_0.x, arg_0.x >> (1u % 32u), 72031u, 65136u), Struct_2(any(vec3<bool>(true, true, arg_2.x))))).x, u_input.a.x ^ -var_0.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))), -1i, -_wgslsmith_sub_i32(49400i, min(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 2147483647i)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(437f * -1126f))) + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(~var_1.c, 2147483647i)), _wgslsmith_dot_vec3_i32(~max(var_0, vec3<i32>(u_input.a.x, 1i, -1i)), -vec3<i32>(var_1.b, var_1.b, 9659i))), -var_0.x);
    return var_1.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = ~reverseBits(-(-vec4<i32>(-2778i, arg_2, arg_2, -2147483647i) | ~u_input.a));
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(!any(vec3<bool>(true, true, false))));
    var_0 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -424f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 929f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f + 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1225f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(21607u, 9874u, 4294967295u, 84485u), -398f, vec4<bool>(var_0.a, true, false, false))), -849f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1490f))), _wgslsmith_f_op_f32(func_1(firstTrailingBit(vec4<u32>(18864u, 1u, 59480u, 0u)), -534f, select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(false, false, false, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a)))))), Struct_3(vec3<u32>(abs(6003u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(24336u, 0u, 30531u), vec3<u32>(3157u, 10314u, 29335u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 55079u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 27177u, 33325u))), Struct_2(var_0.a), -1i, vec4<u32>(~1u, _wgslsmith_mod_u32(66584u, 2997u), abs(_wgslsmith_sub_u32(4294967295u, 0u)), ~0u), Struct_2(var_0.a)), 39880i);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, 1761f, -1273f) + vec3<f32>(953f, -1012f, 1280f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2004f, -789f, -1693f))))))), Struct_3(~vec3<u32>(1u, 1u, 1u), func_4(vec3<f32>(-1188f, 1f, _wgslsmith_f_op_f32(-1303f * 1112f)), Struct_3(vec3<u32>(17742u, 14728u, 68501u), Struct_2(var_0.a), u_input.a.x ^ u_input.b.x, select(vec4<u32>(9670u, 4294967295u, 4294967295u, 25892u), vec4<u32>(14267u, 12505u, 276u, 1u), false), Struct_2(false)), 8105i), -u_input.b.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(103793u, 1u, 48883u, 20617u), _wgslsmith_div_vec4_u32(vec4<u32>(71746u, 50946u, 42805u, 1u), vec4<u32>(63396u, 66475u, 4294967295u, 42900u))) % 32u), ~(~(~vec4<u32>(17133u, 4294967295u, 24423u, 0u))), func_4(vec3<f32>(-464f, _wgslsmith_f_op_f32(round(573f)), -400f), Struct_3(vec3<u32>(1u, 637u, 11519u), Struct_2(false), 2147483647i, _wgslsmith_add_vec4_u32(vec4<u32>(37699u, 1u, 96549u, 100996u), vec4<u32>(21506u, 1u, 0u, 41301u)), func_4(vec3<f32>(-729f, 1287f, 684f), Struct_3(vec3<u32>(40388u, 1u, 15358u), Struct_2(false), u_input.b.x, vec4<u32>(17037u, 0u, 0u, 0u), Struct_2(true)), u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) >> (~3393u % 32u))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(u_input.b.x, -6124i)), vec2<i32>(-2147483647i, 8001i)) & ~(-(~2147483647i)));
    var var_2 = Struct_2(true);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(388f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f + -1822f) + _wgslsmith_f_op_f32(floor(389f))), 898f) * vec3<f32>(_wgslsmith_f_op_f32(1071f + -563f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-835f, -1514f) - 1f))), Struct_3(vec3<u32>(1u, 1u, 1u), func_4(vec3<f32>(_wgslsmith_div_f32(1077f, -397f), _wgslsmith_div_f32(-454f, -2194f), _wgslsmith_div_f32(396f, -330f)), Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(25515u, 7821u, 1u), vec3<u32>(1u, 48323u, 19567u), vec3<u32>(1u, 0u, 0u)), Struct_2(false), -2147483647i, vec4<u32>(1u, 1u, 1u, 1u), func_4(vec3<f32>(-547f, -2003f, 864f), Struct_3(vec3<u32>(1u, 21063u, 59225u), Struct_2(var_1.a), u_input.b.x, vec4<u32>(30513u, 85988u, 4294967295u, 53910u), Struct_2(var_2.a)), u_input.b.x)), 1i), 1i, vec4<u32>(28140u, ~select(4294967295u, 1u, var_0.a), _wgslsmith_mod_u32(5140u, 1u), 1u), Struct_2(!var_1.a || true)), _wgslsmith_sub_i32(-2147483647i, ~(1i ^ -u_input.a.x)));
    var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2550f))))), _wgslsmith_div_f32(-781f, -330f)), Struct_3(~(~select(vec3<u32>(0u, 24347u, 32173u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), var_1.a)), Struct_2(true), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) ^ reverseBits(abs(u_input.b.x)), ~(~firstLeadingBit(vec4<u32>(4294967295u, 0u, 312u, 4294967295u))), Struct_2(all(select(vec4<bool>(true, var_1.a, true, var_2.a), vec4<bool>(true, false, false, var_3.a), var_2.a)))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, min(0i, u_input.a.x), max(abs(vec2<i32>(-7803i, -6272i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -3460i, u_input.a.x, 53853i), u_input.a ^ u_input.a), u_input.b.x)));
}

