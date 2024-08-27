struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(498f, -496f, 2878f, -1028f), vec4<f32>(-302f, 505f, -619f, -1071f), vec4<f32>(-476f, -1788f, -1102f, 1149f), vec4<f32>(706f, -1000f, 1041f, 1000f), vec4<f32>(-1337f, -2553f, 643f, -445f), vec4<f32>(-522f, -661f, -1660f, -255f), vec4<f32>(188f, -971f, 2099f, 454f), vec4<f32>(1000f, -211f, 719f, -1250f), vec4<f32>(-390f, 380f, 805f, 345f), vec4<f32>(-1204f, -237f, -589f, 134f), vec4<f32>(1000f, 497f, 1318f, -177f), vec4<f32>(1836f, -1049f, -1000f, 1000f), vec4<f32>(374f, -552f, -224f, -244f), vec4<f32>(-1080f, 1000f, -1000f, 646f), vec4<f32>(693f, -988f, -1000f, 1291f), vec4<f32>(670f, -1000f, 213f, -1237f), vec4<f32>(-1389f, 821f, -1707f, -598f), vec4<f32>(-2034f, 516f, -564f, 665f), vec4<f32>(-384f, -366f, -1592f, -186f), vec4<f32>(-618f, -604f, -1000f, 904f), vec4<f32>(2168f, -1210f, 957f, -1000f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<i32> {
    return vec2<i32>(_wgslsmith_sub_i32(u_input.a, 0i), 0i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_4) -> bool {
    var var_0 = false;
    var_0 = any(!(!(!select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(true, true, arg_1.b), vec3<bool>(false, true, arg_1.b)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.c.yy) - arg_1.c.b.xy);
    global0 = array<vec4<f32>, 21>();
    let var_2 = 1000f;
    return all(select(vec3<bool>(!arg_1.b, true, !arg_1.b), select(vec3<bool>(false, false, arg_1.b), !vec3<bool>(false, arg_1.b, false), !vec3<bool>(arg_1.b, true, true)), true)) & all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false));
}

fn func_2() -> Struct_3 {
    var var_0 = !vec2<bool>(func_4(u_input.c ^ u_input.c, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.c.x), vec3<i32>(u_input.a, 57680i, -2147483647i)), true, Struct_1(1588f, vec3<f32>(563f, -2665f, 1153f), vec3<f32>(-1000f, 1703f, -1238f))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 60855u, u_input.b)) & vec3<u32>(4294967295u, u_input.b, 23861u), Struct_4(1u, ~u_input.c.zwz, _wgslsmith_f_op_f32(f32(-1f) * -557f), -960f, func_3(Struct_4(u_input.b, u_input.c.yxw, 1000f, -497f, vec2<i32>(-1i, u_input.c.x)), Struct_1(242f, vec3<f32>(1914f, 200f, 1781f), vec3<f32>(-2165f, -696f, -356f)), u_input.c.wwx, Struct_1(-442f, vec3<f32>(1433f, -1834f, -1343f), vec3<f32>(-696f, -1000f, 1479f))))), true);
    var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))), var_0.x), vec2<bool>(true, var_0.x), !select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true)), vec2<bool>(true, false), true)), vec2<bool>(!(var_0.x && all(vec4<bool>(var_0.x, false, var_0.x, false))), true && !(u_input.b != u_input.b)), !(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    let var_1 = u_input.b;
    var var_2 = select(vec4<bool>(~(u_input.c.x | 2890i) <= -28402i, !all(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true))), var_0.x, !func_4(vec4<i32>(2147483647i, -1i, 67730i, u_input.a), Struct_2(u_input.a, var_0.x, Struct_1(534f, vec3<f32>(1588f, -1044f, -1000f), vec3<f32>(-2133f, 596f, -1000f))), vec3<u32>(u_input.b, u_input.b, 14278u), Struct_4(4294967295u, vec3<i32>(u_input.a, 44499i, u_input.a), 780f, 857f, vec2<i32>(-15359i, u_input.c.x)))), vec4<bool>(true, !all(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, true))), var_0.x, true), false);
    var var_3 = !var_2.xwy;
    return Struct_3(_wgslsmith_f_op_f32(select(1823f, 1000f, !any(!var_2.zyz))), _wgslsmith_sub_vec2_u32(~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, u_input.b), vec2<u32>(u_input.b, 1u))), firstTrailingBit(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 29462u)), ~vec2<u32>(var_1, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(52034u, 0u), vec2<u32>(var_1, var_1))))), Struct_2(-1499i, var_0.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1191f)) * _wgslsmith_div_f32(-1019f, -372f)), vec3<f32>(_wgslsmith_f_op_f32(826f * -575f), _wgslsmith_f_op_f32(f32(-1f) * -1519f), -387f), vec3<f32>(913f, _wgslsmith_f_op_f32(abs(-1099f)), _wgslsmith_f_op_f32(f32(-1f) * -1480f)))));
}

fn func_1() -> u32 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = func_2();
    var var_1 = var_0;
    return ~15913u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-370f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, 367f, 220f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, -212f, 1000f) - vec3<f32>(-1560f, -511f, 938f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 687f, 1042f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(3317f, -863f, 200f))), any(vec2<bool>(true, true))))))));
    global0 = array<vec4<f32>, 21>();
    var var_1 = Struct_2(_wgslsmith_mult_i32(9359i, -_wgslsmith_dot_vec3_i32(u_input.c.ywy ^ vec3<i32>(-2147483647i, u_input.a, 2147483647i), u_input.c.xxw & u_input.c.zzz)), true, Struct_1(-486f, vec3<f32>(var_0.a, var_0.a, -1824f), vec3<f32>(_wgslsmith_div_f32(1315f, _wgslsmith_f_op_f32(1000f - -700f)), var_0.b.x, -282f)));
    var var_2 = 0u;
    var_1 = Struct_2(max(u_input.a, _wgslsmith_add_i32(-_wgslsmith_div_i32(-8041i, -17384i), -u_input.a ^ 38819i)), all(select(!(!vec4<bool>(var_1.b, true, var_1.b, false)), select(!vec4<bool>(var_1.b, true, false, false), vec4<bool>(false, true, false, var_1.b), !vec4<bool>(false, true, var_1.b, var_1.b)), !any(vec4<bool>(var_1.b, var_1.b, false, false)))), var_1.c);
    var var_3 = ~abs(vec3<u32>(_wgslsmith_mod_u32(max(86473u, u_input.b), 24587u), 1u, 15131u));
    var_3 = vec3<u32>(39606u, 45415u, max(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50333u, var_3.x), vec3<u32>(1u, 0u, 1u)))) ^ vec3<u32>(firstTrailingBit(47096u), _wgslsmith_mod_u32(func_1(), func_1()), ~abs(_wgslsmith_sub_u32(16094u, u_input.b)));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1599f, _wgslsmith_f_op_f32(f32(-1f) * -1717f))))));
    global0 = array<vec4<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<u32>(var_3.x, func_1(), 27883u));
}

