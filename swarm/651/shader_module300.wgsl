struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, true, true, false, false, true, false, false, true, true, true, true);

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> bool {
    global2 = global0[_wgslsmith_index_u32(0u, 19u)];
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-1359f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1041f, 205f))), arg_0.c.x, arg_0.c.x);
    global0 = array<vec3<f32>, 19>();
    var var_0 = 0i;
    return true;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -907f)) + _wgslsmith_f_op_f32(f32(-1f) * -398f));
    var var_1 = u_input.e.x;
    global1 = array<bool, 15>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -322f) - global2.xz), global2.yx))));
    let var_3 = Struct_1(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], true, any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, global1[_wgslsmith_index_u32(1u, 15u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), global1[_wgslsmith_index_u32(27523u, 15u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 15u)], false))), !select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, global1[_wgslsmith_index_u32(5570u, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(44710u, 15u)], true), global1[_wgslsmith_index_u32(0u, 15u)]), select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(8389u, 15u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, global1[_wgslsmith_index_u32(u_input.a, 15u)])), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), false)), select(vec3<bool>(global1[_wgslsmith_index_u32(12208u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], true), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 15u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], true, global1[_wgslsmith_index_u32(70112u, 15u)])), false), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-924f)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1044f)), global2.x, 1667f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, 267f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1690f)), _wgslsmith_f_op_f32(-428f * -1524f), !global1[_wgslsmith_index_u32(u_input.d.x, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1203f, -276f)), _wgslsmith_f_op_f32(max(514f, 497f)))), !(!(min(u_input.a, u_input.a) >= ~u_input.c)), ~(~u_input.d));
    return var_2.x;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global1 = array<bool, 15>();
    let var_0 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(global2.x)), 131f);
    var var_1 = all(vec2<bool>(u_input.c == ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.a, 4294967295u)), false));
    let var_2 = max(~select(~86935u, 1u, global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_add_u32(62177u, ~4294967295u));
    let var_3 = reverseBits(firstLeadingBit(abs(u_input.b)));
    return _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1431f, -131f, _wgslsmith_f_op_f32(step(949f, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(select(false, global1[_wgslsmith_index_u32(abs(0u >> (0u % 32u)), 15u)], false), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(50167u, 15u)], false, global1[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(32120u, 15u)]))), !(_wgslsmith_f_op_f32(max(-309f, global2.x)) >= 1176f)), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], func_1(Struct_1(select(vec3<bool>(true, global1[_wgslsmith_index_u32(836u, 15u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)]), true), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -1652f), vec4<f32>(-1000f, global2.x, 1533f, global2.x)), global1[_wgslsmith_index_u32(select(25203u, 0u, global1[_wgslsmith_index_u32(97343u, 15u)]), 15u)], u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-2147483647i))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1269f, -636f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2135f, 356f, -2550f, -1047f), vec4<f32>(global2.x, -518f, global2.x, 1000f))))))), global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.d);
    let var_1 = Struct_1(var_0.b, var_0.b, vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(u_input.e.x | _wgslsmith_mult_i32(u_input.b, -16163i))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * -491f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f + var_0.c.x) - _wgslsmith_f_op_f32(696f * global2.x))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.b), -21357i))).x, 1270f), !((~(-30748i) >> (~u_input.a % 32u)) != abs(max(u_input.e.x, 31287i))), vec2<u32>(u_input.c, ~abs(53827u)));
    global0 = array<vec3<f32>, 19>();
    let var_2 = ~45951u;
    let var_3 = Struct_1(var_0.a, vec3<bool>(all(select(!vec4<bool>(var_1.a.x, false, false, global1[_wgslsmith_index_u32(var_1.e.x, 15u)]), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), !vec4<bool>(false, var_0.a.x, global1[_wgslsmith_index_u32(var_0.e.x, 15u)], true))), var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, 1847f)), _wgslsmith_f_op_f32(f32(-1f) * -595f), global2.x, global2.x) - _wgslsmith_f_op_vec4_f32(sign(var_1.c))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2130f, var_1.c.x, var_0.c.x, -1692f))))), vec4<bool>(true, !(!var_1.b.x), true, true))), global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(var_2)), 15u)], ~(~select(~vec2<u32>(var_1.e.x, 51163u), var_0.e, true)));
    var var_4 = var_2;
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(var_1.e.x, min(22355u, 1u), true) ^ 1u, ~30499u), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, var_1.c.x, var_3.e.x);
}

