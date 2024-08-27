struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, true), vec2<i32>(1i, 38623i), vec4<bool>(true, false, true, true), -355f), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, true, true, true), 1000f), Struct_1(vec2<bool>(false, false), vec2<i32>(-22344i, 34386i), vec4<bool>(false, true, false, true), 551f), Struct_1(vec2<bool>(false, true), vec2<i32>(17961i, i32(-2147483648)), vec4<bool>(true, true, false, true), -285f), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 32573i), vec4<bool>(true, true, true, false), 1650f), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, -9168i), vec4<bool>(false, true, false, false), 447f), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 2147483647i), vec4<bool>(true, true, false, false), -1513f), Struct_1(vec2<bool>(true, true), vec2<i32>(15338i, -5394i), vec4<bool>(true, false, true, true), 1678f), Struct_1(vec2<bool>(true, false), vec2<i32>(-18616i, 48105i), vec4<bool>(false, false, false, true), 686f), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 3177i), vec4<bool>(true, false, false, false), 1294f), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 3896i), vec4<bool>(true, false, true, true), 445f), Struct_1(vec2<bool>(false, false), vec2<i32>(-19206i, -1i), vec4<bool>(false, false, false, false), -1399f), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, 29360i), vec4<bool>(true, true, true, true), 114f), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 1i), vec4<bool>(true, false, false, true), -941f), Struct_1(vec2<bool>(true, true), vec2<i32>(6510i, i32(-2147483648)), vec4<bool>(true, false, false, false), -631f), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, false), -1000f), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, 19047i), vec4<bool>(true, true, true, true), 1671f), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 76435i), vec4<bool>(true, false, true, true), -1260f));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, true), vec2<i32>(78980i, -38940i), vec4<bool>(false, true, true, false), -913f), vec3<f32>(-1000f, 1439f, 1033f), 21795i), Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, true), vec2<i32>(63989i, -44863i), vec4<bool>(false, false, false, false), -643f), vec3<f32>(-2330f, 1303f, -652f), -22365i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec2<i32>(29773i, i32(-2147483648)), vec4<bool>(false, false, true, false), -445f), vec3<f32>(2049f, 835f, 1016f), 17248i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec2<i32>(21024i, 2147483647i), vec4<bool>(false, true, false, true), 549f), vec3<f32>(725f, -287f, -1015f), 0i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec2<i32>(75673i, i32(-2147483648)), vec4<bool>(false, false, true, true), -747f), vec3<f32>(-1669f, 1618f, 283f), 55314i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(false, true), vec2<i32>(18328i, -27299i), vec4<bool>(true, false, true, false), 1196f), vec3<f32>(-2303f, 874f, 617f), -12207i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, -29760i), vec4<bool>(false, true, true, true), 1000f), vec3<f32>(1942f, -1446f, 724f), 2147483647i), Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(false, false), vec2<i32>(-24690i, 2147483647i), vec4<bool>(false, true, false, false), 221f), vec3<f32>(1412f, -1198f, 2679f), 0i), Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 10109i), vec4<bool>(false, true, false, false), 184f), vec3<f32>(-1688f, 223f, 741f), -1i), Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, true, true, false), -1462f), vec3<f32>(-242f, -1011f, 493f), -1i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 13835i), vec4<bool>(false, true, true, true), -941f), vec3<f32>(-206f, 1733f, 1443f), 0i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, false), vec2<i32>(-8265i, 2147483647i), vec4<bool>(false, true, true, true), 578f), vec3<f32>(-384f, -737f, 1000f), 1i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec2<i32>(33472i, -69792i), vec4<bool>(false, false, true, false), 1035f), vec3<f32>(-1295f, 1869f, 802f), -1i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 11971i), vec4<bool>(true, true, true, false), 1187f), vec3<f32>(1195f, -2135f, 241f), -1i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -15150i), vec4<bool>(false, false, false, false), 1995f), vec3<f32>(-494f, -402f, -839f), 26790i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(arg_1.c.yw, Struct_1(!(!select(arg_1.c.xy, vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(arg_1.a.x, arg_1.c.x))), u_input.b.yz, !vec4<bool>(true, !arg_1.c.x, false != arg_1.c.x, false), _wgslsmith_f_op_f32(min(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d, -396f, arg_1.d), vec3<f32>(arg_1.d, arg_1.d, 1417f), arg_1.c.zyw)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 669f, 493f) + vec3<f32>(1048f, arg_1.d, arg_1.d))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-652f, arg_1.d, 2361f) - vec3<f32>(796f, arg_1.d, arg_1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1268f, -129f, -179f) - vec3<f32>(-328f, -284f, -1000f)))))), firstTrailingBit(1i));
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_1(arg_1.a, -vec2<i32>(arg_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), u_input.b) << (53405u % 32u)), !(!arg_1.c), -1242f);
    let var_2 = Struct_1(!select(vec2<bool>(true, 4294967295u < u_input.a), var_1.a, select(vec2<bool>(true, true), vec2<bool>(arg_1.a.x, var_0.b.a.x), select(vec2<bool>(true, var_1.c.x), vec2<bool>(var_0.b.c.x, false), var_1.c.x))), vec2<i32>(u_input.b.x, u_input.b.x), !(!vec4<bool>(false, var_1.a.x, var_1.b.x <= 13773i, var_0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1250f, arg_1.d) * _wgslsmith_f_op_f32(f32(-1f) * -1904f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d, var_0.b.d, false)) * 866f)))));
    global0 = array<Struct_1, 18>();
    return arg_0.x < 32160u;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    global1 = array<Struct_2, 15>();
    let var_0 = select(arg_1.zy, vec2<bool>(arg_1.x || any(arg_1.zy), !func_3(u_input.e, global0[_wgslsmith_index_u32(~4294967295u, 18u)])), arg_1.yx);
    var var_1 = !any(!vec2<bool>(true, arg_1.x));
    global1 = array<Struct_2, 15>();
    let var_2 = -2147483647i;
    return 2097f;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    global0 = array<Struct_1, 18>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~abs(u_input.b.x), vec3<bool>(true, true, true), ~_wgslsmith_sub_i32(-2147483647i, u_input.b.x))) * _wgslsmith_f_op_f32(select(804f, _wgslsmith_f_op_f32(-1f), !any(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1497f)) * _wgslsmith_div_f32(-1735f, 552f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(step(1000f, 561f)))))));
    global1 = array<Struct_2, 15>();
    var var_1 = ~(1i ^ u_input.b.x);
    var var_2 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(u_input.b.x >= -16243i, true)), -min(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 34792i), u_input.b.xz), _wgslsmith_mod_vec2_i32(vec2<i32>(38629i, -1i), select(vec2<i32>(-8695i, 23251i), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, false)))), select(select(vec4<bool>(1134f < var_0.x, true, any(vec2<bool>(false, true)), 2147483647i < u_input.b.x), vec4<bool>(any(vec2<bool>(false, false)), true, false, arg_0 != 30812u), vec4<bool>(83959u < arg_0, var_0.x <= 724f, any(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, false, true)))), vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), true, var_0.x <= _wgslsmith_f_op_f32(var_0.x - var_0.x)), true), var_0.x);
    return -286f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(~5134u, ~(~vec4<u32>(11505u, 1u, 15179u, u_input.c)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(868f, 708f)), -1529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -731f))))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(-1211f + 992f))), 139f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(108f, -1000f))), _wgslsmith_f_op_f32(func_2(31446i, vec3<bool>(true, true, true), u_input.b.x))), _wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), -935f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-658f, var_1.x, true))));
    var var_2 = -1i;
    let var_3 = ~(-_wgslsmith_sub_i32(u_input.b.x | 0i, u_input.b.x));
    var_0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xy);
}

