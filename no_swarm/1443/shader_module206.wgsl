struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec2<f32>;

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 25>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    global0 = array<bool, 12>();
    var_0 = Struct_1(1i, vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-252f, 935f)), _wgslsmith_f_op_f32(select(var_0.b.x, global1.x, arg_3.d))))), select(_wgslsmith_sub_vec4_u32(arg_3.c, arg_2 | (vec4<u32>(arg_2.x, arg_3.c.x, 1u, arg_3.c.x) & arg_3.c)), arg_3.c, _wgslsmith_div_f32(arg_0, global1.x) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(125f - var_0.b.x)))), any(vec3<bool>(any(vec2<bool>(arg_3.d, var_0.d)) & var_0.d, arg_3.d, global3[_wgslsmith_index_u32(countOneBits(var_0.c.x), 25u)])), arg_3.e);
    global2 = arg_3.b.zy;
    let var_1 = _wgslsmith_f_op_f32(-1439f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return u_input.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(~(-vec4<i32>(-9796i, arg_1, 0i, 2147483647i))), vec4<i32>(1i, func_3(-1192f, vec4<f32>(1000f, global1.x, -1002f, global1.x), vec4<u32>(4294967295u, 46809u, 1u, 4294967295u), Struct_1(-22826i, vec3<f32>(global1.x, global1.x, 2275f), vec4<u32>(31121u, 1u, 1u, 7419u), arg_0.x, u_input.b)), firstLeadingBit(arg_1), func_3(-530f, vec4<f32>(global2.x, 1140f, 651f, global2.x), vec4<u32>(22938u, 4294967295u, 810u, 0u), Struct_1(59868i, vec3<f32>(global1.x, -1780f, -567f), vec4<u32>(23156u, 4294967295u, 1u, 4617u), global0[_wgslsmith_index_u32(12853u, 12u)], vec2<i32>(u_input.a, -26084i)))) | -vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 371f, global2.x) + vec3<f32>(1128f, 312f, -429f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(910f, -642f, -1942f), vec3<f32>(-1014f, 557f, 874f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(1000f, global2.x)), -1618f, 1277f))), ~countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(global3[_wgslsmith_index_u32(0u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(52799u, 61942u, 11846u), _wgslsmith_mult_vec3_u32(vec3<u32>(16659u, 35289u, 78342u), vec3<u32>(29885u, 0u, 27465u))), 25u)], arg_0.x, true), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -select(u_input.b, vec2<i32>(arg_1, -36222i), arg_0.x), u_input.b, max(vec2<i32>(_wgslsmith_div_i32(1i, u_input.b.x), _wgslsmith_div_i32(14241i, u_input.b.x)), u_input.b)));
    global2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global2.x))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), 975f)))));
    var var_1 = ~var_0.e.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1048f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global1.x)))), vec2<bool>(!(!arg_0.x), !select(true, global3[_wgslsmith_index_u32(64026u, 25u)], arg_0.x)))) * vec2<f32>(667f, 440f));
    var var_2 = Struct_1(-max(~var_0.a, ~firstLeadingBit(-18728i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1125f * -748f))), _wgslsmith_f_op_f32(var_0.b.x + 996f), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(max(global2.x, -489f))))), var_0.c, arg_0.x, vec2<i32>((-arg_1 ^ func_3(var_0.b.x, vec4<f32>(global2.x, -629f, global2.x, 981f), var_0.c, Struct_1(1i, var_0.b, vec4<u32>(1u, var_0.c.x, var_0.c.x, var_0.c.x), global0[_wgslsmith_index_u32(var_0.c.x, 12u)], var_0.e))) & countOneBits(_wgslsmith_div_i32(4668i, 67760i)), 1i));
    return Struct_1(~0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) * _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.x))))), ~(~firstTrailingBit(~var_2.c)), all(!(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.c.x, 12u)], false, var_2.d), vec4<bool>(true, global3[_wgslsmith_index_u32(66082u, 25u)], global0[_wgslsmith_index_u32(var_2.c.x, 12u)], var_2.d), global3[_wgslsmith_index_u32(var_2.c.x, 25u)]))), max(firstLeadingBit(u_input.b), -vec2<i32>(firstTrailingBit(var_2.e.x), _wgslsmith_clamp_i32(0i, var_2.a, 1i))));
}

fn func_1() -> vec4<i32> {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(global2.x, -634f), _wgslsmith_f_op_f32(-global2.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(min(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1212f, 1776f), vec2<f32>(global1.x, 1313f), vec2<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(96842u, 12u)]))) - vec2<f32>(global2.x, global1.x)), true))));
    let var_0 = func_2(select(!vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 12u)], true), !(!vec2<bool>(true, global3[_wgslsmith_index_u32(35100u, 25u)])), select(select(select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(50115u, 12u)])), select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(35334u, 25u)], true), false), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 25u)])), select(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(39899u, 12u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1804u, 12u)], global3[_wgslsmith_index_u32(19282u, 25u)])), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(44324u, 12u)], true)), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(17707u, 25u)], true, true)))), u_input.b.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2413f, _wgslsmith_f_op_f32(1909f - _wgslsmith_f_op_f32(exp2(var_0.b.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), var_0.b.x));
    var var_2 = func_2(vec2<bool>(true, true), 2147483647i);
    global0 = array<bool, 12>();
    return -(~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, 0i, u_input.a, 6100i), vec4<i32>(36426i, u_input.a, 22506i, 44550i)))) ^ -vec4<i32>(1i, -20677i, func_3(var_0.b.x, vec4<f32>(-175f, -184f, var_0.b.x, global1.x), ~vec4<u32>(9872u, var_0.c.x, var_2.c.x, 44280u), Struct_1(var_0.a, var_2.b, var_0.c, false, var_2.e)), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x))), vec4<i32>(u_input.a, u_input.b.x, 14380i, u_input.b.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(9891u, 83320u, 1u, 6700u), vec4<u32>(20539u, 10059u, 30168u, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, 1i, -370i, 32461i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, -27388i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -1i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(5575i, 2147483647i, -78533i, u_input.b.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, -5992i, -41542i), vec4<i32>(23148i, u_input.b.x, u_input.a, 1411i)), func_1())), u_input.b.x);
    var_0 = vec2<i32>(-1i) * -reverseBits(vec2<i32>(-1i) * -vec2<i32>(-1i, 1609i));
    var_0 = u_input.b;
    var var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_f32(abs(1f));
    global0 = array<bool, 12>();
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(-470f, _wgslsmith_f_op_f32(f32(-1f) * -448f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1826f, global2.x)) - _wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_f_op_f32(select(-1446f, -2024f, true)))));
}

