struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_1(arg_2.c, arg_2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1119f, arg_2.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + arg_2.a.x) * -213f)), 1000f));
    let var_1 = vec2<u32>(1u, ~47216u);
    var var_2 = Struct_1(var_0.a, arg_2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, var_0.a.x) - vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + 1183f), arg_2.b.x)), vec2<f32>(272f, var_0.c.x), !arg_0.x)));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), -2279f), var_2.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f * _wgslsmith_f_op_f32(floor(1464f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))));
    var var_4 = select(!(!(!(!arg_0.x))), !select(arg_3, true, !arg_0.x), any(vec4<bool>(!arg_3, true, arg_3, u_input.b >= -2147483647i)));
    return select(!vec2<bool>(!arg_3 && true, true && arg_3), vec2<bool>(true, any(vec4<bool>(select(arg_0.x, true, true), !arg_0.x, true, arg_3))), !select(!arg_0.zz, arg_0.zz, vec2<bool>(all(arg_0), any(vec4<bool>(true, arg_0.x, arg_3, true)))));
}

fn func_1() -> u32 {
    var var_0 = 1u;
    var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global0 = array<u32, 23>();
    var var_1 = vec2<bool>(true, all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(u_input.a, vec4<u32>(32012u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 5197u, 13926u), false), Struct_1(vec2<f32>(1236f, 262f), vec2<f32>(-1000f, -3953f), vec2<f32>(584f, 1481f)), true))));
    var var_2 = vec2<bool>(false, var_1.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * -156f)), _wgslsmith_f_op_f32(trunc(-346f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1763f)) * _wgslsmith_f_op_f32(max(335f, _wgslsmith_f_op_f32(-555f * -683f))))));
    let var_1 = func_1() << (abs(~(~14316u)) % 32u);
    global0 = array<u32, 23>();
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10093u, u_input.a.x, 86978u, ~0u) ^ ((vec4<u32>(1u, 38425u, 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(15453u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], var_1)) & ~vec4<u32>(4294967295u, var_1, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x)), vec4<u32>(4294967295u & (u_input.a.x >> (4294967295u % 32u)), var_1, 31995u, _wgslsmith_add_u32(~var_1, ~global0[_wgslsmith_index_u32(0u, 23u)]))), vec4<u32>(90104u, abs(1u), 88888u >> (_wgslsmith_sub_u32(1u, var_1 | 1u) % 32u), ~_wgslsmith_mult_u32(~var_1, _wgslsmith_add_u32(var_1, var_1))));
    global0 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(21339i ^ u_input.b, u_input.b)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -21217i, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, -50310i, u_input.b)), vec4<i32>(-1i, -20729i, u_input.b, -2147483647i) & vec4<i32>(u_input.b, 1i, u_input.b, 0i)) & _wgslsmith_mult_i32(1i, u_input.b)), var_2.x);
}

