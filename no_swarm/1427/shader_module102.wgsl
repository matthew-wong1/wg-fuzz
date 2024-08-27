struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(393f, -505f, 1448f, -173f), vec4<f32>(1288f, 1000f, 723f, 1151f), vec4<f32>(-725f, 1726f, 392f, -619f), vec4<f32>(718f, -413f, -222f, -1635f), vec4<f32>(614f, 638f, 355f, 272f), vec4<f32>(-392f, 1563f, 221f, -682f), vec4<f32>(342f, -599f, 290f, 552f), vec4<f32>(295f, -2225f, 1000f, -256f), vec4<f32>(943f, 843f, 2132f, -1211f), vec4<f32>(-1000f, 1753f, 479f, -475f), vec4<f32>(-1900f, 295f, 1048f, 761f), vec4<f32>(1428f, 117f, -189f, 452f), vec4<f32>(287f, 220f, 309f, 627f), vec4<f32>(-1015f, 676f, -971f, 1138f), vec4<f32>(569f, 641f, -574f, 849f), vec4<f32>(-701f, 1135f, -1588f, 1438f), vec4<f32>(-320f, -1444f, -976f, -1287f), vec4<f32>(432f, 330f, -369f, -299f), vec4<f32>(-284f, -374f, 217f, -1000f), vec4<f32>(-1858f, 1000f, -947f, 259f), vec4<f32>(-303f, -304f, 150f, 2154f), vec4<f32>(-279f, -520f, -1000f, -679f), vec4<f32>(1000f, -1000f, 643f, 900f), vec4<f32>(2184f, 1000f, 439f, -1052f), vec4<f32>(-993f, -1723f, 266f, -820f), vec4<f32>(-689f, 883f, 1709f, 1263f), vec4<f32>(213f, 808f, -1618f, 1270f), vec4<f32>(1000f, -790f, 396f, -234f), vec4<f32>(-1219f, 599f, 794f, -637f), vec4<f32>(-1059f, 351f, -112f, -1604f));

var<private> global3: i32 = -1i;

var<private> global4: array<Struct_4, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> bool {
    return select(arg_1.a.d, !select(any(arg_1.a.a), arg_1.a.c == -1570f, select(arg_1.a.d, arg_1.b, arg_1.a.d)), true) | !arg_1.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_4, 16>();
    var var_0 = global4[_wgslsmith_index_u32(abs(27025u), 23u)];
    global4 = array<Struct_4, 23>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-644f - -222f))), var_0.a.a.a.c, -277f, 1025f);
    var var_2 = Struct_5(368f, var_1.xyz, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1207f), -1812f, 855f, _wgslsmith_f_op_f32(-415f * var_0.a.a.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, var_1.x, var_0.a.a.a.c, -1173f) + var_1)))))), true || any(!vec3<bool>(var_0.a.a.a.a.x, false, false)));
    return Struct_1(vec2<bool>(any(vec3<bool>(var_2.d, any(vec3<bool>(var_2.d, true, var_2.d)), false)), true), global1.x, -1582f, !any(vec4<bool>(false, all(vec3<bool>(arg_1.x, arg_1.x, false)), true, arg_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c, -1305f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.c, 451f))))))));
    var var_1 = arg_2.a.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.c, arg_0.c, arg_2.a.c) - _wgslsmith_div_vec3_f32(vec3<f32>(1558f, -721f, arg_1.a.c), vec3<f32>(var_0.x, -2658f, -198f))))) * vec3<f32>(388f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-905f)))), arg_2.a.c))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(542f - arg_0.c))), _wgslsmith_f_op_f32(-938f * 431f), 1i == u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a.c)) - _wgslsmith_f_op_f32(529f * var_0.x)), -1014f, !(arg_2.a.c == -1000f))))));
    global2 = array<vec4<f32>, 30>();
    return Struct_5(-1673f, _wgslsmith_f_op_vec3_f32(var_3.wwz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3.xyx)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, 407f, var_3.x)), var_3.wyy))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(19533u, 30u)]), !all(select(!vec4<bool>(false, true, arg_0.a.x, false), select(vec4<bool>(true, false, arg_1.a.a.d, arg_0.a.x), vec4<bool>(arg_2.a.a.a.x, false, arg_0.a.x, false), vec4<bool>(false, false, arg_2.a.a.a.x, false)), true)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> u32 {
    var var_0 = func_4(func_3(~vec2<u32>(_wgslsmith_sub_u32(arg_2, arg_1.a.a.d), 39004u), select(arg_1.a.a.a.a, arg_1.a.a.a.a, !func_2(61868u, Struct_2(Struct_1(arg_1.a.a.a.a, global1.x, -449f, false), false, arg_0, 1u)))), arg_1.a, Struct_3(arg_1.a.a));
    var var_1 = Struct_4(Struct_3(Struct_2(arg_1.a.a.a, var_0.d, arg_1.a.a.c, 44093u)), _wgslsmith_mult_i32(-arg_1.a.a.a.b, min(~2557i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.a.a.b, -6413i), vec2<i32>(-29112i, arg_1.b)), -u_input.b | global1.x)));
    var var_2 = 1713f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.xw - _wgslsmith_f_op_vec2_f32(round(var_0.b.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.ww))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.wy - vec2<f32>(arg_0, var_1.a.a.c)) + vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(1000f))))));
    let var_4 = !vec4<bool>(var_1.a.a.b, var_1.a.a.a.d, var_0.d, arg_1.a.a.b);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(vec4<u32>(~61526u, select(63109u, func_1(1329f, Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), 12118i, 514f, false), false, 763f, 18793u)), u_input.b), u_input.c.x), false), ~u_input.a & 1u, 68473u));
    let var_1 = var_0.x;
    global2 = array<vec4<f32>, 30>();
    global0 = array<Struct_4, 16>();
    let var_2 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_i32(29305i, ~u_input.b, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -716f), true), true == func_4(Struct_1(vec2<bool>(false, false), 2147483647i, 1000f, true), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), u_input.b, 1631f, false), true, 721f, 0u)), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), -1i, 1888f, false), false, 950f, var_1))).d, -178f, ~select(_wgslsmith_mult_u32(0u, u_input.c.x), max(var_0.x, var_1), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(4294967295u, u_input.a), _wgslsmith_mod_vec2_i32(-max(~vec2<i32>(1i, var_2.a.a.b), ~vec2<i32>(-23560i, 33729i)), vec2<i32>(-51203i, u_input.b)), var_2.a.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.c, var_2.a.c, _wgslsmith_div_f32(224f, _wgslsmith_f_op_f32(min(var_2.a.a.c, 444f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1184f)), var_2.a.c, _wgslsmith_f_op_f32(var_2.a.c * -2242f)))));
}

