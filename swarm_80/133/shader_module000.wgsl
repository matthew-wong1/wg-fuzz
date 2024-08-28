struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-27150i, 1i, 2147483647i), vec3<i32>(-57434i, -4125i, i32(-2147483648)), vec3<i32>(71736i, 9003i, 21017i), vec3<i32>(i32(-2147483648), 1i, 2202i), vec3<i32>(-13641i, 58429i, 68881i), vec3<i32>(-22626i, 1i, 30212i), vec3<i32>(1i, -54297i, -7691i), vec3<i32>(0i, 59261i, -20431i), vec3<i32>(i32(-2147483648), -19451i, 18893i), vec3<i32>(-5670i, 2147483647i, 0i), vec3<i32>(-23079i, -40055i, 14510i), vec3<i32>(54800i, 0i, 72930i), vec3<i32>(17493i, 28684i, 2147483647i), vec3<i32>(-1876i, 1i, i32(-2147483648)), vec3<i32>(60i, 3901i, 2147483647i), vec3<i32>(55126i, 2147483647i, 15200i), vec3<i32>(i32(-2147483648), 0i, 2147483647i));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(1000f);
    let var_1 = _wgslsmith_f_op_f32(select(-100f, -657f, false));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    global1 = var_0;
    return ~(1u >> (1u % 32u));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    global0 = array<vec3<i32>, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a.a));
    global1 = var_0.a;
    var var_2 = arg_3;
    return ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~select(23120u, 1u, arg_1.x)));
}

fn func_1() -> u32 {
    let var_0 = vec4<u32>(func_3(false, vec2<bool>(true, true), ~(~0u) > func_2(), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.a)))), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(_wgslsmith_add_u32(0u, 11777u), 19214u, ~0u), vec3<u32>(reverseBits(26483u), func_3(false, vec2<bool>(true, false), false, Struct_2(Struct_1(global1.a))), 1u), vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(true, true, false, false))))), min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 103849u, 0u, 89304u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 28697u, 22340u, 24813u), ~vec4<u32>(0u, 74268u, 1u, 95279u), vec4<u32>(13369u, 60980u, 8512u, 4294967295u))), 1u));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global1.a)) * _wgslsmith_f_op_f32(sign(915f))), _wgslsmith_f_op_f32(-2701f - 268f))));
    global1 = Struct_1(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(max(-1782f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-476f))))))));
    global0 = array<vec3<i32>, 17>();
    var var_1 = u_input.a.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 38855u, 1u)), select(_wgslsmith_mod_u32(16594u, 43491u), func_1(), true)) >> (~19490u % 32u));
    global0 = array<vec3<i32>, 17>();
    global1 = Struct_1(global1.a);
    global0 = array<vec3<i32>, 17>();
    let var_1 = 386f;
    let var_2 = _wgslsmith_f_op_f32(sign(global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1111f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, global1.a))))), vec4<u32>(1u, _wgslsmith_div_u32(var_0, var_0), reverseBits(var_0 ^ 87519u), ~var_0) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(80123u, 1u ^ var_0, ~4294967295u, var_0), ~vec4<u32>(var_0, var_0, 4294967295u, 0u)), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_0), ~firstLeadingBit(var_0)));
}

