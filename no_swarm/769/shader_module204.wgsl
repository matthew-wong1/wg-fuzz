struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: vec3<bool>;

var<private> global2: array<f32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global2 = array<f32, 8>();
    let var_0 = !(!select(select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, true), vec4<bool>(true, global1.x, true, false)), any(vec4<bool>(false, global1.x, true, true))), !(!vec4<bool>(global1.x, false, true, global1.x)), true));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec3<bool>(any(select(select(var_0, var_0, true), !var_0, true)), true, true), arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~arg_2, 7u)])), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.yyw)), vec3<f32>(496f, 500f, 1438f)), arg_0.a.xyw)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, _wgslsmith_div_f32(1216f, global2[_wgslsmith_index_u32(4294967295u, 8u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2, arg_2), 8u)]))), global0[_wgslsmith_index_u32(u_input.a, 7u)], vec3<bool>(arg_1.a > _wgslsmith_mod_i32(u_input.c.x, arg_1.a ^ arg_1.a), select(global1.x, _wgslsmith_f_op_f32(step(arg_0.a.x, -2539f)) > -251f, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), !all(vec3<bool>(var_1.b.x, global1.x, var_1.b.x)) || all(vec4<bool>(true, var_1.b.x, global1.x, var_0.x)))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(439f, global2[_wgslsmith_index_u32(arg_0, 8u)], -864f, 575f))), Struct_1(1i, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(24922u, 8u)]))), arg_0)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_0, 7u)] - _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 8u)], global2[_wgslsmith_index_u32(arg_0, 8u)], global2[_wgslsmith_index_u32(u_input.e, 8u)]), global0[_wgslsmith_index_u32(u_input.a, 7u)]))))));
    let var_1 = vec2<i32>(~abs(0i), (~arg_1.x << (1u % 32u)) << (~max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 45595u, 32143u), vec4<u32>(u_input.a, arg_0, 0u, u_input.e)), arg_0) % 32u));
    return vec3<bool>(global1.x, true, global1.x && false);
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.a, 7u)] * global0[_wgslsmith_index_u32(4294967295u, 7u)])))), vec3<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, global1.x, arg_0), vec3<bool>(false, false, global1.x))), !(!select(true, global1.x, global1.x)), all(select(vec3<bool>(false, false, false), func_2(u_input.e, u_input.c), arg_0))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, -1172f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 8u)]), 716f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 8u)], 396f, -284f, global2[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], 1864f, global2[_wgslsmith_index_u32(u_input.e, 8u)]))))), Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(1u, u_input.e)), 7u)]), Struct_2(global0[_wgslsmith_index_u32(59441u, 7u)]));
    global1 = var_0.b;
    global2 = array<f32, 8>();
    let var_1 = var_0.d;
    var var_2 = vec4<bool>(global1.x, true, select(var_0.b.x, func_2(u_input.e, _wgslsmith_mod_vec3_i32(~u_input.c, vec3<i32>(u_input.d, 2977i, -57184i))).x, false), global1.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(71575u, reverseBits(_wgslsmith_mult_u32(4294967295u << (_wgslsmith_sub_u32(u_input.e, 4294967295u) % 32u), u_input.a))), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 9772i;
    let var_1 = select(!vec4<bool>((global2[_wgslsmith_index_u32(0u, 8u)] > -1000f) & true, global1.x, false, true), vec4<bool>(true, true, !any(!vec4<bool>(true, global1.x, true, true)), false), min(u_input.e, 1u) <= u_input.e);
    let var_2 = ~(-u_input.c.xz);
    global1 = vec3<bool>(global1.x, any(vec3<bool>(false, true, !var_1.x)), true);
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 72138u, u_input.a), 8u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] * global2[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) * 1120f) - _wgslsmith_f_op_f32(f32(-1f) * -1202f)), 1000f, _wgslsmith_f_op_f32(trunc(-154f))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true)))));
    global0 = array<vec3<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-561f, _wgslsmith_div_i32(0i, var_0), _wgslsmith_f_op_vec4_f32(var_3.a + var_3.a));
}

