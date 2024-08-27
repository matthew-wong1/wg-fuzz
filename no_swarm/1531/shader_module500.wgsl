struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, true, false, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-509f, arg_0.b, -615f, -1903f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, arg_1.x, arg_0.b, arg_1.x)) - vec4<f32>(724f, arg_1.x, arg_1.x, arg_0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1863f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(385f, 1003f, 942f, 1319f) + vec4<f32>(413f, arg_1.x, arg_1.x, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1901f, arg_0.b, arg_1.x, 716f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2288f, arg_0.b, arg_0.b, 1253f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1636f, 2426f, -1888f, arg_0.b) * vec4<f32>(-1211f, -436f, arg_1.x, arg_0.b)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_1.x, -428f, arg_0.b))))))));
    global0 = array<bool, 8>();
    let var_1 = vec3<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 8u)] & !(!arg_0.a.x)), false, true);
    global0 = array<bool, 8>();
    return select(vec2<bool>(true, var_1.x), !var_1.zz, !all(var_1));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_1(max(~(~vec4<u32>(u_input.d, 69477u, 4294967295u, 0u)), ~vec4<u32>(~4294967295u, 4294967295u, ~u_input.c, _wgslsmith_mod_u32(u_input.d, 24505u))));
    var var_1 = Struct_3(func_2(Struct_4(arg_0.a, arg_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, arg_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 2536f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, arg_0.b))))), 1i), true);
    let var_2 = -798f;
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 66510u, u_input.d, var_0.a.x), var_0.a), var_0.a.x, _wgslsmith_mod_u32(u_input.c, u_input.c), 4294967295u) | ~(~var_0.a)));
    var_1 = Struct_3(arg_0.a, false);
    return ~19250u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = all(vec4<bool>(all(func_2(Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 8u)], false), 425f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, -987f)), u_input.b.x)), global0[_wgslsmith_index_u32(func_3(Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 8u)], true), _wgslsmith_f_op_f32(429f - -249f))), 8u)], !(!global0[_wgslsmith_index_u32(arg_1.x, 8u)]), true));
    var var_1 = Struct_4(!select(select(!vec2<bool>(global0[_wgslsmith_index_u32(35940u, 8u)], false), func_2(Struct_4(vec2<bool>(true, false), -1055f), vec2<f32>(-599f, -757f), u_input.e), all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)]))), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 8u)], false), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(arg_2.a.x, 8u)]))), func_2(Struct_4(vec2<bool>(true, true), -506f), vec2<f32>(-171f, -2136f), ~u_input.a.x)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) - _wgslsmith_f_op_f32(round(540f))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(arg_1.x << (arg_3 % 32u)), ~(~arg_2.a.x), arg_2.a.x), 8u)])));
    var_1 = Struct_4(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_1.b))) * var_1.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b, var_1.b))) * var_1.b)));
    var var_2 = select(select(select(vec4<bool>(false | global0[_wgslsmith_index_u32(arg_1.x, 8u)], false, true, !global0[_wgslsmith_index_u32(30410u, 8u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)], var_1.a.x, true), true), select(select(vec4<bool>(var_1.a.x, true, false, var_1.a.x), select(vec4<bool>(true, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 8u)], true, true, true), vec4<bool>(false, var_1.a.x, true, true)), !vec4<bool>(var_1.a.x, false, global0[_wgslsmith_index_u32(32499u, 8u)], true)), !(!vec4<bool>(true, true, var_1.a.x, true)), !func_2(Struct_4(vec2<bool>(var_1.a.x, true), -680f), vec2<f32>(1000f, 431f), u_input.b.x).x), true), select(select(vec4<bool>(var_1.a.x, !var_1.a.x, global0[_wgslsmith_index_u32(103646u, 8u)] | var_1.a.x, arg_3 < 37810u), vec4<bool>(global0[_wgslsmith_index_u32(68260u, 8u)] & var_1.a.x, global0[_wgslsmith_index_u32(59017u ^ arg_1.x, 8u)], global0[_wgslsmith_index_u32(~67429u, 8u)], true), true), !(!(!vec4<bool>(false, var_1.a.x, true, false))), select(select(!vec4<bool>(var_1.a.x, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_3, 8u)], false, false, false), vec4<bool>(true, true, var_1.a.x, false)), select(vec4<bool>(var_1.a.x, true, false, true), vec4<bool>(true, false, true, false), !vec4<bool>(false, var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)], var_1.a.x)), var_1.a.x)), !vec4<bool>(!(global0[_wgslsmith_index_u32(20991u, 8u)] || var_1.a.x), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, var_1.a.x)), !(1391f >= var_1.b), true));
    var_0 = any(!(!var_2.wxw));
    return var_2.xyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(select(!(u_input.c < u_input.d), !(!global0[_wgslsmith_index_u32(0u, 8u)]), false), all(!func_1(2147483647i, vec4<u32>(u_input.c, 22938u, 31039u, 4294967295u), Struct_1(vec4<u32>(u_input.c, 13937u, 1791u, u_input.c)), 25398u))), 2147483647i <= u_input.e);
    var var_1 = ~abs(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 35628u, u_input.c), vec3<u32>(u_input.d, u_input.c, u_input.c))) >> (~(~vec3<u32>(1u, 1u, 4294967295u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_mult_u32(52414u, 0u), ~0u, u_input.d & 4294967295u) & (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, u_input.c, 4294967295u), vec3<u32>(u_input.d, var_1.x, 15894u), vec3<u32>(45955u, var_1.x, 5290u)) ^ firstLeadingBit(vec3<u32>(34281u, 1u, u_input.c))), ~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(4294967295u, var_1.x, u_input.d))), func_2(Struct_4(var_0.a, -785f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, -1332f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-352f, -2156f), vec2<f32>(-728f, 138f), var_0.a.x))), max(1i, -30689i)).x), ~(~vec3<u32>(_wgslsmith_add_u32(var_1.x, 0u), 22803u ^ u_input.c, _wgslsmith_add_u32(u_input.c, 31327u))));
}

