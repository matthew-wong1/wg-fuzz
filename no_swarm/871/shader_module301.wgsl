struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = !(true || (1u <= _wgslsmith_div_u32(~45598u, u_input.d)));
    global0 = _wgslsmith_sub_i32(countOneBits(~((u_input.a.x & -15497i) >> (_wgslsmith_div_u32(0u, u_input.d) % 32u))), -37072i);
    global0 = arg_3.x;
    var var_1 = arg_0.x;
    var_0 = !arg_0.x;
    return 0i;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = Struct_4(firstLeadingBit(vec4<u32>(~(~u_input.c), reverseBits(36288u), ~arg_1, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d), vec4<u32>(arg_1, 1u, arg_1, arg_1)), 25540u ^ arg_1, min(1u, arg_1)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(49655u, 54897u, u_input.c, arg_1)), ~vec4<u32>(arg_1, 44917u, 39542u, arg_1)), vec4<u32>(arg_1, arg_1, ~5039u, u_input.c << (arg_1 % 32u))), select(~vec4<u32>(60731u, 4294967295u, 17932u, arg_1), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, u_input.c, 45896u), abs(vec4<u32>(arg_1, u_input.c, arg_1, 15732u))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1397f, -386f, 1159f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, 209f, 1220f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(118f, 1364f, -912f) - vec3<f32>(796f, 1333f, -170f))), false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-679f, var_1.x) + vec2<f32>(var_1.x, var_1.x)), var_1.yx))));
    global0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), arg_2);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(-640f)), _wgslsmith_f_op_f32(-650f + 979f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, var_2.x, -598f))))));
    return arg_2 << ((_wgslsmith_mod_u32(~24358u, var_0.a.x) << (u_input.d % 32u)) % 32u);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global0 = func_3(arg_0.x, u_input.d, u_input.b & u_input.a.x);
    var var_0 = Struct_4(select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.c) ^ vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.d), ~vec4<u32>(4294967295u, 0u, u_input.c, u_input.d), vec4<u32>(u_input.d, 4294967295u, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) & vec4<u32>(u_input.d, u_input.c, 36120u, 0u), select(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<u32>(u_input.d, u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, true, false)))), ~(~(~vec4<u32>(9321u, u_input.d, u_input.d, u_input.c))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(32533u, u_input.c, 25148u, 1u), vec4<u32>(63958u, u_input.c, 62723u, 4294967295u)))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)))));
    let var_1 = select((~(arg_0.xz ^ arg_0.xy) & reverseBits(u_input.a.yx & vec2<i32>(u_input.a.x, arg_0.x))) >> (_wgslsmith_mod_vec2_u32(max(var_0.b.zz, abs(var_0.b.zz)), vec2<u32>(4294967295u, u_input.c)) % vec2<u32>(32u)), -(~(-(vec2<i32>(u_input.a.x, 0i) | vec2<i32>(13475i, -2147483647i)))), select(select(select(!vec2<bool>(var_0.c, true), !vec2<bool>(var_0.c, true), all(vec3<bool>(false, var_0.c, var_0.c))), !select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, false)), false), select(select(select(vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c), true), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, true), true), !vec2<bool>(var_0.c, var_0.c)), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, all(vec2<bool>(true, var_0.c)))), any(!select(vec2<bool>(true, var_0.c), vec2<bool>(false, true), vec2<bool>(true, var_0.c)))));
    var var_2 = var_0.c;
    let var_3 = -_wgslsmith_dot_vec2_i32(select(arg_0.xz | vec2<i32>(u_input.b, 12501i), vec2<i32>(-2147483647i, u_input.a.x), var_0.c & var_0.c), arg_0.zz) | var_1.x;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec3<bool>(true, true, true)), ~u_input.a.x <= abs(0i), u_input.b < _wgslsmith_add_i32(_wgslsmith_div_i32(-50635i, u_input.a.x), firstLeadingBit(2147483647i))), 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2664f, 1000f, 1000f, -500f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1675f, 493f, -1464f, 343f) + vec4<f32>(1503f, 143f, -1000f, 1091f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-457f, -683f, -552f, -1824f), vec4<f32>(921f, 530f, -477f, -1637f))), !all(vec3<bool>(false, false, true))))), vec3<i32>(35753i, ~select(-40603i, -u_input.b, any(vec3<bool>(true, false, true))), firstTrailingBit(u_input.a.x)));
    global0 = var_0;
    let var_1 = u_input.a;
    global0 = ~1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1280f, 190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-454f))), _wgslsmith_f_op_f32(min(587f, _wgslsmith_f_op_f32(-1406f - 998f))), -1760f))));
    global0 = reverseBits(-(-4713i | var_0)) & 2903i;
    global0 = 4755i;
    global0 = func_2(select(vec3<i32>(var_0, var_0, 0i), var_1, true));
    var var_3 = !vec2<bool>(!(!all(vec4<bool>(false, false, false, false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

