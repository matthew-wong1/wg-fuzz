struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, vec2<u32>(48289u, 0u), -2005f, vec3<f32>(2051f, -1630f, 295f)), Struct_1(4294967295u, vec2<u32>(10722u, 12127u), -442f, vec3<f32>(-577f, 1065f, 1103f)), Struct_1(11u, vec2<u32>(21252u, 71847u), 298f, vec3<f32>(1000f, 711f, -985f)), Struct_1(1u, vec2<u32>(0u, 18756u), 590f, vec3<f32>(-622f, -457f, -206f)), Struct_1(4294967295u, vec2<u32>(4294967295u, 2659u), 838f, vec3<f32>(-594f, 635f, 401f)), Struct_1(52141u, vec2<u32>(1u, 83109u), -1545f, vec3<f32>(-386f, 596f, 664f)), Struct_1(1u, vec2<u32>(1u, 4873u), 929f, vec3<f32>(469f, 1874f, -486f)), Struct_1(68635u, vec2<u32>(19564u, 4294967295u), 138f, vec3<f32>(474f, -1132f, 1567f)), Struct_1(20402u, vec2<u32>(1u, 4454u), 595f, vec3<f32>(-975f, 1409f, 1000f)), Struct_1(13003u, vec2<u32>(0u, 71439u), -1209f, vec3<f32>(1596f, -1876f, -844f)), Struct_1(4294967295u, vec2<u32>(23136u, 49115u), 136f, vec3<f32>(-1789f, -1888f, -221f)), Struct_1(4294967295u, vec2<u32>(8937u, 67446u), -383f, vec3<f32>(-2413f, -1066f, -1471f)), Struct_1(81795u, vec2<u32>(1u, 36167u), -781f, vec3<f32>(-576f, 712f, 1000f)), Struct_1(10478u, vec2<u32>(31009u, 0u), 315f, vec3<f32>(-614f, -1597f, 107f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = !(!vec4<bool>(true, false, false, any(!vec4<bool>(arg_0.x, false, false, arg_0.x))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.d.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d.xy + _wgslsmith_f_op_vec2_f32(-arg_1.d.zx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(743f, var_1.d.x) + vec2<f32>(-1000f, -1093f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-399f + -497f), _wgslsmith_f_op_f32(-arg_1.c)) - 682f);
    var var_4 = false;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-423f)) - _wgslsmith_div_f32(var_1.c, -979f))))));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -932f)))), -748f);
    let var_1 = u_input.a.yy;
    let var_2 = var_1;
    var var_3 = Struct_1(4294967295u, var_1 & ~(var_1 ^ min(u_input.a.zy, u_input.a.yy)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), Struct_1(var_1.x, u_input.a.zy, var_0, vec3<f32>(1365f, 1377f, 787f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(var_1.x, 14u)]))))))));
    return 332f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32((~26384u & _wgslsmith_dot_vec4_u32(max(u_input.a, ~u_input.a), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), u_input.a, vec4<bool>(arg_1, false, arg_1, arg_1)))) >> (_wgslsmith_sub_u32(4743u, _wgslsmith_clamp_u32(max(u_input.a.x, 80076u), ~(~0u), _wgslsmith_mult_u32(1u, ~16628u))) % 32u), 14u)];
    global0 = array<Struct_1, 14>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
    global0 = array<Struct_1, 14>();
    var var_2 = global0[_wgslsmith_index_u32(32161u, 14u)];
    return ~0u;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f));
    global0 = array<Struct_1, 14>();
    let var_1 = Struct_1(_wgslsmith_add_u32(26266u, ~abs(38026u)), (arg_1.b & vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.b.x), 54517u)) >> (~arg_1.b % vec2<u32>(32u)), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1319f, arg_3.x, arg_1.c))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.xxz, vec3<f32>(arg_0.x, -1000f, arg_3.x)))))));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return vec2<u32>(~_wgslsmith_sub_u32(~105061u & u_input.a.x, _wgslsmith_add_u32(~1u, 4294967295u & arg_1.b.x)), arg_1.b.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_1, 14>();
    let var_0 = Struct_1(~arg_0.x, func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(671f * arg_1), _wgslsmith_f_op_f32(step(-421f, arg_1))))), Struct_1(func_4(_wgslsmith_f_op_f32(func_2()), u_input.c <= -2147483647i, -1985f), ~vec2<u32>(arg_0.x, 2197u), _wgslsmith_f_op_f32(select(-583f, 123f, any(vec2<bool>(true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1))))), vec2<bool>(true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1126f, arg_1, arg_1) - vec4<f32>(-1063f, 377f, arg_1, -313f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 244f, -528f, arg_1))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(269f, 1000f, arg_1, -1000f), vec4<f32>(1000f, arg_1, arg_1, -354f), true))))), 384f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(591f, 393f, var_0.d.x, var_0.c) + vec4<f32>(-556f, -1010f, 1768f, var_0.d.x)))), vec4<f32>(-1014f, var_0.d.x, 156f, 1000f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(420f, -675f, var_0.d.x, 3078f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -580f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, 1622f, arg_1, var_0.c), vec4<f32>(406f, arg_1, -187f, var_0.c))) * vec4<f32>(-1928f, arg_1, -1340f, var_0.c)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, false, false), true)))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.a.x, min(4294967295u, ~1u))), var_2.b);
    return global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    var var_0 = u_input.a.x;
    global0 = array<Struct_1, 14>();
    var var_1 = 1u;
    var_1 = u_input.a.x;
    var var_2 = func_1(u_input.a.yxw, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-232f))))));
    var var_3 = -28437i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-68415i >> (var_2.a % 32u)), -19954i), select(u_input.b, -vec2<i32>(u_input.b.x, 32493i), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.yy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(733f, var_2.c) + var_2.d.xx)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f * -1547f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c * 1390f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_2.c - var_2.c), -1000f, var_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1775f, 1412f, 140f) + vec3<f32>(225f, 302f, var_2.d.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, var_2.d.x, 402f))))), vec4<u32>(var_2.b.x, 20807u, 1u, _wgslsmith_mult_u32(var_2.a, ~(~54u))));
}

