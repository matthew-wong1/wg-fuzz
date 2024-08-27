struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(45073u, 53136u, 69245u, 1u, 24923u);

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    global0 = array<u32, 5>();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    return abs(_wgslsmith_add_u32(~10025u, ~arg_0));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_mult_u32(select(_wgslsmith_sub_u32(func_3(~global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], true), 25207u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 19462u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 73732u, 1u)) ^ _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), select(!(arg_0.a.x == 599f), true, 74339u >= u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), vec3<u32>(u_input.a, 47194u, u_input.b.x))) & (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 65422u, 4294967295u) << (vec3<u32>(9411u, 0u, global0[_wgslsmith_index_u32(68095u, 5u)]) % vec3<u32>(32u))), vec3<u32>(min(global0[_wgslsmith_index_u32(4294967295u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)] % 32u), 5u)], 62061u), 4294967295u, ~global0[_wgslsmith_index_u32(1u, 5u)])));
    var var_1 = !any(vec2<bool>(all(select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, true))), (u_input.a << (u_input.a % 32u)) > 1u));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(56881i, 1i, arg_0.c, arg_0.c))), -vec4<i32>(-arg_0.c, firstTrailingBit(arg_0.c), -44146i, -31439i)), arg_0.c, max(arg_0.c, 1i));
    return !any(select(vec3<bool>(all(vec4<bool>(true, arg_0.b.x, false, false)), any(arg_0.b), arg_0.d.x != -884f), select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), !vec3<bool>(true, true, arg_0.b.x), any(vec2<bool>(true, arg_0.b.x))), vec3<bool>(true, arg_0.b.x, arg_0.b.x)));
}

fn func_1() -> vec2<u32> {
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(select(false, false, true), func_2(global1[_wgslsmith_index_u32(u_input.b.x, 17u)]))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 17u)])), vec2<bool>(true, true)), any(vec4<bool>(any(vec4<bool>(true, false, true, true)), false, true, false))), vec2<bool>(true, true == any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))));
    global0 = array<u32, 5>();
    return ~vec2<u32>(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(94015u, u_input.b.x >> (0u % 32u)) ^ u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(~func_1());
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(~var_0.x, 5u)], ~u_input.b.x, 18210u), vec3<u32>(var_0.x, ~var_0.x, ~global0[_wgslsmith_index_u32(12975u, 5u)])) << (vec3<u32>(~(~95332u), ~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(var_0.x, 5u)]), ~0u | (var_0.x & 18808u)) % vec3<u32>(32u)), ((_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 5u)], var_0.x), vec3<u32>(var_0.x, u_input.b.x, u_input.b.x)) << (abs(vec3<u32>(var_0.x, 54785u, 54277u)) % vec3<u32>(32u))) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(16495u, u_input.a, u_input.b.x), vec3<u32>(41541u, 4294967295u, global0[_wgslsmith_index_u32(41061u, 5u)]))) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(24284u, 24006u, global0[_wgslsmith_index_u32(var_0.x, 5u)]), min(vec3<u32>(u_input.b.x, var_0.x, 0u), vec3<u32>(0u, u_input.b.x, 16291u)))), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, vec3<u32>(_wgslsmith_mod_u32(~(~81634u), 48813u), global0[_wgslsmith_index_u32(1u, 5u)], 29313u));
}

