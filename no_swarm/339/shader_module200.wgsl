struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(566f, 742f, -234f, -544f), vec4<f32>(-953f, -254f, 1017f, -607f), vec4<f32>(-900f, 626f, -2470f, 402f), vec4<f32>(1290f, 472f, -154f, -218f), vec4<f32>(-707f, 2333f, -154f, 167f), vec4<f32>(1000f, 414f, -999f, 2649f), vec4<f32>(1974f, 872f, 173f, -784f), vec4<f32>(1411f, -805f, -346f, -1139f), vec4<f32>(1298f, 1473f, 482f, 171f), vec4<f32>(802f, -1941f, 1000f, -154f), vec4<f32>(1303f, -1599f, 325f, -790f), vec4<f32>(690f, 575f, 1000f, -239f), vec4<f32>(-271f, -495f, 928f, -494f), vec4<f32>(872f, 418f, -946f, 1146f), vec4<f32>(766f, -849f, -2044f, -437f), vec4<f32>(-1108f, 1057f, -400f, -264f), vec4<f32>(785f, 1391f, -1878f, -1000f), vec4<f32>(-110f, 255f, -448f, 147f), vec4<f32>(1000f, -233f, 981f, 1101f), vec4<f32>(919f, 1000f, -1728f, -433f), vec4<f32>(-1306f, 703f, -1544f, 1402f), vec4<f32>(552f, -921f, 1716f, 1731f), vec4<f32>(242f, -637f, 166f, 906f), vec4<f32>(647f, 1406f, -651f, -1302f), vec4<f32>(-1034f, -437f, -881f, -867f), vec4<f32>(-1476f, 884f, 1451f, -230f), vec4<f32>(312f, -109f, 327f, 539f), vec4<f32>(-453f, 1100f, -306f, 695f), vec4<f32>(940f, -1000f, 1417f, -1000f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> f32 {
    let var_0 = arg_1;
    var var_1 = firstTrailingBit(min(0i, -1i));
    global0 = array<vec4<f32>, 29>();
    let var_2 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, -1505f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, -405f) * arg_0.b.c)))));
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    return var_0;
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_4(all(vec3<bool>(all(vec3<bool>(false, true, true)), false, arg_0)), Struct_3(reverseBits(~u_input.b.x), ~u_input.c.zz, _wgslsmith_f_op_f32(min(1545f, 225f))), _wgslsmith_f_op_f32(select(-299f, -413f, !all(!vec4<bool>(false, true, false, arg_0)))));
    let var_1 = ~firstLeadingBit(var_0.b.a) | _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b.x), u_input.b.yy), ~u_input.b.x);
    let var_2 = (-vec2<i32>(46361i, ~(-2147483647i)) >> (u_input.a.xz % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(u_input.c.zy, vec2<i32>(u_input.c.x | -16634i, ~u_input.c.x << (4294967295u % 32u)));
    global0 = array<vec4<f32>, 29>();
    let var_3 = var_0.b;
    return firstLeadingBit(0u);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = vec2<u32>(~28365u, _wgslsmith_mod_u32((u_input.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(1949u, 4294967295u), u_input.b.zy)) << (select(1u, func_3(true), true) % 32u), abs(_wgslsmith_clamp_u32(max(arg_0, arg_0), ~0u, _wgslsmith_mod_u32(u_input.b.x, 0u)))));
    global0 = array<vec4<f32>, 29>();
    var_0 = vec2<u32>(~abs(1u), countOneBits(~(~firstTrailingBit(51144u))));
    global0 = array<vec4<f32>, 29>();
    let var_1 = arg_1.zz;
    return Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, 66878u, u_input.a.x), vec4<u32>(0u, 0u, 1u, u_input.b.x)) | vec4<u32>(~136671u, 0u, ~var_0.x, 0u << (u_input.a.x % 32u)), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_0, var_0.x, arg_0, var_0.x)), abs(vec4<u32>(24540u, var_0.x, u_input.b.x, 51838u)))), -reverseBits(select(vec4<i32>(u_input.c.x, 21669i, -51056i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<bool>(true, false, false, true)) & u_input.c), 2936i > ~(-u_input.c.x), ~(-u_input.c.x | u_input.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1)), vec3<f32>(-1364f, arg_2, arg_1.x)))), _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_2) -> Struct_4 {
    let var_0 = arg_2.b;
    let var_1 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_3.a.x, 28084u, 9883u, 0u) << (~vec4<u32>(78269u, 31592u, arg_3.a.x, 19396u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~var_0.a, vec4<u32>(4294967295u, 1u, 40456u, arg_2.b.a.x))) >> (select(var_0.a, ~vec4<u32>(var_0.a.x, 1u, arg_0, var_0.a.x), !(!vec4<bool>(arg_2.c.x, true, false, arg_2.c.x))) % vec4<u32>(32u)), ~arg_2.b.a);
    global0 = array<vec4<f32>, 29>();
    let var_2 = vec4<u32>(1u, var_1 & 1u, ~4294967295u, firstLeadingBit(select(~(~arg_2.b.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0, 16492u), countOneBits(u_input.b.x)), true)));
    global0 = array<vec4<f32>, 29>();
    return Struct_4(true, Struct_3(~_wgslsmith_dot_vec2_u32(reverseBits(arg_2.b.a.xx), vec2<u32>(var_1, 0u) & arg_2.b.a.xy), vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 76718i), -7902i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-806f, arg_3.e.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -351f))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> vec4<i32> {
    let var_0 = Struct_2(func_2(func_3(arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 879f, arg_0.c) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.a, false)))) - vec3<f32>(arg_0.b.c, _wgslsmith_f_op_f32(abs(-468f)), arg_0.b.c)), _wgslsmith_f_op_f32(-arg_1.x)).a, ~(-u_input.c) | select(~func_2(u_input.a.x, vec3<f32>(arg_0.b.c, arg_0.b.c, arg_1.x), arg_0.c).b, vec4<i32>(-49349i, _wgslsmith_mod_i32(-24742i, 2147483647i), i32(-1i) * -47805i, arg_0.b.b.x), select(select(vec4<bool>(arg_0.a, true, true, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, false)), select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, false, true), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), false)), false, 15016i, func_2(_wgslsmith_sub_u32(arg_0.b.a, 30388u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1019f, -698f, arg_0.c))))), _wgslsmith_f_op_f32(152f * _wgslsmith_f_op_f32(-812f * _wgslsmith_div_f32(1611f, 191f)))).e);
    global0 = array<vec4<f32>, 29>();
    var var_1 = Struct_4(!(true | func_4(16204u, vec2<i32>(arg_0.b.b.x, var_0.b.x) | vec2<i32>(0i, 0i), Struct_5(global0[_wgslsmith_index_u32(var_0.a.x, 29u)], var_0, vec3<bool>(arg_0.a, true, var_0.c), arg_0.b.c), func_2(var_0.a.x, vec3<f32>(arg_0.b.c, 740f, arg_0.c), 661f)).a), Struct_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, 17207u) >> (61888u % 32u), ~10220u & ~var_0.a.x), func_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.a.x, 19498u), ~0u), vec2<i32>(var_0.d, countOneBits(arg_0.b.b.x)), Struct_5(_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), Struct_2(var_0.a, u_input.c, false, arg_0.b.b.x, Struct_1(vec3<f32>(var_0.e.b, arg_1.x, arg_0.c), var_0.e.a.x)), vec3<bool>(false, var_0.c, arg_0.a), -1107f), func_2(1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e.b, var_0.e.b, arg_0.c), vec3<f32>(-740f, arg_0.b.c, -1080f), vec3<bool>(arg_0.a, arg_0.a, true))), _wgslsmith_div_f32(636f, var_0.e.b))).b.b, func_4(1u, select(abs(arg_0.b.b), _wgslsmith_mult_vec2_i32(var_0.b.zx, var_0.b.wz), vec2<bool>(true, var_0.c)), Struct_5(vec4<f32>(var_0.e.b, 606f, 1199f, arg_1.x), func_2(0u, var_0.e.a, var_0.e.b), vec3<bool>(var_0.c, arg_0.a, false), arg_1.x), func_2(~arg_0.b.a, vec3<f32>(318f, arg_1.x, -1000f), var_0.e.b)).c), _wgslsmith_div_f32(-2444f, var_0.e.b));
    var_1 = func_4(_wgslsmith_dot_vec4_u32(var_0.a, reverseBits(vec4<u32>(arg_0.b.a, arg_0.b.a, 21701u, u_input.b.x))) << (min(1u, ~29820u) % 32u), select(abs(abs(select(var_1.b.b, vec2<i32>(u_input.c.x, arg_0.b.b.x), vec2<bool>(false, false)))), ~_wgslsmith_mult_vec2_i32(var_0.b.yx, vec2<i32>(arg_0.b.b.x, var_0.b.x)) ^ _wgslsmith_mod_vec2_i32(var_1.b.b, vec2<i32>(4127i, var_1.b.b.x)), vec2<bool>(~u_input.c.x == select(2147483647i, 0i, var_1.a), true)), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(round(func_4(u_input.a.x, vec2<i32>(var_1.b.b.x, -23186i), Struct_5(global0[_wgslsmith_index_u32(5511u, 29u)], var_0, vec3<bool>(true, var_0.c, var_1.a), var_0.e.b), Struct_2(var_0.a, u_input.c, var_0.c, var_1.b.b.x, Struct_1(var_0.e.a, arg_0.b.c))).b.c)), arg_0.c, _wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(314f)) * 2634f)), var_0, vec3<bool>(var_0.c, true, _wgslsmith_f_op_f32(arg_0.b.c - arg_0.b.c) <= _wgslsmith_f_op_f32(-159f + var_0.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_0, _wgslsmith_f_op_f32(ceil(arg_0.b.c)))))), func_2(var_0.a.x, vec3<f32>(var_0.e.a.x, 1033f, _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1113f)))), arg_0.b.c));
    global0 = array<vec4<f32>, 29>();
    return ((var_0.b | vec4<i32>(var_1.b.b.x, abs(var_1.b.b.x), var_1.b.b.x, _wgslsmith_mod_i32(var_1.b.b.x, var_0.b.x))) << (var_0.a % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(28518u) ^ 4294967295u, countOneBits(~var_1.b.a), ~func_4(4840u, arg_0.b.b, Struct_5(global0[_wgslsmith_index_u32(arg_0.b.a, 29u)], var_0, vec3<bool>(arg_0.a, false, var_0.c), arg_0.c), Struct_2(var_0.a, vec4<i32>(var_0.d, 2147483647i, -23754i, -48917i), false, 19055i, Struct_1(vec3<f32>(1298f, var_0.e.b, var_1.c), arg_0.b.c))).b.a, ~_wgslsmith_add_u32(83247u, var_1.b.a)), var_0.a) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(u_input.a.x, ~u_input.c.yw, Struct_5(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(true, Struct_3(4294967295u, vec2<i32>(u_input.c.x, u_input.c.x), 991f), 766f), -101f)), _wgslsmith_f_op_f32(-349f * -875f), -503f, 1f), func_2(_wgslsmith_sub_u32(u_input.a.x, 16288u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1912f, -368f)), 703f), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), 952f), Struct_2(vec4<u32>(func_2(11719u, vec3<f32>(-368f, 211f, -818f), -192f).a.x, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 12130u, u_input.a.x), vec4<u32>(18292u, u_input.a.x, u_input.a.x, u_input.a.x)), 87357u), vec4<i32>(u_input.c.x, ~u_input.c.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zw)), true, 5351i, func_2(u_input.b.x, vec3<f32>(-647f, -1336f, 470f), _wgslsmith_f_op_f32(1424f * -881f)).e)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1002f))), func_2(u_input.a.x, vec3<f32>(-590f, 194f, -1000f), _wgslsmith_f_op_f32(sign(227f))).e.a.x), vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1638f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(395f, -628f, true)) * 463f))));
    var var_1 = func_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1006f, -118f, -158f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2043f, 854f, -268f) + vec3<f32>(495f, -290f, -1195f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1361f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, 718f))))))).b.x;
    global0 = array<vec4<f32>, 29>();
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(reverseBits(13344i)), ~(~35281i)), _wgslsmith_sub_i32(var_0.x, 1i));
    var var_3 = vec3<bool>(true || !(firstTrailingBit(var_0.x) < ~36871i), _wgslsmith_dot_vec3_u32(~u_input.a, countOneBits(u_input.b)) <= 1u, true);
    var var_4 = var_3.xy;
    var var_5 = var_3.yx;
    var_4 = !select(vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, true), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.zx, ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(11369u, 1u, u_input.b.x, 1u), vec4<u32>(93822u, u_input.a.x, u_input.b.x, u_input.a.x)))), u_input.b.x);
}

