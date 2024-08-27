struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)), select(arg_0.b, !arg_0.b, false));
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, var_0.a.x, -219f, var_0.a.x) + arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -599f, 332f, 460f)))))), var_0.b), ~(~(~_wgslsmith_mult_u32(global0.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(651f * 639f), _wgslsmith_f_op_f32(var_0.a.x * -474f), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -994f)) * vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(var_0.a.x, -1837f)), _wgslsmith_f_op_f32(-arg_0.a.x), -781f)), select(vec3<bool>(var_1.a.x > var_1.a.x, var_0.b.x & var_1.b.x, true), select(var_1.b, !var_1.b, !var_1.b), !all(vec4<bool>(arg_0.b.x, var_0.b.x, true, false)))), ~select(select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -216i, arg_1, arg_1), vec4<i32>(-9070i, arg_1, 1787i, -7838i)), vec4<i32>(arg_1, arg_1, -1i, 0i), vec4<bool>(false, true, true, false)), countOneBits(vec4<i32>(11997i, arg_1, arg_1, arg_1)), var_1.b.x), var_0);
    let var_3 = ((vec2<i32>(1i, -76308i) | var_2.d.yy) | vec2<i32>(-1i, _wgslsmith_add_i32(arg_1, arg_1))) ^ var_2.d.yy;
    var var_4 = -(var_2.d.x >> (var_2.b % 32u));
    return var_2.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_i32(-select(-vec4<i32>(0i, -1i, 32398i, -14984i), -vec4<i32>(-19862i, -10835i, 19868i, -1i), all(vec2<bool>(true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 1i), -11949i, 15906i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(-2147483647i, 0i, -416i))), vec4<i32>(_wgslsmith_add_i32(0i, 19632i), i32(-1i) * -2147483647i, max(-9572i, -2147483647i), func_3(Struct_1(vec4<f32>(-696f, arg_0.x, arg_1.x, arg_0.x), vec3<bool>(true, false, true)), 2147483647i)))) | ~vec4<i32>(-31061i, 1i, _wgslsmith_mult_i32(0i, i32(-1i) * -36375i), 1i);
    global0 = ~firstLeadingBit(countOneBits(abs(vec2<u32>(arg_2.x, 4294967295u))));
    let var_1 = vec3<bool>(true, false, true);
    global0 = vec2<u32>(global0.x, global0.x);
    let var_2 = arg_0.yz;
    return vec2<bool>(var_1.x || var_1.x, arg_0.x != _wgslsmith_f_op_f32(-var_2.x));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = vec2<u32>(20609u, ~(~min(4294967295u, 0u))) & select(abs(~(~vec2<u32>(1u, global0.x))), vec2<u32>(4294967295u, ~21131u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 4294967295u), vec4<u32>(global0.x, 1u, arg_0, 0u))), select(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), true || arg_1.x), arg_1.zz, select(func_2(vec3<f32>(-1036f, 949f, 1493f), vec4<f32>(1000f, -812f, -1427f, -1000f), vec4<u32>(15014u, 0u, 20260u, global0.x), -498f), !vec2<bool>(arg_1.x, false), true)));
    let var_0 = _wgslsmith_dot_vec4_u32(max(select(~(~vec4<u32>(0u, 38294u, arg_0, u_input.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, 2839u, 34993u, 33546u), vec4<u32>(1u, u_input.a, u_input.a, 1u)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(38483u, global0.x, global0.x, global0.x) ^ vec4<u32>(u_input.a, 45733u, 18460u, u_input.a)), min(vec4<u32>(arg_0, 41963u, 64u, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 16022u, global0.x, 4294967295u), vec4<u32>(u_input.a, u_input.a, global0.x, 6975u))))), ~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, u_input.a, arg_0), vec4<u32>(0u, global0.x, 32604u, global0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 94281u, global0.x), vec4<u32>(43373u, u_input.a, 9230u, 0u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-261f, -2116f, 1133f, -2526f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, 1582f, -1426f, 1894f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-847f, -297f, -772f, 677f), vec4<f32>(827f, -962f, -216f, 335f))) - vec4<f32>(-327f, 464f, -1907f, 707f)), all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, -481f, -718f, -893f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, -602f, 237f, 860f))))), arg_1.zxy);
    global0 = select(~vec2<u32>(4294967295u, global0.x), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, arg_0), vec2<u32>(62727u, ~40998u))), var_1.b.xy);
    var var_2 = vec2<bool>(false, any(!(!arg_1.ywx)));
    return Struct_1(var_1.a, vec3<bool>(var_1.b.x, select(!any(vec3<bool>(var_2.x, false, arg_1.x)), any(arg_1.xw), true), all(arg_1.wyy)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = func_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, u_input.a, 1u), select(vec3<u32>(4294967295u, u_input.a, global0.x), vec3<u32>(1u, 1u, global0.x), false)) & ~4294967295u, 1u), !(!select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), !vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), any(vec4<bool>(true, arg_0.b.x, false, false)))), vec4<i32>(15831i, -2147483647i, 19985i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(-15180i, -1i, 1i)))).b.zx;
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(reverseBits(abs(u_input.a)), 0u), 1u), countOneBits(vec2<u32>(~global0.x, global0.x)));
    var var_1 = Struct_2(func_1(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, global0.x), 0u >> (global0.x % 32u)), countOneBits(94404u)), !(!vec4<bool>(false, false, true, var_0.x)), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)), abs(35543u << (~(u_input.a & u_input.a) % 32u)), Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-arg_0.a)), vec3<bool>(!var_0.x | true, true, ~global0.x <= _wgslsmith_add_u32(14316u, global0.x))), reverseBits(select(-vec4<i32>(0i, -19830i, 2147483647i, 6496i), vec4<i32>(-27019i, 2147483647i, 0i, -5099i), select(false, var_0.x, true)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(13110u, u_input.a, 24165u, 53779u), ~vec4<u32>(u_input.a, 103651u, u_input.a, 29019u)) % vec4<u32>(32u))), func_1(_wgslsmith_mod_u32(1u, (global0.x | u_input.a) & ~global0.x), select(vec4<bool>(false, arg_0.b.x, var_0.x, true), vec4<bool>(global0.x > 17044u, true, any(vec3<bool>(arg_0.b.x, true, var_0.x)), var_0.x & false), (global0.x <= 34027u) & !arg_0.b.x), firstTrailingBit(~(~vec4<i32>(-78054i, -12277i, 23316i, 2147483647i)))));
    global0 = reverseBits(vec2<u32>(17594u, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(46779u, u_input.a)), vec2<u32>(31564u, max(global0.x, 0u)))));
    var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-384f - _wgslsmith_div_f32(var_1.a.a.x, 656f)), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.b, var_1.b), vec3<u32>(1u, 1u, 22441u)), !vec4<bool>(arg_0.b.x, var_1.c.b.x, true, false), select(vec4<i32>(var_1.d.x, 1i, var_1.d.x, -10293i), vec4<i32>(2147483647i, 0i, 0i, 26418i), true)).a.x, 406f), vec3<bool>(true, var_0.x, !(!var_1.c.b.x))), u_input.a, arg_0, var_1.d, arg_0);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(209f, -1209f, -706f), vec3<f32>(-926f, -345f, 167f))))));
    global0 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(func_4(func_1(u_input.a, vec4<bool>(true, false, true, true), vec4<i32>(1i, -1i, -30899i, 0i))), reverseBits(_wgslsmith_mult_u32(0u, 7099u))), select(vec2<u32>(~global0.x, 21640u | global0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 50549u)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true))));
    var var_1 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(-513f, -1592f), _wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(920f, 731f), 1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, 126f)), _wgslsmith_f_op_f32(min(var_0.x, -2038f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))), vec3<bool>(((global0.x ^ 67459u) ^ _wgslsmith_mult_u32(u_input.a, 26959u)) < _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 17624u, 1u, 4294967295u)), vec4<u32>(37227u, 32445u, 1u, 28663u)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 1i), vec3<i32>(-40836i, 2147483647i, -1075i) >> (vec3<u32>(20215u, 4294967295u, global0.x) % vec3<u32>(32u))) == 11043i, true || func_1(~9627u, vec4<bool>(true, true, true, true), reverseBits(vec4<i32>(35656i, -4443i, 4551i, -17415i))).b.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.xyy)) + _wgslsmith_f_op_vec3_f32(var_2.a.xzy - _wgslsmith_f_op_vec3_f32(min(var_2.a.wyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.a.yxz, vec3<f32>(1471f, -714f, var_2.a.x), false)) * var_2.a.yxy)))));
    var var_3 = vec2<bool>(var_2.b.x, var_2.b.x);
    let var_4 = vec2<i32>(511i << (_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.a, 1u, 4294967295u, 1u)), ~(~vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a))) % 32u), ~_wgslsmith_div_i32(i32(-1i) * -4908i, 1i << (0u % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, -24120i)), vec3<i32>(1i, i32(-1i) * -2147483647i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(countOneBits(select(firstLeadingBit(vec3<i32>(var_4.x, var_4.x, var_4.x)), -vec3<i32>(7562i, -39434i, -34691i), any(vec4<bool>(var_3.x, true, var_3.x, var_3.x))))), func_4(func_1(u_input.a ^ 52647u, vec4<bool>(false, false, false, false), vec4<i32>(1i, var_4.x, var_4.x, 0i) << (vec4<u32>(u_input.a, global0.x, global0.x, u_input.a) % vec4<u32>(32u)))) | global0.x);
}

