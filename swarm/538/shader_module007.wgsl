struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = select(vec4<bool>(!(!(!global0[_wgslsmith_index_u32(14719u, 14u)])), all(!arg_1.zxx), any(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, true), arg_1.yxx, true))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_1.x, false, true), !vec4<bool>(false, false, arg_1.x, arg_1.x))), false);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_1 = var_0.x;
    var_0 = !select(arg_1, vec4<bool>(select(false, !global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b < 53115u), true, true, true), all(var_0.yz));
    return -641f;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = vec2<f32>(859f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 266f)))), !select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(7735u, 14u)], true, global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(470f, 1748f) + vec2<f32>(-534f, 741f))), vec2<i32>(abs(-24519i), 28003i))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(128f, 490f) + _wgslsmith_f_op_f32(func_3(vec2<f32>(-1201f, -163f), vec4<bool>(global0[_wgslsmith_index_u32(50833u, 14u)], false, false, false), vec2<f32>(1486f, -1586f), vec2<i32>(1i, -21585i)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -635f)))) - var_0.x));
    var var_2 = 1f;
    return all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], false, true), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(34552u, 14u)]), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(54517u, 14u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(9241u, 14u)], false))), true), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(20667u, 14u)], false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(59168u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)]), global0[_wgslsmith_index_u32(0u, 14u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), u_input.a > (11378i << (arg_0 % 32u))), !vec3<bool>(!global0[_wgslsmith_index_u32(1u, 14u)], select(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], false), true)));
}

fn func_4(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1f)))) * -967f);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_1 = Struct_4(4294967295u, reverseBits(-vec4<i32>(_wgslsmith_clamp_i32(529i, 9294i, 5989i), reverseBits(0i), _wgslsmith_sub_i32(2939i, 1i), ~u_input.a)));
    global0 = array<bool, 14>();
    return !(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(~var_1.a, 14u)])));
}

fn func_1() -> bool {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_0 = select(func_4(vec3<bool>(true, func_2(59085u >> (1u % 32u)), func_2(u_input.b) || global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 14u)])), !vec3<bool>(true, ~(-20003i) <= ~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u & u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), 14u)]), vec3<bool>(func_2(63465u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~16325u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 37259u, u_input.b)), _wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 1u)))), 14u)], all(vec2<bool>(true, true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, -712f, -1963f, -1227f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(418f, -681f, -764f, -1106f), vec4<f32>(1076f, -114f, -969f, -191f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(803f, 459f, -1469f, 279f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1066f, -156f, 125f, -1738f))))))));
    var var_1 = select(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(71129u, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], true, global0[_wgslsmith_index_u32(12529u, 14u)]), true), vec3<bool>(u_input.a >= -23147i, func_1(), !global0[_wgslsmith_index_u32(u_input.b, 14u)]), global0[_wgslsmith_index_u32(u_input.b, 14u)]), !vec3<bool>(true, false, all(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 84357u, u_input.b, 11701u) & _wgslsmith_mod_vec4_u32(vec4<u32>(8809u, u_input.b, 79890u, 10446u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(u_input.b, select(89970u, 1u, false), firstTrailingBit(u_input.b), ~u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 12002u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)) << (firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), 14u)]);
    var var_2 = vec4<f32>(1221f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.x)))) * var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f), -1280f));
    var_1 = vec3<bool>(!select(u_input.b > 82035u, true, !var_1.x) == global0[_wgslsmith_index_u32(1u, 14u)], false, -631f < _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 297f) - var_2.yy), vec2<f32>(var_0.x, var_2.x))), vec4<bool>(true, any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 14u)])), var_0.x != -204f, 266f == var_2.x), var_0.wz, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(78587u, -314f);
}

