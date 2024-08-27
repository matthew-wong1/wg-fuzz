struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = !arg_0.a;
    return arg_0.a;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = vec2<i32>(select(u_input.b.x, u_input.a << (_wgslsmith_div_u32(35284u, 1u) % 32u), !(arg_0 && true)), -1i);
    let var_1 = Struct_1(func_1(Struct_1(arg_1), ~_wgslsmith_mod_i32(-33702i, -2147483647i)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-181f, arg_2, arg_2) * vec3<f32>(591f, arg_2, -1308f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, 357f, var_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1843f), _wgslsmith_f_op_f32(960f * arg_2)), _wgslsmith_f_op_f32(arg_2 + arg_2))));
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-1024f * var_2.x);
    return ~(~select(abs(1u), 4294967295u, all(vec3<bool>(var_3.a, true, false)))) | 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, false, true, false))), vec4<u32>(~(~1u), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(89088u, 4294967295u)), _wgslsmith_mod_u32(14547u, 1u)) | select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(67629u, 0u, 1u, 45998u), func_1(Struct_1(false), -50243i)));
    let var_1 = true;
    var var_2 = Struct_1(false);
    let var_3 = Struct_1(false);
    var_0 = vec4<u32>(func_3(var_3.a, true, _wgslsmith_f_op_f32(select(-1114f, -831f, true))), ~(~(_wgslsmith_mult_u32(64512u, var_0.x) << (reverseBits(var_0.x) % 32u))), var_0.x, var_0.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(true, func_1(Struct_1(false), ~(-1i))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))), select(true && all(vec2<bool>(true, true)), true, true));
    let var_1 = func_2();
    var var_2 = 1u;
    var var_3 = func_2();
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(28414u, 0u), abs(32192u), 46951u), vec3<u32>(select(~1u >> (1u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(57206u, 51650u, 4294967295u)), ~vec3<u32>(113534u, 45313u, 0u)), !var_3.a), 1u, 28692u));
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1507f, 1f, _wgslsmith_f_op_f32(floor(-693f)), -1255f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1131f, -663f, 1023f, 269f), vec4<f32>(-314f, -1382f, 757f, 584f))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-151f, -402f, 635f, -156f))))), vec3<f32>(1942f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(ceil(979f)))), -1000f), vec2<u32>(~var_4, 6841u));
}

