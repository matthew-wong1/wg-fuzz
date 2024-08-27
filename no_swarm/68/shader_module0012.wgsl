struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<Struct_5, 19>;

var<private> global3: array<Struct_5, 20>;

var<private> global4: f32 = 1096f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = (((~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], 2147483647i, -30715i, -1i) ^ min(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], 0i, 2147483647i, 2147483647i), vec4<i32>(-21542i, 0i, -47537i, -2147483647i))) & -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(113016u, 4u)]), vec4<i32>(-1i, 1158i, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)]))) & (vec4<i32>(abs(global0[_wgslsmith_index_u32(u_input.b, 4u)]), ~(-2147483647i), 3718i, 26012i) & vec4<i32>(-3621i, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 4u)]), -33483i | global0[_wgslsmith_index_u32(u_input.a, 4u)], 1i))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.b, 4294967295u)) & ~u_input.b, ~select(28020u, u_input.b, true)), ~(~(~vec4<u32>(61801u, u_input.b, u_input.a, 4294967295u)))) % vec4<u32>(32u));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)));
    global1 = array<Struct_1, 11>();
    let var_1 = -(~var_0.xzz);
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2326f))), -3055f, true))))));
    return ~countOneBits(u_input.b | _wgslsmith_div_u32(u_input.a, firstTrailingBit(54010u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> vec4<bool> {
    global4 = 756f;
    global4 = 554f;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2328f), 927f, arg_0.c.x);
    var var_1 = 4294967295u <= abs(~1u | ~(~u_input.a));
    var var_2 = Struct_3(Struct_2(!vec2<bool>(arg_0.b.x, arg_0.b.x), global1[_wgslsmith_index_u32(firstTrailingBit(~func_3()), 11u)], Struct_1(arg_0.a, arg_0.b, var_0.zz), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), select(arg_0.b, vec4<bool>(true, true, true, arg_0.b.x), !vec4<bool>(true, arg_0.b.x, true, false)), arg_0.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(432f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1046f)))))), Struct_2(!arg_0.b.wy, arg_0, arg_0, arg_0), 1008f);
    return select(vec4<bool>(true, any(arg_0.b.ww), !var_2.a.c.b.x, !arg_0.b.x), arg_0.b, !arg_0.b);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<i32, 4>();
    global4 = -286f;
    global4 = _wgslsmith_f_op_f32(ceil(arg_0));
    global3 = array<Struct_5, 20>();
    global0 = array<i32, 4>();
    return Struct_1(vec3<f32>(-431f, _wgslsmith_f_op_f32(trunc(684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - _wgslsmith_f_op_f32(ceil(-404f))))), !select(select(select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, true), !vec4<bool>(arg_1.x, false, arg_1.x, false)), vec4<bool>(!arg_1.x, arg_0 > -904f, !arg_1.x, arg_1.x), !func_2(Struct_1(vec3<f32>(arg_0, arg_0, 2074f), vec4<bool>(true, true, arg_1.x, arg_1.x), vec2<f32>(arg_0, 1182f)), vec2<i32>(global0[_wgslsmith_index_u32(1u, 4u)], 5578i), global0[_wgslsmith_index_u32(45759u, 4u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(179f, arg_0))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = vec3<i32>(-(~firstLeadingBit(-66195i)), 1i, ~global0[_wgslsmith_index_u32(6582u, 4u)]);
    var var_1 = arg_1.b.wzy;
    let var_2 = Struct_3(Struct_2(!(!func_1(-340f, arg_1.b.zxw).b.zx), global1[_wgslsmith_index_u32(u_input.b, 11u)], func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1083f * -1516f) + _wgslsmith_f_op_f32(abs(-763f))), !(!vec3<bool>(arg_1.b.x, false, var_1.x))), global1[_wgslsmith_index_u32(u_input.b >> (1u % 32u), 11u)]), vec2<f32>(252f, -1276f), Struct_2(!func_1(arg_1.c.x, vec3<bool>(arg_2, arg_2, arg_2)).b.zw, func_1(_wgslsmith_f_op_f32(ceil(-1794f)), func_2(func_1(-2207f, arg_1.b.yww), _wgslsmith_add_vec2_i32(var_0.yz, var_0.xz), ~9152i).zxz), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, -1207f) * _wgslsmith_f_op_vec3_f32(ceil(arg_1.a))), !vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(315f, -1488f), false)) + _wgslsmith_f_op_vec2_f32(-arg_1.c))), func_1(_wgslsmith_f_op_f32(-arg_1.a.x), !select(arg_1.b.wyw, arg_1.b.yzx, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-250f, arg_1.a.x)), _wgslsmith_f_op_f32(max(-309f, arg_1.c.x))))), arg_1.c.x, arg_0.x)));
    global4 = -163f;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(432f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-827f - 713f), _wgslsmith_f_op_f32(max(166f, 1f)), !all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(181f)) + -333f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(floor(435f)))))));
    global0 = array<i32, 4>();
    global3 = array<Struct_5, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(326f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1092f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_1(-310f, vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true)), -264f)), 1000f, func_2(global1[_wgslsmith_index_u32(~u_input.a, 11u)], -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(32621u, 4u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(11986i, global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 4u)]))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 938f, var_0.x, 2581f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, 530f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 641f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 492f, 650f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, -895f, -1000f, -353f) + vec4<f32>(var_0.x, var_0.x, -325f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, 1069f, -1746f))), vec4<f32>(1224f, -1297f, var_0.x, 1878f))))), -183f == var_0.x));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-414f, var_1.x)) * _wgslsmith_f_op_f32(round(var_1.x)))), 184f, var_1.x, 633f);
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), -1187f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(133f)) * _wgslsmith_f_op_f32(1342f * var_1.x)))), !any(select(func_2(Struct_1(var_0.xzz, vec4<bool>(true, false, true, true), var_1.zx), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), -1i).yw, vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(floor(-1591f))));
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * func_1(var_0.x, vec3<bool>(true, var_2.b, true)).c))), countOneBits(~(~max(1u, 15212u))), _wgslsmith_clamp_i32(0i, ~(-2147483647i), select(i32(-1i) * -19106i, _wgslsmith_mod_i32(756i, ~global0[_wgslsmith_index_u32(0u, 4u)]), !any(vec2<bool>(var_2.b, var_2.b)))));
}

