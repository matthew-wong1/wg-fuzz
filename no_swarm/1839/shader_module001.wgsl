struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 4294967295u, 0u, 44897u, 63627u, 4294967295u, 35728u, 26667u, 6847u, 1u, 4294967295u, 55970u, 1u, 1u, 1u, 9707u, 34970u, 4294967295u, 0u, 571u);

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(58903u, 4294967295u), vec2<u32>(40849u, 21042u), vec2<u32>(0u, 62649u), vec2<u32>(7350u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 58209u), vec2<u32>(0u, 10023u), vec2<u32>(67913u, 4294967295u), vec2<u32>(15798u, 0u), vec2<u32>(0u, 6531u), vec2<u32>(34555u, 16361u), vec2<u32>(30197u, 1u), vec2<u32>(1u, 31756u), vec2<u32>(0u, 891u), vec2<u32>(10293u, 44901u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26782u, 21787u), vec2<u32>(8875u, 0u), vec2<u32>(8504u, 19923u), vec2<u32>(1u, 0u), vec2<u32>(31456u, 1u), vec2<u32>(5017u, 20964u), vec2<u32>(8539u, 51095u));

var<private> global3: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, (abs(2147483647i) <= _wgslsmith_clamp_i32(1i, u_input.a.x, 2147483647i)) & true, _wgslsmith_mod_i32(2147483647i, ~(~(-u_input.a.x))));
    global2 = array<vec2<u32>, 23>();
    global2 = array<vec2<u32>, 23>();
    var var_1 = vec4<i32>(-firstLeadingBit(var_0.c), select(-abs(-12826i), ~u_input.a.x, false), _wgslsmith_clamp_i32(-u_input.c | var_0.c, ~select(_wgslsmith_dot_vec3_i32(u_input.a.xww, vec3<i32>(-3478i, 1i, -2147483647i)), -2147483647i, true), u_input.a.x), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(29631u, 21u)], 10453u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24817u, 21u)], 21u)]), vec3<u32>(28250u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])) << (firstTrailingBit(vec3<u32>(15051u, 61480u, u_input.b)) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 81042u), reverseBits(19889u) << (~u_input.b % 32u), _wgslsmith_div_u32(max(18646u, u_input.b), 4294967295u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)])), true), _wgslsmith_f_op_f32(sign(1f)), var_1.x);
}

