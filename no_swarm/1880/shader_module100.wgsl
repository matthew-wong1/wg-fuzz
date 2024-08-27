struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 22> = array<f32, 22>(-682f, -229f, -1768f, 1820f, 176f, 214f, -882f, 417f, 781f, -444f, -247f, -1000f, 720f, 2467f, 888f, 922f, 1797f, 595f, 760f, -684f, -259f, -1512f);

var<private> global2: array<vec4<u32>, 15>;

var<private> global3: array<i32, 29>;

var<private> global4: array<vec2<i32>, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~select(4294967295u, 1u, true), 29u)];
    var var_1 = (0i | -_wgslsmith_mod_i32(0i, abs(arg_0))) & _wgslsmith_dot_vec3_i32(-vec3<i32>(firstTrailingBit(arg_0), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 0i), arg_0), vec3<i32>(22029i, ~_wgslsmith_clamp_i32(-1i, arg_0, arg_0), 2147483647i));
    let var_2 = countOneBits(~u_input.a.x << (max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 17778u), ~vec3<u32>(arg_1.d.x, arg_1.d.x, 47627u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.d), arg_1.d)) % 32u));
    let var_3 = 301f;
    var var_4 = countOneBits(vec2<i32>(-2147483647i & global3[_wgslsmith_index_u32(~(~var_2), 29u)], abs(~(~891i))));
    return abs(u_input.a.x);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = false;
    global3 = array<i32, 29>();
    let var_1 = vec3<bool>(all(arg_3), arg_3.x, !all(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)));
    var_0 = var_1.x;
    global2 = array<vec4<u32>, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(159u, 1u), 22u)], _wgslsmith_f_op_f32(189f + -515f))))) - global1[_wgslsmith_index_u32(func_3(arg_2.x, Struct_4(var_1.xx, 1u > arg_0, Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -2881f), vec4<bool>(arg_3.x, false, var_1.x, var_1.x), Struct_1(arg_3.x, var_1.x, vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), Struct_1(true, false, vec2<f32>(663f, global1[_wgslsmith_index_u32(4294967295u, 22u)]))), ~vec2<u32>(u_input.a.x, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(108522u, 22u)] + 1204f), -656f, _wgslsmith_f_op_f32(f32(-1f) * -273f), -1132f), -636f), 22u)]) - 637f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(~33780u), u_input.a.x, -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 29u)], 0i, -1i)), vec2<bool>(any(select(vec4<bool>(arg_1.a, true, arg_0.a, arg_0.b), vec4<bool>(true, arg_0.b, arg_1.b, true), vec4<bool>(true, arg_0.b, false, true))), abs(global3[_wgslsmith_index_u32(0u, 29u)]) < global3[_wgslsmith_index_u32(reverseBits(23239u), 29u)]))));
    var var_1 = arg_0.b;
    global4 = array<vec2<i32>, 22>();
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    return _wgslsmith_f_op_f32(select(610f, _wgslsmith_f_op_f32(select(-359f, -752f, true)), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 22>();
    let var_0 = 1107f;
    let var_1 = 0u;
    let var_2 = ~var_1;
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(~0u, 29u)], -1i)), -2147483647i, all(vec3<bool>(true, u_input.a.x >= 3856u, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(true, true, vec2<f32>(global1[_wgslsmith_index_u32(1u, 22u)], 302f)), Struct_1(true, false, vec2<f32>(1570f, 1685f)))), _wgslsmith_f_op_f32(-326f * -291f), global1[_wgslsmith_index_u32(115004u, 22u)], var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(53063u, 22u)], -1528f, 693f, var_0), vec4<f32>(var_0, global1[_wgslsmith_index_u32(var_2, 22u)], global1[_wgslsmith_index_u32(14928u, 22u)], global1[_wgslsmith_index_u32(51378u, 22u)]))))))), vec4<i32>(min(select(global3[_wgslsmith_index_u32(53729u, 29u)], -12616i, true), ~25341i), global3[_wgslsmith_index_u32(u_input.a.x, 29u)], -6494i, -33748i) & vec4<i32>(~select(0i, 1i, true), _wgslsmith_add_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_1, 29u)], global3[_wgslsmith_index_u32(var_2, 29u)]), abs(global3[_wgslsmith_index_u32(var_1, 29u)])), _wgslsmith_sub_i32(min(global3[_wgslsmith_index_u32(var_1, 29u)], -25687i), ~global3[_wgslsmith_index_u32(var_2, 29u)]), ~(~0i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-412f, 1371f, var_0), vec3<f32>(166f, var_0, 1051f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 263f, 778f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-606f, -895f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, global1[_wgslsmith_index_u32(var_1, 22u)])))))));
}

