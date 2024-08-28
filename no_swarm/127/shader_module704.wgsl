struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

var<private> global1: array<bool, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.a.x)) >> (u_input.a.x % 32u);
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    global0 = array<vec4<u32>, 14>();
    global1 = array<bool, 16>();
    return ~u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = !(!select(select(!arg_1, vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], true), arg_1), vec4<bool>(arg_1.x, any(arg_1.yw), true, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(select(arg_1, arg_1, arg_1.x), vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], true, true))));
    global0 = array<vec4<u32>, 14>();
    var_0 = arg_1;
    global1 = array<bool, 16>();
    var var_1 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a.x, 1u, u_input.a.x))), vec3<u32>(u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(101144u, u_input.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 14747u, 19594u), var_0.x), vec4<u32>(u_input.a.x, u_input.a.x, 4346u, 12194u)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 24104u), 14u)])));
    return vec3<u32>(0u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, func_2(true)), ~vec3<u32>(countOneBits(41516u), ~u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mod_i32(~42494i, -24685i), 2147483647i) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a ^ u_input.a), _wgslsmith_dot_vec2_u32(u_input.a, abs(vec2<u32>(u_input.a.x, u_input.a.x)))) % 32u), select(func_1(Struct_1(907f), !vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], false, true), -443f), vec3<u32>(u_input.a.x, ~0u, 41095u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, min(1u, 1u)), 16u)]) << (vec3<u32>(u_input.a.x, ~select(u_input.a.x, 4294967295u, true), min(9243u, abs(1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1220f * -176f) + _wgslsmith_f_op_f32(floor(672f))), _wgslsmith_f_op_f32(f32(-1f) * -825f)), -1061f, global1[_wgslsmith_index_u32(65712u, 16u)])));
}

