struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> u32 {
    let var_0 = ~u_input.b;
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    let var_1 = ~(-20860i);
    var var_2 = var_1;
    return ~var_0.x;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(abs(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, arg_2), abs(vec2<u32>(arg_2, arg_0))))), ~u_input.b | ~(~_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(u_input.b.x, 4294967295u))));
    var var_1 = var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(min(abs(u_input.a.x), arg_2 >> (u_input.a.x % 32u)), 30u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(568f)), _wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(sign(2211f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1650f + 115f), -1000f)));
    var var_4 = 0i;
    return !(!(!arg_1));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_1(!(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~36303u, 1544u) < ~(~4294967295u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)]));
    var var_1 = -(~_wgslsmith_mult_i32(~(12862i << (u_input.b.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-29723i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i)) | (i32(-1i) * -1i)));
    var_1 = -1i;
    var_0 = Struct_1(all(!(!func_3(0u, vec4<bool>(true, var_0.a, true, var_0.a), 17806u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, arg_1.x))));
    var var_2 = Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1014f, arg_1.x, true)) + _wgslsmith_f_op_f32(-294f + arg_0.x)) + _wgslsmith_f_op_f32(sign(1325f))), -611f));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(4294967295u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(25110u, 0u, 1u, u_input.a.x), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 77849u, 4294967295u))) % 32u)), func_1(), true);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(37776u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(9104u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec3<f32>(-344f, -491f, 1189f))))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 30u)]), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4088u >> (u_input.a.x % 32u), 30u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-459f - 1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(625f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1344f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -406f), 1156f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b.x, 30u)] + -380f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x ^ u_input.b.x, 30u)] * -910f))));
    let var_2 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(min(4294967295u, ~(~func_1())), 30u)]));
    let var_3 = Struct_1(all(select(vec3<bool>(true, var_2 <= var_2, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, false)), true))), _wgslsmith_f_op_f32(-var_2));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-46023i, select(abs(_wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(1u, 65254u, 27680u)))), max(abs(firstTrailingBit(u_input.a)), u_input.a), !select(vec3<bool>(var_3.a, true, var_3.a), !vec3<bool>(var_3.a, var_3.a, true), !vec3<bool>(true, var_3.a, true))));
}

