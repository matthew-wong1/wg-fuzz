struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-47098i, -31755i, i32(-2147483648), 23867i), vec4<i32>(2699i, -21632i, 32682i, -17318i), vec4<i32>(-1i, -5767i, 1i, 2147483647i), vec4<i32>(-37922i, 1i, -1i, 2147483647i), vec4<i32>(-24434i, 0i, -37643i, 0i), vec4<i32>(33875i, 0i, 2147483647i, 0i), vec4<i32>(14564i, 0i, 2147483647i, 2469i), vec4<i32>(-7760i, 26464i, -1i, 2147483647i), vec4<i32>(9672i, 522i, 0i, 2147483647i), vec4<i32>(20391i, 2147483647i, 1i, -28947i), vec4<i32>(-11085i, i32(-2147483648), 0i, -47081i), vec4<i32>(14630i, -41340i, 22797i, 16505i), vec4<i32>(i32(-2147483648), -22733i, 29008i, 2147483647i), vec4<i32>(0i, -2710i, 38686i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -46147i, -12630i), vec4<i32>(0i, -14478i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -5071i, -4658i), vec4<i32>(1i, 5553i, -50457i, -1i), vec4<i32>(-1i, 13541i, 12130i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 0i, -1i), vec4<i32>(-1i, 0i, 2147483647i, -36864i));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(1345f, 436f)), Struct_1(vec2<f32>(-763f, 1300f)), Struct_1(vec2<f32>(487f, -594f)), Struct_1(vec2<f32>(126f, 398f)), Struct_1(vec2<f32>(-774f, -1000f)), Struct_1(vec2<f32>(1908f, 333f)), Struct_1(vec2<f32>(-910f, 1333f)), Struct_1(vec2<f32>(-1588f, -1197f)), Struct_1(vec2<f32>(1842f, 151f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec3<f32>(-309f, -220f, arg_0);
    global0 = array<vec4<i32>, 21>();
    let var_1 = 0u;
    let var_2 = true;
    global0 = array<vec4<i32>, 21>();
    return 0u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 16297u), 9u)];
    global0 = array<vec4<i32>, 21>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 9u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_div_f32(var_0.a.x, -458f)))));
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 33863u)), ~vec2<u32>(67029u, 4294967295u)), vec2<u32>(select(5959u, 0u, true), max(0u, 38775u))) & _wgslsmith_div_u32(1u, ~func_1(-1000f)), 9u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, 1054f))) - var_0.a), vec2<f32>(1103f, _wgslsmith_f_op_f32(-var_0.a.x)), !(-180f <= var_0.a.x))))));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = ~(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(25400u, 52897u), vec2<u32>(56129u, 1u)))) >= reverseBits(0u);
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 9u)];
    var var_3 = 526f;
    var_0 = u_input.a;
    var var_4 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(func_1(var_2.a.x), ~54539u, _wgslsmith_add_u32(17331u, 1u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(9479u, 1u)), 0u << (1u % 32u), ~0u) ^ (select(vec3<u32>(4294967295u, 79607u, 45138u), vec3<u32>(1u, 50411u, 40800u), vec3<bool>(false, false, true)) & ~vec3<u32>(71681u, 35686u, 4294967295u))), 9u)]);
    var var_5 = (_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(98715u, 88091u, 114790u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)) & min(37773u, 47674u)) << (max((func_3(true, u_input.a) >> (_wgslsmith_clamp_u32(16608u, 83615u, 64578u) % 32u)) << (firstLeadingBit(~0u) % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(33446u), 1u), 4890u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.a.x, 279f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1107f) * _wgslsmith_f_op_f32(-var_2.a.x)) - _wgslsmith_f_op_f32(step(2212f, -228f)))));
}

