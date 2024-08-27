struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    return any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, !any(vec2<bool>(false, true)), false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, -2147483647i), u_input.b), vec2<i32>(u_input.b & u_input.b, 7679i))));
    let var_1 = u_input.b;
    var var_2 = Struct_1(true);
    let var_3 = select(select(!vec4<bool>(arg_2.a, true, var_2.a, var_2.a), vec4<bool>(false, arg_2.a, arg_2.a, var_2.a), true), vec4<bool>(arg_2.a, arg_2.a, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, -533f, arg_1))))), arg_2.a), var_2.a);
    let var_4 = ~arg_0;
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(299f, 355f, -1000f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(598f, 492f, -1260f), vec3<f32>(-557f, 904f, -152f)))))));
    let var_1 = arg_0;
    let var_2 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x ^ 4294967295u, 24u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 24u)], u_input.c.x, global0[_wgslsmith_index_u32(0u, 24u)]), vec4<u32>(~u_input.c.x, min(_wgslsmith_div_u32(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]), 50606u), _wgslsmith_add_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 24u)], 24u)], 24u)]), abs(u_input.c.x)), ~global0[_wgslsmith_index_u32(30180u | global0[_wgslsmith_index_u32(u_input.a, 24u)], 24u)]));
    var var_3 = vec2<bool>(true, func_3(vec3<f32>(507f, _wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-901f - -349f))) | ((firstTrailingBit(14725u) << (_wgslsmith_mod_u32(var_2.x, 59153u) % 32u)) <= _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, global0[_wgslsmith_index_u32(33299u, 24u)]), 24u)], ~1u)));
    return func_2(_wgslsmith_add_u32(1u, ~(~(~global0[_wgslsmith_index_u32(12915u, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f + 1633f)), var_1);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = u_input.d;
    global0 = array<u32, 24>();
    let var_1 = arg_3;
    global0 = array<u32, 24>();
    var var_2 = ~(~vec2<u32>(21977u, abs(30276u) & arg_1));
    return func_4(arg_3).a;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    return Struct_1(!func_5(-183f, ~(global0[_wgslsmith_index_u32(28032u, 24u)] ^ u_input.c.x), 1f, func_4(func_2(31149u, -1173f, Struct_1(true)))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = all(vec4<bool>(arg_0.a, arg_0.a, !arg_0.a, false));
    global0 = array<u32, 24>();
    let var_1 = arg_0;
    return func_4(func_4(func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 1u, 0u, u_input.c.x), reverseBits(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(18600u, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 102851u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-272f, 893f)))), func_2(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 24u)], 55611u), -148f, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    var var_0 = func_6(func_1(-681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1324f)) * -1460f)));
    var_0 = Struct_1(var_0.a);
    let var_1 = !(((~4294967295u & (59023u << (u_input.c.x % 32u))) | u_input.c.x) > ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(12676u, 24u)] >> (u_input.a % 32u), 24u)]);
    global0 = array<u32, 24>();
    let var_2 = u_input.a;
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(936f, 484f)), _wgslsmith_f_op_f32(min(-1000f, 574f)))))), ~vec3<u32>(~(~61146u), ~4294967295u, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), var_2, _wgslsmith_mod_u32(max(u_input.a << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c.x, 51123u), vec3<u32>(var_2, 6249u, 35834u)), _wgslsmith_div_vec3_u32(vec3<u32>(79871u, global0[_wgslsmith_index_u32(4294967295u, 24u)], 102115u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 35923u, global0[_wgslsmith_index_u32(68559u, 24u)])))), abs(abs(~u_input.c.x))));
}

