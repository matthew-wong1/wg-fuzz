struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1000f, -210f, 1815f, -1521f, -3112f, -756f, -135f, -492f, -1829f, -1107f, -433f, -192f, -555f, 475f, 130f, 109f, 1000f, -1000f, -511f, -1761f, -414f, -1045f, -1362f);

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<bool, 10> = array<bool, 10>(true, true, false, true, false, true, true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    return any(vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(4433u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false), global2[_wgslsmith_index_u32(39811u, 10u)]), any(vec3<bool>(true, false, true)))), any(vec4<bool>(!global2[_wgslsmith_index_u32(36508u, 10u)], false, any(vec4<bool>(false, true, false, true)), !global2[_wgslsmith_index_u32(111107u, 10u)])), all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(35741u, 10u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 10u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(0u, 10u)])))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> u32 {
    global1 = array<Struct_3, 2>();
    var var_0 = any(vec4<bool>(-1i <= _wgslsmith_mult_i32(0i << (u_input.a.x % 32u), -26338i), true, func_3(), arg_0.a.b));
    global2 = array<bool, 10>();
    let var_1 = arg_0.a;
    var var_2 = var_1;
    return ~arg_0.a.a;
}

fn func_1() -> f32 {
    global2 = array<bool, 10>();
    var var_0 = !select(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true, true), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 10u)], false, false), true), select(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(89552u, 10u)])), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec3<bool>(true, true, true)), !(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(11176u, 10u)], global2[_wgslsmith_index_u32(35449u, 10u)])), true);
    let var_1 = Struct_2(func_2(Struct_3(Struct_2(59140u, var_0.x == true, Struct_1(vec4<i32>(2147483647i, -57493i, u_input.b, u_input.b), 1i))), ~(~37171u)), false, Struct_1(~(~vec4<i32>(u_input.c, u_input.d.x, 973i, 0i)), _wgslsmith_dot_vec2_i32(u_input.d.zy, reverseBits(~u_input.d.zx))));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a.x, 35978u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 46218u)), vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, var_1.a), vec4<u32>(var_1.a, 4294967295u, var_1.a, u_input.a.x)), vec4<u32>(var_1.a, _wgslsmith_mod_u32(0u, u_input.a.x), 85380u, ~4294967295u)), _wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(u_input.a.x, 1u, var_1.a, var_1.a), vec4<u32>(0u, var_1.a, 1u, u_input.a.x)) << (var_1.a % 32u), ~71510u), reverseBits(u_input.a.wxy));
    var var_3 = var_1.c;
    return -1022f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 10>();
    global0 = array<f32, 23>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33066u, 23u)] * global0[_wgslsmith_index_u32(33775u, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, 80952u) ^ u_input.a.x, 23u)], !(2147483647i >= u_input.b))))), _wgslsmith_f_op_f32(round(573f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~25798u, 23u)]))) - _wgslsmith_f_op_f32(step(971f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] * global0[_wgslsmith_index_u32(56476u, 23u)])))))), -1266f);
    let var_1 = 54958u;
    global1 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 255i), vec4<i32>(62870i, u_input.d.x, -3837i, u_input.b))) << (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1315f))));
}

