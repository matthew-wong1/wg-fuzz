struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(29207u, 1609u, 50122u, 4294967295u, 1u, 14587u, 42616u, 4294967295u, 4294967295u, 4294967295u, 66347u, 69137u, 67132u, 0u, 60526u, 4294967295u, 4294967295u, 43230u);

var<private> global1: array<f32, 19>;

var<private> global2: array<i32, 26> = array<i32, 26>(-1i, -1i, i32(-2147483648), i32(-2147483648), 36456i, i32(-2147483648), -1i, -1i, i32(-2147483648), -38329i, -8255i, -36387i, i32(-2147483648), 3128i, 2147483647i, 1i, -30091i, 2147483647i, 20581i, 73477i, i32(-2147483648), -13395i, -1i, 44093i, 2147483647i, 23990i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<i32, 26>();
    var var_0 = vec2<i32>(53875i, reverseBits(arg_0.a));
    global0 = array<u32, 18>();
    global2 = array<i32, 26>();
    let var_1 = !(~abs(~arg_0.a) > arg_0.a);
    return select(!vec4<bool>(var_1, var_1, var_1, true && !var_1), vec4<bool>(false, var_1, false, !(!(!var_1))), select(!(!vec4<bool>(var_1, var_1, false, false)), !select(!vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, true, var_1, true), select(var_1, false, true)), vec4<bool>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14684u, 19u)]) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 19u)]), select(!var_1, true, var_1), var_1, !(true & var_1))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(0u, 26u)]);
    global1 = array<f32, 19>();
    var var_1 = select(select(func_3(var_0), vec4<bool>(true, true, true, true), vec4<bool>(!any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)), global1[_wgslsmith_index_u32(~40888u, 19u)] >= _wgslsmith_div_f32(617f, 359f), true)), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, false), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, false, true)));
    global2 = array<i32, 26>();
    let var_2 = Struct_1(-1i);
    return global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a & firstTrailingBit(4294967295u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(43877u, 18u)]), vec3<u32>(u_input.a, 1u, 0u))), 4294967295u), min(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], ~0u, global0[_wgslsmith_index_u32(1u, 18u)] << (4294967295u % 32u)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]))), u_input.a), 26u)];
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a, 18u)] << (u_input.a % 32u), 26u)], _wgslsmith_mod_i32(-7592i, global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(func_2(), ~global2[_wgslsmith_index_u32(u_input.a, 26u)], -2147483647i), ~vec3<i32>(53096i, 0i, global2[_wgslsmith_index_u32(2437u, 26u)])), -2147483647i << (u_input.a % 32u)));
    global1 = array<f32, 19>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_1 = firstTrailingBit(reverseBits(u_input.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    var var_0 = 6657i;
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 19u)] - -949f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 19u)] + 653f), 1000f))), any(select(vec3<bool>(u_input.a < 42635u, false, global2[_wgslsmith_index_u32(0u, 26u)] < -2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, all(vec3<bool>(false, false, false))), false));
    global0 = array<u32, 18>();
    global1 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a & ~20192u, 19u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 19u)]) - -287f)), -586f, 1254f, global1[_wgslsmith_index_u32(u_input.a, 19u)]), ~((_wgslsmith_add_vec4_u32(vec4<u32>(1u, 21461u, 0u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 4294967295u, 0u, 27843u)) ^ (vec4<u32>(0u, u_input.a, 1u, 57755u) & vec4<u32>(38185u, 4294967295u, 29881u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)]))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 63994u, global0[_wgslsmith_index_u32(11316u, 18u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.a) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, 2494u, 16080u, 71958u), vec4<u32>(u_input.a, 5342u, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]))) % vec4<u32>(32u))), 595f);
}

