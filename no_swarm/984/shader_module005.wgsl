struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, vec3<u32>(0u, 10067u, 58740u), 29839u, vec3<u32>(3459u, 4294967295u, 7296u), true), Struct_1(true, vec3<u32>(65189u, 32463u, 57218u), 4294967295u, vec3<u32>(52982u, 6789u, 0u), true), Struct_1(false, vec3<u32>(6961u, 58585u, 30191u), 0u, vec3<u32>(0u, 1u, 1u), true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    return arg_0.zz;
}

fn func_3() -> vec3<u32> {
    let var_0 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))));
    let var_1 = firstLeadingBit(vec2<u32>(~1u, max(~23111u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(7230u, 1u, 3796u), vec3<u32>(36416u, 13076u, 85353u)), 4294967295u))));
    global0 = array<Struct_1, 3>();
    return ~vec3<u32>(var_1.x, var_1.x, ~(~58950u));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_1.b, 3u)];
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.d.x, abs(arg_3.x), 0u), abs(1u | ~arg_0)), 3u)];
    var var_2 = (arg_3.x << (arg_1.a.d.x % 32u)) << (firstLeadingBit(arg_0) % 32u);
    let var_3 = func_2(vec4<i32>(~u_input.a, 1i, -10420i, reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, -2147483647i))))), !var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -212f))))));
    var_1 = Struct_1(true, var_0.b, _wgslsmith_mult_u32(~1u, ~arg_1.a.b.x), ~func_3(), false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(~func_1(38043u, Struct_2(global0[_wgslsmith_index_u32(78712u, 3u)], 1u, vec4<bool>(false, false, true, true), Struct_1(true, vec3<u32>(4294967295u, 0u, 0u), 1u, vec3<u32>(14763u, 82477u, 4294967295u), true), global0[_wgslsmith_index_u32(44818u, 3u)]), false, vec2<u32>(4294967295u, 1u)), 0u), _wgslsmith_mult_u32(18670u, 1u)), func_3().x, min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(97967u, 2765u, 8062u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, false, false)), vec3<u32>(28643u, 1u, _wgslsmith_div_u32(34321u, 49925u))), 37997u));
    let var_1 = Struct_1(!(!(!any(vec3<bool>(true, true, true)))), abs(var_0), _wgslsmith_mod_u32(firstTrailingBit(4294967295u) | (var_0.x & 0u), _wgslsmith_mod_u32(~var_0.x, var_0.x)) | 1u, _wgslsmith_add_vec3_u32(abs(~(~var_0)), var_0), true);
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_0.x, ~(u_input.a | u_input.a));
}

