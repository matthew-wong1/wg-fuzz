struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<i32, 11> = array<i32, 11>(0i, -38213i, 2147483647i, 1i, 2715i, 2147483647i, i32(-2147483648), 17233i, -1i, 2147483647i, -48243i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1104f))), _wgslsmith_f_op_f32(-887f + -1127f));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, firstTrailingBit(arg_1 << (~1u % 32u)), -2147483647i), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 1i, 0i), vec3<i32>(~global0[_wgslsmith_index_u32(u_input.d, 11u)], 1i, max(arg_1, arg_1))));
    var var_1 = vec2<bool>(true, arg_0.b.x);
    let var_2 = Struct_3(arg_0.a, vec4<bool>(false, var_1.x, false, all(vec4<bool>(9243u <= u_input.b.x, true, all(vec3<bool>(arg_0.b.x, arg_0.b.x, var_1.x)), var_1.x & arg_0.b.x))));
    let var_3 = 11283u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(arg_0.b.x, var_2.b.x, true, arg_0.b.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(198f, -342f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-716f, 1105f)), true)))));
}

fn func_1() -> u32 {
    var var_0 = 2147483647i;
    let var_1 = vec3<bool>(true, true, any(vec4<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, false)), true)));
    global0 = array<i32, 11>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b.x, 37293u), vec4<u32>(74002u, 1u, u_input.a, 14371u))), !(!vec4<bool>(var_1.x, true, true, false))), firstLeadingBit(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.d, 11u)], 34877i)) & countOneBits(global0[_wgslsmith_index_u32(max(u_input.c.x, 1u), 11u)]))) * vec2<f32>(-275f, 1f));
    var var_3 = vec2<u32>(u_input.a, firstLeadingBit(0u)) ^ ~u_input.b.xy;
    return _wgslsmith_add_u32(u_input.d, 409u);
}

fn func_4(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_2(4294967295u);
    var var_1 = -(countOneBits(vec2<i32>(_wgslsmith_div_i32(-1i, arg_0), 24816i)) & -(vec2<i32>(arg_0, arg_0) | (vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(113396u, 11u)]) << (u_input.b.zz % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_sub_i32(1i, 1i);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), vec4<u32>(~4294967295u, 4294967295u, var_0.a << (u_input.c.x % 32u), ~49458u), abs(u_input.c)), ~u_input.c | u_input.c);
    let var_4 = -1132f;
    return Struct_4(all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))) & true, vec4<u32>(25393u << (u_input.d % 32u), 1u, 25470u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(var_0.a, 56509u >> (var_3 % 32u), countOneBits(var_3)), 1u)));
}

fn func_5(arg_0: Struct_4) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-417f, 1311f)) - _wgslsmith_f_op_f32(max(-2225f, -503f)))), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(339f, 670f, 251f), vec3<f32>(246f, 949f, -803f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 252f, 363f) + vec3<f32>(-453f, -202f, -336f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_1 = Struct_2(_wgslsmith_mult_u32(4294967295u, u_input.a >> (arg_0.b.x % 32u)));
    var var_2 = arg_0;
    return vec4<i32>(_wgslsmith_add_i32(-44075i, _wgslsmith_mult_i32(reverseBits(-38224i) >> (var_1.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(30395i, 1i), ~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(921u, 11u)])))), _wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 5443u), 11u)], firstTrailingBit(-2147483647i)), vec2<i32>(~select(global0[_wgslsmith_index_u32(var_2.b.x, 11u)], global0[_wgslsmith_index_u32(62616u, 11u)], false), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(var_1.a, 11u)], global0[_wgslsmith_index_u32(33435u, 11u)], 20784i)), max(vec3<i32>(21525i, 1i, global0[_wgslsmith_index_u32(var_2.b.x, 11u)]), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(8019u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))))), global0[_wgslsmith_index_u32(var_2.b.x, 11u)], firstLeadingBit(firstTrailingBit(min(_wgslsmith_mod_i32(-1i, 1i), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(func_1(), 11u)], -global0[_wgslsmith_index_u32(25667u, 11u)]) & -max(-1i, -2147483647i)));
    var_0 = firstLeadingBit(vec4<i32>(i32(-1i) * -1i, -1i, 0i, -countOneBits(global0[_wgslsmith_index_u32(38531u, 11u)] & var_0.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 946f, -1740f), vec3<f32>(-1414f, 305f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, 203f, -309f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2675f, -620f, 952f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-202f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(Struct_2(0u), vec4<bool>(true, true, true, false)), var_0.x & var_0.x)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f * -1648f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

