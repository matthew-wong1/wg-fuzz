struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33917i;

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(651f, -981f, 582f, -438f), vec4<f32>(1000f, -683f, 345f, 1827f), vec4<f32>(966f, 442f, -505f, -507f), vec4<f32>(1416f, 1023f, -360f, -922f), vec4<f32>(2678f, -1000f, 2215f, -1825f), vec4<f32>(-370f, 752f, 671f, 1027f), vec4<f32>(-1432f, -981f, -1000f, -1345f), vec4<f32>(-333f, -622f, -1658f, -317f), vec4<f32>(1000f, 1274f, 1289f, -844f), vec4<f32>(1575f, 1000f, 812f, -2221f), vec4<f32>(-1359f, -559f, -785f, 508f), vec4<f32>(506f, 991f, -142f, 1000f), vec4<f32>(2559f, -406f, 1062f, 902f), vec4<f32>(-802f, -1054f, 1000f, -432f), vec4<f32>(1299f, -1000f, -1042f, 594f), vec4<f32>(-733f, 1782f, 286f, -774f), vec4<f32>(2039f, 476f, 1311f, 1378f), vec4<f32>(-1227f, -935f, 1188f, -1815f), vec4<f32>(-1109f, -1002f, -167f, 1114f), vec4<f32>(368f, -702f, 132f, 1006f), vec4<f32>(-278f, 1000f, 811f, -603f), vec4<f32>(764f, 424f, 1000f, -336f), vec4<f32>(-1000f, -465f, -1012f, 631f), vec4<f32>(-506f, -201f, -829f, -218f), vec4<f32>(1286f, -438f, 1131f, -408f), vec4<f32>(-907f, 242f, 1000f, -991f), vec4<f32>(771f, 106f, -572f, -1591f), vec4<f32>(-1641f, -750f, 774f, -1904f), vec4<f32>(-1026f, -213f, 2791f, -1332f), vec4<f32>(-447f, -1524f, 1015f, 2100f));

var<private> global2: array<vec3<u32>, 29>;

var<private> global3: Struct_3;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = vec4<u32>(global3.a.x, 4294967295u, ~(global3.a.x ^ ~global3.a.x), global3.a.x ^ _wgslsmith_mult_u32(~14861u, ~_wgslsmith_mult_u32(global3.a.x, 1u)));
    let var_1 = !(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-1713f, -808f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(-483f - global3.b)), _wgslsmith_f_op_f32(global3.b - _wgslsmith_div_f32(-1000f, global3.b))), 1000f)), -1000f);
    global1 = array<vec4<f32>, 30>();
    global2 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.x)))), 439f)), _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1604f)) + var_2.x)))) * var_2.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(trunc(global3.b))) <= arg_0.x, !any(vec2<bool>(false, false)), false);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-159f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), vec2<u32>(62648u, ~firstLeadingBit(abs(0u))), Struct_3(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(27913u, 4294967295u, global3.a.x, 3398u), vec4<u32>(global3.a.x, global3.a.x, 0u, 27540u))) ^ vec4<u32>(global3.a.x, min(1u, 0u), ~global3.a.x, _wgslsmith_mod_u32(global3.a.x, 30846u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-247f, -473f))))), ~0i);
    var_0 = select(!(!select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, true)))), select(!select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), all(vec4<bool>(var_0.x, true, var_0.x, true))), vec3<bool>(true, true, 669f > _wgslsmith_f_op_f32(sign(937f))), var_0.x), false);
    var var_2 = arg_0;
    let var_3 = !vec3<bool>(var_0.x, (2147483647i <= max(u_input.b.x, u_input.a.x)) | any(select(vec2<bool>(var_0.x, false), var_0.zz, var_0.zx)), true);
    return global3.a.x;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_mult_i32(26030i, u_input.a.x);
    let var_0 = 34187i;
    let var_1 = vec4<u32>(~1u, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.b, global3.b, global3.b))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.b, -518f, global3.b))))), var_0), _wgslsmith_mod_u32(~(~global3.a.x), global3.a.x), _wgslsmith_mod_u32(13367u, _wgslsmith_add_u32(global3.a.x, min(~22550u, min(global3.a.x, global3.a.x)))));
    global3 = Struct_3(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.b)))) + global3.b));
    global3 = Struct_3(global3.a, global3.b);
    return _wgslsmith_clamp_u32(min(4313u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(global3.a.x, 0u)))), abs(global3.a.x), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 29>();
    var var_0 = firstTrailingBit(~(~_wgslsmith_div_i32(_wgslsmith_div_i32(-57940i, u_input.b.x), abs(1i))));
    global2 = array<vec3<u32>, 29>();
    let var_1 = Struct_3(~_wgslsmith_div_vec4_u32(vec4<u32>(abs(132226u), func_1(), ~45382u, global3.a.x), global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b))) + _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(f32(-1f) * -1845f))) + global3.b));
    var var_2 = vec2<u32>(17681u, ~(~(~(~1u))));
    global1 = array<vec4<f32>, 30>();
    let var_3 = vec3<i32>(min(~_wgslsmith_dot_vec2_i32(max(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(0i, u_input.a.x))), u_input.a.x), -79172i, -2147483647i);
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(vec3<u32>(global3.a.x, var_4.x, var_4.x & var_1.a.x)), min(~vec3<u32>(4294967295u, var_2.x, 0u), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_4.x, var_2.x), var_1.a.ywx, vec3<u32>(1u, 1u, var_1.a.x))))), -u_input.a.x, ~max(-5937i, ~(-1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2213f, -1613f, 213f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, var_1.b, var_1.b))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1927f, 594f, -426f), vec3<f32>(global3.b, var_1.b, global3.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, 112f, 184f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, -927f, var_1.b) * vec3<f32>(var_1.b, global3.b, var_1.b))))));
}

