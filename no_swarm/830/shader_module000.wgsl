struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17421u;

var<private> global1: array<i32, 18>;

var<private> global2: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global3: array<vec3<i32>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> vec3<u32> {
    let var_0 = (-global1[_wgslsmith_index_u32(100841u, 18u)] ^ (~0i >> (u_input.a % 32u))) < abs(global2.x << (arg_3 % 32u));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0));
    var var_2 = Struct_1(0i, ~(global3[_wgslsmith_index_u32(u_input.a, 13u)] & global3[_wgslsmith_index_u32(28787u, 13u)]));
    let var_3 = select(vec4<bool>(true, any(!(!vec2<bool>(false, var_0))), false, any(vec3<bool>(var_0, var_0, var_0)) & var_0), vec4<bool>(select(var_0, var_0, var_0), all(vec4<bool>(arg_0 > -820f, true & var_0, true | var_0, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-8654i, var_2.a, global1[_wgslsmith_index_u32(1u, 18u)]) >> (vec3<u32>(u_input.a, arg_3, 69616u) % vec3<u32>(32u)), vec3<i32>(u_input.b, var_2.b.x, -36877i)) != 48823i, true), !var_0);
    var_2 = Struct_1(2147483647i, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(41154u, 18u)], global1[_wgslsmith_index_u32(arg_3, 18u)], -2147483647i), var_2.b) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(19804u, u_input.a, 0u), vec3<u32>(4294967295u, 6086u, 30100u)) % vec3<u32>(32u))));
    return ~_wgslsmith_sub_vec3_u32(min(~min(vec3<u32>(0u, 5566u, u_input.a), vec3<u32>(1u, u_input.a, 42579u)), ~vec3<u32>(4294967295u, 62071u, 110571u) << (~vec3<u32>(arg_3, 3616u, arg_3) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(~1u, firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(69564u, 1u), vec2<u32>(4294967295u, 7832u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(25003u, 0u, arg_3), vec3<u32>(u_input.a, arg_3, 100376u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.a, 18u)], ~global3[_wgslsmith_index_u32(4294967295u, 13u)]);
    global3 = array<vec3<i32>, 13>();
    let var_1 = ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)) & (~firstTrailingBit(vec3<u32>(1u, u_input.a, 1u)) >> (func_3(_wgslsmith_f_op_f32(sign(-1497f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -1939f, -833f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1493f, 794f, 198f) - vec3<f32>(-133f, -857f, 1667f)), 4294967295u) % vec3<u32>(32u))));
    var var_2 = global3[_wgslsmith_index_u32(abs(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(35210u, u_input.a, u_input.a, u_input.a), vec4<u32>(var_1.x, 1u, var_1.x, var_1.x)) | abs(55137u))), 13u)];
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1896f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1523f) + _wgslsmith_f_op_f32(689f - -1165f))))));
    return var_0;
}

fn func_1() -> vec3<bool> {
    global1 = array<i32, 18>();
    let var_0 = func_2();
    global3 = array<vec3<i32>, 13>();
    global0 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(1u, ~1u));
    var var_1 = !(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !any(vec2<bool>(false, true))));
    return select(select(select(!vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, all(vec4<bool>(var_1.x, true, false, true))), true), !(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(var_1.x, var_1.x, all(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), true)))), vec3<bool>(all(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, false), vec4<bool>(true, var_1.x, var_1.x, true))), false, !any(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), any(!vec4<bool>(true, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), all(vec3<bool>(var_1.x, false, var_1.x)), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(func_1()), true, select(u_input.b, -(2147483647i & global1[_wgslsmith_index_u32(0u, 18u)]), func_1().x) >= global2.x);
    let var_1 = select(vec2<bool>(!all(vec3<bool>(false, var_0.x, false)), func_1().x), var_0.zx, var_0.x);
    var var_2 = var_0.x;
    global0 = reverseBits(u_input.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1625f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(700f, _wgslsmith_f_op_f32(-698f + 125f))) + -1178f)));
    global2 = vec2<i32>(global1[_wgslsmith_index_u32(~u_input.a, 18u)], 23723i);
    let x = u_input.a;
    s_output = StorageBuffer((select(max(u_input.b, -1i), func_2().a, true) ^ _wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(u_input.a, 18u)], u_input.b >> (41138u % 32u))) & -11721i);
}

