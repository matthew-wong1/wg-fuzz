struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_add_u32(~max(u_input.d, 4294967295u), u_input.a) | 1u);
    let var_1 = 24855u;
    global0 = array<Struct_3, 29>();
    return arg_2.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    global2 = array<vec4<f32>, 18>();
    global0 = array<Struct_3, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), false), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, false))), vec4<bool>(true || all(vec3<bool>(true, false, true)), false, true, true), vec3<f32>(549f, _wgslsmith_f_op_f32(f32(-1f) * -1035f), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 18>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(580f, -596f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1018f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(368f + 436f) - _wgslsmith_f_op_f32(func_1(Struct_2(u_input.b.x), vec3<u32>(16346u, u_input.a, 18710u))))), true)));
    var var_1 = Struct_1(select(u_input.a > 48485u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - 1274f))) < 1000f, true));
    global0 = array<Struct_3, 29>();
    var var_2 = Struct_3(1u, Struct_2(0u), select(vec4<bool>(var_1.a, var_0.x != _wgslsmith_f_op_f32(f32(-1f) * -1151f), true, firstTrailingBit(4671u) >= u_input.a), select(vec4<bool>(var_0.x >= var_0.x, !var_1.a, var_1.a, var_1.a), !select(vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, false, var_1.a, var_1.a)), vec4<bool>(any(vec2<bool>(true, true)), -2903i > u_input.c, select(true, false, var_1.a), !var_1.a)), var_1.a), abs(vec4<u32>(~countOneBits(u_input.d), ~_wgslsmith_mod_u32(u_input.d, 1u), u_input.a, reverseBits(655u))));
    var var_3 = Struct_2(reverseBits(27366u));
    var_1 = Struct_1(var_1.a | true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c, u_input.c), vec2<i32>(i32(-1i) * -1i, firstLeadingBit(u_input.c))), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)));
}

