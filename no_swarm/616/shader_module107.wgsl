struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, false, false, false, true, true, false, true, true, true, false, false, true, true, true, false, false, true, false, true, true, true, false, false, false, true, true, false, false, false);

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_u32(28988u, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.c.x, 55771u)), ~u_input.b.yx));
    let var_1 = 488f;
    return var_1;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(1481f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1899f))))), true, ~vec4<u32>(u_input.e.x, ~u_input.b.x << (1u % 32u), 58481u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 130158u, 8987u, 73121u), vec4<u32>(u_input.e.x, u_input.e.x, 0u, 4294967295u)), u_input.c.x));
    global1 = 0i <= _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, ~(-1i)), -u_input.d.x);
    let var_1 = min((_wgslsmith_clamp_vec3_u32(u_input.c, ~var_0.c.yyz, min(vec3<u32>(var_0.c.x, 119165u, var_0.c.x), var_0.c.wzx)) & _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.e.x, u_input.b.x, 1u))) | u_input.a, vec3<u32>(1u, 1u, u_input.c.x));
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x, -1418f), !(false && all(vec3<bool>(false, var_0.b, var_0.b))), var_0.c);
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = vec3<bool>(true, true, global0[_wgslsmith_index_u32(~u_input.b.x >> (0u % 32u), 32u)]);
    global1 = true;
    global1 = true;
    var var_2 = func_2();
    return var_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(func_1(~7758i));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2().a * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(582f, 1011f, 408f))))), (_wgslsmith_add_i32(u_input.d.x, -1i) << (abs(0u) % 32u)) > (u_input.d.x ^ ~(-5695i)), _wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(4294967295u, u_input.b.x, 54331u, u_input.e.x)), ~vec4<u32>(1u, u_input.c.x, 58625u, 59200u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1608f)))) - _wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1701f)) + -389f))), vec4<u32>(4294967295u << ((max(u_input.c.x, u_input.e.x) & u_input.a.x) % 32u), 4294967295u, u_input.a.x, 56143u), -(-_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, u_input.d.x) ^ -1i), _wgslsmith_f_op_f32(f32(-1f) * -2794f));
    var var_1 = var_0.a.a;
    global1 = any(!select(select(!vec4<bool>(true, true, var_0.a.b, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(false, true, var_0.a.b, var_0.a.b))), vec4<bool>(all(vec2<bool>(false, false)), true, global0[_wgslsmith_index_u32(4294967295u, 32u)] && true, select(var_0.a.b, false, global0[_wgslsmith_index_u32(4294967295u, 32u)])), true));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a.a * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a.a + var_0.a.a), _wgslsmith_f_op_vec3_f32(var_0.a.a - vec3<f32>(var_0.a.a.x, var_0.b, 769f)), true))), !all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 32u)], var_0.a.b)), (vec4<u32>(69535u, var_0.c.x, u_input.b.x, 16811u) << (var_0.c % vec4<u32>(32u))) ^ var_0.a.c));
    global1 = var_2.a.b | false;
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -51394i) & u_input.d.x, 103f);
}

