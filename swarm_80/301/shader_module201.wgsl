struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: array<bool, 22>;

var<private> global3: array<f32, 18> = array<f32, 18>(-527f, -1849f, 1019f, -1123f, -206f, 466f, 275f, 1488f, -898f, 202f, 1719f, 155f, 246f, 260f, 629f, 1000f, -485f, 235f);

var<private> global4: array<vec2<i32>, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global2 = array<bool, 22>();
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 63689u, 1u) ^ select(u_input.c.wxx, u_input.c.wyw, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec3<u32>(firstTrailingBit(u_input.c.x), 0u, ~65561u)), min(abs(u_input.c.x) | _wgslsmith_mod_u32(u_input.c.x, 0u), ~1u)), max(firstLeadingBit(~u_input.c.zy), vec2<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c.x)) | ~abs(firstTrailingBit(vec2<u32>(1u, u_input.c.x))));
    let var_1 = Struct_1(abs(vec4<u32>(countOneBits(min(u_input.c.x, 6729u)), 50392u, firstLeadingBit(var_0.x), 0u)), u_input.c.x);
    global4 = array<vec2<i32>, 4>();
    var var_2 = (1u | select(~(~var_1.a.x), u_input.c.x, global2[_wgslsmith_index_u32(~(4294967295u & var_0.x), 22u)])) < 1u;
    return !(!(!select(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 22u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 22u)]), true)));
}

fn func_2(arg_0: bool) -> u32 {
    global2 = array<bool, 22>();
    let var_0 = Struct_1(abs(abs(vec4<u32>(4294967295u, 36288u & u_input.c.x, 1u | u_input.c.x, u_input.c.x))), 75430u);
    global3 = array<f32, 18>();
    var var_1 = vec3<bool>(all(select(func_3(), func_3(), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)]), func_3(), true))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~43361u, 18u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.a.x, 18u)])), -1602f) != _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 18u)]));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(var_0.b, _wgslsmith_dot_vec3_u32(u_input.c.xzz, vec3<u32>(1u, 4294967295u, var_0.b)) >> (var_0.a.x % 32u)), ~u_input.c.x, ~countOneBits(u_input.c.x), 102164u), ~u_input.c.x);
    return max(u_input.c.x, var_2.b);
}

fn func_1() -> Struct_1 {
    global3 = array<f32, 18>();
    var var_0 = Struct_1(~(~(~vec4<u32>(u_input.c.x, 80838u, 40800u, 22619u))) | ~(~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 80580u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, ~(~u_input.c.x)), u_input.c.x));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, firstTrailingBit(func_2(any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)], true))))), abs(~_wgslsmith_mod_u32(~1u, ~0u)));
    var var_2 = Struct_1(firstTrailingBit(vec4<u32>(var_1, _wgslsmith_div_u32(0u, 60112u) << (1u % 32u), var_0.b, _wgslsmith_clamp_u32(max(1u, 1u), select(u_input.c.x, var_0.b, global2[_wgslsmith_index_u32(4294967295u, 22u)]), var_1))), ~(~(~(~var_1))));
    var var_3 = Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_2.b, 23339u, 4294967295u), var_0.a) | vec4<u32>(3428u, _wgslsmith_clamp_u32(var_2.a.x, var_0.b, var_2.a.x), 4294967295u >> (var_0.a.x % 32u), var_0.a.x)), min(u_input.c.x, ~_wgslsmith_clamp_u32(var_2.b, var_1, var_0.b)) << (var_2.b % 32u));
    return Struct_1(var_3.a, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 18>();
    global1 = array<vec3<bool>, 30>();
    global3 = array<f32, 18>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(25126u, u_input.c.x, 0u, 4294967295u), u_input.c) ^ min(u_input.c ^ u_input.c, ~vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x)), vec4<u32>(4294967295u, ~u_input.c.x, abs(u_input.c.x ^ u_input.c.x), firstLeadingBit(58192u))), _wgslsmith_add_u32(u_input.c.x, firstTrailingBit(~4294967295u)));
    global2 = array<bool, 22>();
    var var_1 = func_1();
    global3 = array<f32, 18>();
    let var_2 = 8069i;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.x, 15887u)), var_1.a.wx & vec2<u32>(var_1.a.x, 1u)) & ~abs(vec2<u32>(8611u, 1u))));
}

