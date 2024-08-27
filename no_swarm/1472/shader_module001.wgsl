struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = Struct_3(Struct_2(-(i32(-1i) * -u_input.a.x), u_input.a.x, firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a.zy, firstLeadingBit(u_input.a.yy), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, -15378i)) >> (~u_input.c.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.yz, vec2<i32>(68846i, u_input.a.x))), true), Struct_1(vec4<bool>(true, !(u_input.a.x >= u_input.a.x), true, !select(false, true, true)), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1284f, -1000f) + vec3<f32>(881f, -340f, -748f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, -861f, -1638f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-799f, -469f, 761f) - vec3<f32>(212f, -328f, -254f)) * vec3<f32>(1000f, -447f, -570f)))));
    return firstLeadingBit(countOneBits(abs(28462u)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    var var_0 = select(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), reverseBits(vec2<u32>(63244u, 4294967295u)))) ^ vec2<u32>(select(u_input.c.x, u_input.d.x, arg_0), func_3()), u_input.d, !vec2<bool>(!arg_0, arg_1.x));
    var var_1 = Struct_5(Struct_3(Struct_2(~u_input.a.x >> ((11335u ^ var_0.x) % 32u), _wgslsmith_mult_i32(reverseBits(u_input.a.x), 1i), ~u_input.a.zx, abs(u_input.a.xz), all(arg_1)), Struct_1(vec4<bool>(true, all(arg_1.xyy), true, false), arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-921f, -384f, 1679f) * vec3<f32>(-384f, 469f, -420f))))), vec3<f32>(_wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1672f, -887f))))), _wgslsmith_f_op_f32(max(-904f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(min(-1669f, 180f))))), -1885f), vec4<i32>(-43146i, -67258i, u_input.a.x, select(2147483647i, abs(~u_input.a.x), arg_2)));
    return i32(-1i) * -(~(~var_1.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !(!(u_input.c.x < 0u));
    let var_1 = vec4<i32>(-1i) * -(~((vec4<i32>(-1i, u_input.a.x, arg_1.a, u_input.a.x) << (u_input.c % vec4<u32>(32u))) | vec4<i32>(2147483647i, arg_0.a.b, 2147483647i, arg_1.b)));
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    return Struct_2(var_1.x, 1i, vec2<i32>(min(_wgslsmith_mult_i32(arg_0.a.d.x, -10054i), select(-58352i, arg_0.a.d.x, false)), -1i) | -u_input.a.zy, ~vec2<i32>(26134i, ~_wgslsmith_mult_i32(1i, 46284i)), var_0 | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.c.x))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -711f), arg_0.b.c.x, true))));
}

fn func_1() -> f32 {
    global0 = array<vec3<u32>, 25>();
    var var_0 = select(~vec3<i32>(1i, -u_input.a.x, ~(-9496i)), u_input.a, false);
    var var_1 = func_4(Struct_3(Struct_2(-948i ^ -u_input.a.x, func_2(false, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), true), max(var_0.zx, vec2<i32>(0i, -2147483647i)) >> (vec2<u32>(10427u, u_input.d.x) % vec2<u32>(32u)), vec2<i32>(abs(2147483647i), u_input.a.x), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), true, true, true), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -805f, -253f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, -621f, -2065f))))), Struct_2(func_2(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false))), firstLeadingBit(~(~(-2147483647i))), -vec2<i32>(1i, 2147483647i), var_0.zx, false));
    let var_2 = Struct_2(var_0.x, var_0.x, -vec2<i32>(u_input.a.x, max(16555i, _wgslsmith_add_i32(6985i, var_1.a))), ~var_0.yy, any(vec2<bool>(true, var_1.e)));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(func_2(any(vec3<bool>(true, var_1.e, var_1.e)), select(vec4<bool>(var_2.e, true, var_2.e, var_1.e), vec4<bool>(var_1.e, true, false, var_1.e), vec4<bool>(var_1.e, var_1.e, true, var_2.e)), true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-9605i, u_input.a.x, var_0.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, var_2.a, -2147483647i)), ~(~var_0.x), ~var_1.a), -(~select(vec4<i32>(45150i, u_input.a.x, var_2.a, var_1.c.x), vec4<i32>(u_input.a.x, -1i, var_0.x, var_1.d.x), vec4<bool>(false, var_2.e, true, var_1.e)))));
    return -964f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-574f * 986f), _wgslsmith_f_op_f32(-278f - 1495f)), _wgslsmith_f_op_f32(-1034f + _wgslsmith_f_op_f32(func_1()))))));
    let var_1 = select(-_wgslsmith_div_i32(1i | u_input.a.x, _wgslsmith_clamp_i32(1i, -8046i, u_input.a.x)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.b, 0u)), min(vec2<u32>(22636u, u_input.d.x), ~vec2<u32>(59518u, 83718u))) % 32u), u_input.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(u_input.b, 0u))), var_1, _wgslsmith_f_op_f32(var_0 + var_0), u_input.c.yyz, var_0);
}

