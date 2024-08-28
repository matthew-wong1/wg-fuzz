struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, 1i, -26332i, 1i, 46107i, 0i, -36832i, 1i, 47662i);

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> bool {
    return any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(arg_1, false, arg_1, false)), any(vec4<bool>(true, true, true, arg_1)), arg_1), false)) == !(!arg_1);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    global1 = array<vec2<bool>, 17>();
    let var_0 = _wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(~arg_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), arg_0.b.xz)) & max((59495u & arg_0.b.x) | u_input.d, 1u >> (0u % 32u)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f + -1042f)), _wgslsmith_f_op_f32(f32(-1f) * -711f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(66520i, global0[_wgslsmith_index_u32(u_input.d, 9u)]), -31975i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2086f, -451f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -685f))))));
    global1 = array<vec2<bool>, 17>();
    let var_2 = func_2(Struct_2(vec4<bool>(true, var_1.a.x < var_1.a.x, any(vec4<bool>(true, true, false, false)) && true, false), select(_wgslsmith_add_vec4_u32(vec4<u32>(11241u, 0u, 15438u, u_input.d), vec4<u32>(u_input.d, 4294967295u, 4294967295u, 14694u)) ^ vec4<u32>(u_input.d, 0u, u_input.d, 1u), vec4<u32>(~66111u, ~u_input.d, 1u, ~u_input.d), vec4<bool>(true, true, func_1(vec4<f32>(-306f, 214f, 170f, 1648f), false), true)), true, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 17u)]);
    let var_3 = _wgslsmith_f_op_f32(315f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))));
    let var_4 = u_input.d;
    var var_5 = _wgslsmith_f_op_f32(ceil(1000f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(max(_wgslsmith_clamp_u32(var_4, 17700u, 67810u), 103414u), _wgslsmith_add_u32(u_input.d, var_4) & select(var_4, var_4, true), ~_wgslsmith_mult_u32(u_input.d, 0u), 19758u) & ~abs(reverseBits(vec4<u32>(u_input.d, var_4, 34947u, 1u))));
}

