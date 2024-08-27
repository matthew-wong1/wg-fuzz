struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(2147483647i, 5327i, -1i), vec3<i32>(7384i, 47765i, -1i), vec3<i32>(1i, i32(-2147483648), -3793i), vec3<i32>(i32(-2147483648), -1i, -1i));

var<private> global1: array<bool, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = array<bool, 3>();
    let var_0 = Struct_1(u_input.d.yy, !vec4<bool>(global1[_wgslsmith_index_u32(~firstLeadingBit(35444u), 3u)], true, true, !global1[_wgslsmith_index_u32(reverseBits(0u), 3u)]), u_input.a, ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(47982u, u_input.c), vec2<u32>(34501u, u_input.a.x)))));
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, 1708f, 621f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1957f)), _wgslsmith_f_op_f32(ceil(-2106f)), 689f, -1000f) + vec4<f32>(1f, 1f, 1f, 1f)), select(true, global1[_wgslsmith_index_u32(~var_0.c.x, 3u)], false & global1[_wgslsmith_index_u32(~1u, 3u)]))));
    return ~var_0.c.x;
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = u_input.a.x > ~func_3();
    var var_1 = var_0;
    var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(u_input.a.yx, firstLeadingBit(u_input.a.yy)))), 3u)];
    global0 = array<vec3<i32>, 4>();
    var_1 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(-900f + -155f), 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, 200f, 1247f)) - vec3<f32>(546f, -1866f, -722f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1439f, -112f, 780f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-158f, 453f, 1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1537f, 1000f, -1049f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -689f, -324f)), arg_0 <= arg_0))) + vec3<f32>(324f, _wgslsmith_f_op_f32(round(-196f)), _wgslsmith_f_op_f32(-431f + -224f))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = u_input.d;
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(func_2(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 3>();
    let var_0 = func_1(false, u_input.a.xz);
    global1 = array<bool, 3>();
    var var_1 = max(57263i, u_input.b);
    let var_2 = Struct_2(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], false, global1[_wgslsmith_index_u32(53218u, 3u)], true), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(123081u, 3u)], true, false), !vec4<bool>(global1[_wgslsmith_index_u32(24729u, 3u)], true, false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(69938u, 3u)], true, true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], true, true, global1[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), global1[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 3u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false, false, true)), global1[_wgslsmith_index_u32(35242u, 3u)]), Struct_1(((vec2<i32>(-30649i, 31686i) & u_input.d.xw) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 71338i))) | -(vec2<i32>(55255i, 1i) << (u_input.a.zx % vec2<u32>(32u))), !(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global1[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], true, global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), false)), reverseBits(vec3<u32>(1u, 64785u, u_input.c)), u_input.a.xy), vec2<bool>(false, false), (u_input.a.x & u_input.c) << (_wgslsmith_clamp_u32(38229u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 4294967295u, 1u, 52141u), vec4<u32>(1u, 0u, 1u, u_input.a.x)), select(vec4<u32>(0u, u_input.c, u_input.c, 15134u), vec4<u32>(4294967295u, 0u, 1u, u_input.c), false)), _wgslsmith_clamp_u32(u_input.a.x ^ u_input.a.x, u_input.a.x, 4294967295u >> (u_input.a.x % 32u))) % 32u));
    global0 = array<vec3<i32>, 4>();
    var_1 = ~var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-393f, var_0.a.x, -626f, -1503f) - vec4<f32>(-475f, 2155f, 2032f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2078f, var_0.a.x, 240f, var_0.a.x) - vec4<f32>(var_0.a.x, 1492f, var_0.a.x, -123f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -623f, var_0.a.x, 746f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, -973f, var_0.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 903f, -450f) + vec4<f32>(var_0.a.x, -1402f, var_0.a.x, 456f)))))), -321f, abs(u_input.d));
}

