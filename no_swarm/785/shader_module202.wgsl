struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-305f, -1275f, -316f, 2572f, 1494f, -753f, 809f, 1461f, 299f, 296f, -1630f, 1349f, -806f, 1456f, 110f, -718f, 617f, -270f, -177f, 1271f, -898f, 1354f, 261f, 673f, 1439f, -574f, -1467f, 456f, -465f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = select(vec3<bool>((~u_input.a <= -u_input.a) && any(vec3<bool>(true, true, true)), -(~46031i) == u_input.a, !select(true, true, false)), vec3<bool>(true, 30662i > (u_input.a ^ u_input.a), true), !select(vec3<bool>(true, select(false, true, true), any(vec4<bool>(true, true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(27171u, 0u))) << (~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 90112u, 0u)), vec3<u32>(1u, 1u, 1u)) % 32u), -select(countOneBits(abs(-2147483647i)), i32(-1i) * -89656i, true));
    var_1 = Struct_1(_wgslsmith_mult_u32(~abs(~var_1.a), ~(~var_1.a)), countOneBits(_wgslsmith_clamp_i32(u_input.a, select(50962i, u_input.a, true & var_0.x), select(var_1.b >> (var_1.a % 32u), _wgslsmith_sub_i32(-23318i, 1i), any(vec2<bool>(var_0.x, false))))));
    global0 = array<f32, 29>();
    var var_2 = vec2<bool>(!(true != (var_0.x | !var_0.x)), !(false & (global0[_wgslsmith_index_u32(20552u, 29u)] > 229f)) && var_0.x);
    return 0u;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(~(~25038u | _wgslsmith_clamp_u32(39339u, 0u, 37922u)) ^ func_3(), ~_wgslsmith_add_i32(reverseBits(u_input.a) << (~26355u % 32u), -u_input.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(var_0.a, 29u)], global0[_wgslsmith_index_u32(7109u, 29u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1295f, global0[_wgslsmith_index_u32(var_0.a, 29u)], 1468f, global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 29u)], 1000f, global0[_wgslsmith_index_u32(var_0.a, 29u)], global0[_wgslsmith_index_u32(var_0.a, 29u)]), vec4<f32>(-1000f, -1239f, -1112f, global0[_wgslsmith_index_u32(1u, 29u)]))))), vec4<bool>(arg_0, true, all(vec3<bool>(true, true, arg_0)), any(!vec3<bool>(arg_0, arg_0, arg_0)))))));
    let var_2 = Struct_1(3974u, ~var_0.b);
    return true;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 29>();
    let var_0 = !select(vec3<bool>(true, true, func_2(true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), !vec3<bool>(true, any(vec3<bool>(true, false, false)), u_input.a != 28349i));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_1 = select(!vec4<bool>(all(var_0) || (var_0.x | var_0.x), true, var_0.x, !var_0.x | false), !(!select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)), all(!vec3<bool>(var_0.x, false, false)) & all(vec2<bool>(true, var_0.x)));
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 33881u, 1u, 93045u), vec4<u32>(1u, 1u, 1u, 1u)), func_3() & 35183u) >> (~_wgslsmith_div_u32(24690u, abs(102556u)) % 32u), u_input.a | _wgslsmith_div_i32(~(-2147483647i), abs(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = firstTrailingBit(abs(~reverseBits(vec3<u32>(1u, 0u, 1u))));
    let var_1 = func_1();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-108f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, 1060f, global0[_wgslsmith_index_u32(47496u, 29u)], 295f) * vec4<f32>(400f, 1934f, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(var_1.a, 29u)])) * vec4<f32>(-537f, 2127f, 942f, global0[_wgslsmith_index_u32(var_1.a, 29u)])) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-759f, global0[_wgslsmith_index_u32(var_0.x, 29u)], 2400f, global0[_wgslsmith_index_u32(var_0.x, 29u)])))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(330f, global0[_wgslsmith_index_u32(var_1.a, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(-519f, 242f, global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)]), vec4<f32>(-253f, global0[_wgslsmith_index_u32(var_1.a, 29u)], 1000f, global0[_wgslsmith_index_u32(var_1.a, 29u)]))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(15310u, 29u)], global0[_wgslsmith_index_u32(var_1.a, 29u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1317f, -369f))), 123f);
}

