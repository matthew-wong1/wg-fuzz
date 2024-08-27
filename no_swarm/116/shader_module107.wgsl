struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
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

var<private> global0: array<f32, 3>;

var<private> global1: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-590f, -136f, 436f), vec3<f32>(522f, 142f, -834f), vec3<f32>(211f, -908f, -787f), vec3<f32>(847f, -1000f, -881f), vec3<f32>(-1111f, 1639f, -515f), vec3<f32>(328f, 441f, 1133f), vec3<f32>(1272f, -995f, -196f), vec3<f32>(715f, 646f, -1962f), vec3<f32>(1837f, -787f, 1409f), vec3<f32>(-406f, -1029f, 1357f), vec3<f32>(232f, -252f, 1055f), vec3<f32>(235f, -473f, -219f), vec3<f32>(-174f, -1877f, -1119f), vec3<f32>(1000f, 1232f, 426f), vec3<f32>(-1035f, 1064f, -1690f), vec3<f32>(887f, 832f, -1000f), vec3<f32>(-692f, 811f, -1132f), vec3<f32>(-345f, 1264f, 137f), vec3<f32>(-210f, 667f, 1515f), vec3<f32>(-185f, 481f, -739f), vec3<f32>(342f, 308f, 941f), vec3<f32>(-1331f, -443f, 777f), vec3<f32>(-388f, 392f, -1158f), vec3<f32>(-1158f, -125f, 1156f), vec3<f32>(1196f, 323f, -1842f), vec3<f32>(839f, -113f, -1156f), vec3<f32>(-724f, -2064f, -488f), vec3<f32>(267f, -850f, 499f), vec3<f32>(-233f, 1543f, 562f), vec3<f32>(-908f, -1354f, 1337f), vec3<f32>(450f, -1459f, 1000f), vec3<f32>(-809f, -2331f, 698f));

var<private> global2: array<i32, 23> = array<i32, 23>(0i, 25432i, 2147483647i, 2147483647i, -287i, 1i, 8863i, 1i, 44863i, -20948i, 0i, 18534i, 1i, 0i, -6840i, 1i, -12122i, 53436i, -1i, 49915i, i32(-2147483648), 8819i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = firstTrailingBit(u_input.a.yz);
    let var_1 = !(!(global0[_wgslsmith_index_u32(~var_0.x, 3u)] >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1033f + global0[_wgslsmith_index_u32(1u, 3u)]) - -923f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(274f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))));
    var var_3 = Struct_3(4294967295u);
    global1 = array<vec3<f32>, 32>();
    return _wgslsmith_f_op_f32(round(var_2));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = select(select(vec2<i32>(1i, -(0i << (arg_0.x % 32u))), ~(-(~vec2<i32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(11725u, 23u)]))), arg_1.a.xz), _wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.d, -22257i) | ~vec2<i32>(u_input.d, global2[_wgslsmith_index_u32(0u, 23u)])), ~vec2<i32>(firstLeadingBit(-48697i), max(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]))), any(vec3<bool>(true, arg_1.a.x, false)));
    var var_1 = Struct_5(false, _wgslsmith_f_op_f32(func_3(0i != u_input.d)), Struct_2(arg_1.c.x, arg_1, arg_0, Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.c, vec4<f32>(arg_1.b, -356f, 208f, arg_1.b)))), u_input.d), u_input.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, countOneBits(4294967295u)), vec2<u32>(arg_0.x, ~4294967295u)));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(0u, 23u)] == 54112i)), _wgslsmith_f_op_f32(ceil(arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-925f - 468f), _wgslsmith_f_op_f32(min(arg_1.b, -1088f)), arg_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] - var_1.c.a))))), arg_1, _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(65425u, 0u, 4294967295u), reverseBits(vec3<u32>(u_input.a.x, 0u, var_1.e))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 6248u), ~vec2<u32>(u_input.b.x, var_1.c.c.x)), 0u), reverseBits(arg_0)), Struct_1(!vec4<bool>(false || var_1.c.d.a.x, false, var_1.c.d.a.x, arg_1.a.x | false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.c.x * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c.c.x, 3u)]))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 781f, arg_1.b, 535f)), _wgslsmith_mult_i32(2851i, _wgslsmith_dot_vec2_i32(var_0 | vec2<i32>(u_input.d, 31984i), firstTrailingBit(vec2<i32>(26548i, var_1.c.e))) ^ var_0.x));
    global0 = array<f32, 3>();
    var var_3 = Struct_3(1u);
    return arg_1.a.x;
}

fn func_1() -> vec4<bool> {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, u_input.b.x ^ 37991u, 0u), 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))));
    return vec4<bool>(false, all(select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true))), true, func_2(vec4<u32>(abs(u_input.a.x), reverseBits(25815u >> (u_input.b.x % 32u)), u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c)), Struct_1(vec4<bool>(any(vec3<bool>(false, true, false)), true, all(vec2<bool>(false, true)), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.c, 3u)])), -1777f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(91140u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], var_0.x, -687f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1141f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -292f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 3u)] == -1001f, select(global2[_wgslsmith_index_u32(0u, 23u)] > u_input.d, any(vec4<bool>(false, true, false, false)), true), true, false), func_1(), !func_1());
    var var_1 = !any(select(select(var_0.yz, !var_0.zy, var_0.zy), vec2<bool>(true, true), vec2<bool>(any(var_0.xz), u_input.a.x == u_input.b.x)));
    global2 = array<i32, 23>();
    global0 = array<f32, 3>();
    let var_2 = Struct_5(select(func_1().x, var_0.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b.x, 3u)]) * global0[_wgslsmith_index_u32(~4294967295u, 3u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-117f * 405f))))), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 3u)], Struct_1(select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, true, var_0.x), false), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, true, false, false)), func_1()), _wgslsmith_f_op_f32(round(447f)), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(111977u, 5706u), 3u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(34652u, 3u)]), -1530f, _wgslsmith_f_op_f32(abs(812f)))), u_input.b, Struct_1(vec4<bool>(true, true, true, false & var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1500f + 640f), global0[_wgslsmith_index_u32(~1655u, 3u)], func_2(u_input.b, Struct_1(vec4<bool>(false, var_0.x, true, true), global0[_wgslsmith_index_u32(u_input.c, 3u)], vec4<f32>(2542f, global0[_wgslsmith_index_u32(81349u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(1301u, 3u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-265f - -862f), -199f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] + -2878f), -1769f)), -2147483647i), -15160i, ~(~24506u ^ u_input.a.x) << (~u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

