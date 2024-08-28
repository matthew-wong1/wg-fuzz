struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, 26223i, 0i, 27057i, -49338i, 5037i, 11019i, -65561i, i32(-2147483648), 23389i, i32(-2147483648), 20256i, i32(-2147483648), 1i, 2147483647i, 49164i, 1i, -22997i, 47643i, 25536i, 0i, 55549i, 2147483647i, -37217i);

var<private> global1: array<u32, 27> = array<u32, 27>(9506u, 0u, 31417u, 73324u, 4294967295u, 80638u, 4294967295u, 48077u, 4294967295u, 1u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 0u, 4294967295u, 1u, 1u, 34709u, 1u, 5011u, 4294967295u, 4294967295u, 0u, 1u, 0u);

var<private> global2: array<u32, 6> = array<u32, 6>(41959u, 4294967295u, 0u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> u32 {
    return 9574u;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    let var_0 = any(!(!vec3<bool>(true, all(vec4<bool>(true, true, false, false)), false)));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global2 = array<u32, 6>();
    global1 = array<u32, 27>();
    return Struct_3(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, -1i & arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global0[_wgslsmith_index_u32(74168u, 24u)], arg_0, arg_0), vec4<i32>(u_input.b, 0i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31948u, 6u)], 6u)], 24u)], -32692i)))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(42532u, 24u)], 2147483647i), abs(vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 24u)], 52261i)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45785u, 6u)], 24u)]), u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 6u)], 19762u), 24u)]), max(vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 24u)], -60112i), _wgslsmith_div_i32(23899i, 4682i), _wgslsmith_dot_vec3_i32(vec3<i32>(-33475i, u_input.c.x, global0[_wgslsmith_index_u32(15288u, 24u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.b, u_input.c.x))), -(vec3<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.d, u_input.c.x) ^ vec3<i32>(57111i, u_input.d, -32283i)))));
    let var_1 = -min(48901i, firstTrailingBit(_wgslsmith_div_i32(-44950i, 2147483647i)) >> (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 27u)] % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.a.x)), -1432f)) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) * arg_0.a.x)), _wgslsmith_div_f32(-100f, arg_0.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.a.x)))));
    var var_4 = arg_1.zwz;
    return _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f * 1000f) + -1552f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_3, arg_0.a.x, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -619f) + _wgslsmith_f_op_f32(var_3 - 1297f)))), _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<u32, 27>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1249f - arg_0.b), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(768f, arg_0.a.x, arg_2.a.x), -1000f, arg_1.c), vec4<bool>(true, true, true, true))).x, _wgslsmith_f_op_f32(abs(arg_2.a.x))), arg_1.a.x, vec2<bool>(true, all(!arg_1.c)));
    global0 = array<i32, 24>();
    return vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.b)))))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 45900u), 27u)] > global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(), ~global2[_wgslsmith_index_u32(32978u, 6u)]), 27u)]);
    global2 = array<u32, 6>();
    var var_1 = true;
    let var_2 = func_2(u_input.c.x << (0u % 32u), 1000f);
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(max(0u, ~63734u), 27u)], Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(100f, -758f, -264f), -1353f, var_0), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, 1149f, -790f)), _wgslsmith_f_op_f32(-324f + -1934f), var_0), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(1000f, 1037f, 353f), -711f, var_0), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(max(409f, 1000f)), vec2<bool>(true, false)))), -1155f, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f + -155f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(571f, _wgslsmith_f_op_f32(sign(var_3.b.a.x)), -1000f), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.c))), _wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(245f * -1716f) + -1000f))));
}

