struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 6>;

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(1811f, 1000f, 778f, 881f), vec4<f32>(-1401f, -465f, -320f, -272f), vec4<f32>(430f, 1877f, 961f, -1429f), vec4<f32>(494f, -647f, -805f, 1298f), vec4<f32>(2306f, -2173f, -1428f, 1135f), vec4<f32>(-1000f, 306f, 661f, 741f), vec4<f32>(-251f, -1000f, 619f, -1291f), vec4<f32>(456f, -1968f, -830f, 1833f), vec4<f32>(1256f, 317f, -476f, 1618f), vec4<f32>(-394f, 260f, 1161f, 155f), vec4<f32>(1040f, -1000f, 761f, -259f), vec4<f32>(-473f, -1382f, -647f, 841f), vec4<f32>(-326f, -1019f, -434f, 527f), vec4<f32>(-116f, 949f, 2719f, -103f), vec4<f32>(-513f, -874f, -147f, 609f), vec4<f32>(1000f, -807f, -460f, -1725f), vec4<f32>(-1581f, 701f, -396f, 1009f), vec4<f32>(1438f, 1679f, 1641f, 2966f), vec4<f32>(1187f, -517f, 201f, -3093f), vec4<f32>(1000f, -1000f, 233f, -1000f), vec4<f32>(1472f, -750f, -119f, 1482f), vec4<f32>(-949f, -161f, -529f, -1290f), vec4<f32>(-810f, 347f, -784f, -1184f), vec4<f32>(-801f, -213f, -1497f, -832f), vec4<f32>(209f, -1315f, -287f, -246f), vec4<f32>(751f, -1000f, -1693f, -429f), vec4<f32>(174f, -1170f, 2208f, 932f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = array<i32, 6>();
    let var_0 = Struct_5(vec2<f32>(-190f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0.a.x)) + _wgslsmith_f_op_f32(-global0.a.x))))));
    let var_1 = 1u;
    var var_2 = Struct_4(Struct_2(global0.a.x, var_1 > var_1, Struct_1(true, var_1, abs(vec2<i32>(0i, 1i)))), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(select(var_1, 12834u, true), 36380u)), abs(~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, var_0.a.x, global0.a.x) + vec3<f32>(var_0.a.x, var_0.a.x, 596f)))) - vec3<f32>(var_0.a.x, var_0.a.x, global0.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1491f, _wgslsmith_f_op_f32(f32(-1f) * -447f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x))))), global0.a.x);
    global1 = array<i32, 6>();
    return var_2.a.c.b;
}

fn func_2() -> vec2<bool> {
    let var_0 = global0.a.x;
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~4294967295u), ~func_3(global1[_wgslsmith_index_u32(47823u, 6u)])), func_3(~min(global1[_wgslsmith_index_u32(6069u, 6u)], -69494i))));
    var var_2 = Struct_2(global0.a.x, false, Struct_1(_wgslsmith_div_f32(global0.a.x, -535f) >= global0.a.x, 83936u, ~(-(~vec2<i32>(global1[_wgslsmith_index_u32(8498u, 6u)], 2147483647i)))));
    let var_3 = ~global1[_wgslsmith_index_u32(firstTrailingBit(1u), 6u)];
    var var_4 = var_2.c.c.x;
    return vec2<bool>(true, (-11393i >> (_wgslsmith_clamp_u32(~71365u, ~17095u, var_2.c.b) % 32u)) != firstTrailingBit(u_input.a));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> bool {
    var var_0 = vec2<bool>(true, true);
    let var_1 = ~countOneBits(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(110974u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u)))) & ~max(countOneBits(1u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29969u, 108999u, 4294967295u), vec4<u32>(10129u, 0u, 20831u, 25819u))));
    var_0 = select(!func_2(), vec2<bool>(arg_1.x, global0.a.x <= -512f), false);
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(85805u, _wgslsmith_sub_u32(~var_1 << (~var_1 % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1, var_1), ~var_1)), ~(reverseBits(var_1) >> ((var_1 & 4294967295u) % 32u)), ~(~_wgslsmith_clamp_u32(1u, 32497u, var_1))), ~abs(vec4<u32>(~var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 135u), vec2<u32>(18544u, 37491u)), 1u, ~var_1)));
    global2 = array<vec4<i32>, 10>();
    return arg_0 & true;
}

fn func_4(arg_0: f32, arg_1: bool) -> f32 {
    global2 = array<vec4<i32>, 10>();
    global3 = array<vec4<f32>, 27>();
    var var_0 = -916f;
    var_0 = -805f;
    var var_1 = Struct_3(vec2<bool>(true || any(!vec4<bool>(arg_1, false, arg_1, false)), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + 670f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(1080f));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-932f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - global0.a.x)), select(func_1(true, vec4<bool>(true, true, true, false)), true, true)))), _wgslsmith_f_op_f32(1f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a.x, var_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(-1409f + global0.a.x))))), _wgslsmith_f_op_f32(sign(var_0)));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global2 = array<vec4<i32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -809f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0, false)) * -1227f))), vec4<u32>(reverseBits(reverseBits(_wgslsmith_clamp_u32(61580u, 0u, 75703u))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(76297u, 24698u), _wgslsmith_div_u32(1u, 1u)), vec2<u32>(~47584u, 82276u)), ~(~0u), ~(~countOneBits(0u))));
}

