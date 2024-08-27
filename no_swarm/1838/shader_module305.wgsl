struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = select(vec3<bool>(false, true, true), vec3<bool>(false, false, true != !any(vec2<bool>(true, false))), true);
    var var_1 = ~vec3<u32>(~(~u_input.a.x | u_input.a.x), ~u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 31961u, 56224u, 1u) & vec4<u32>(u_input.a.x, u_input.a.x, 12426u, u_input.a.x), ~vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.b)));
    let var_2 = 72853u;
    let var_3 = 999f;
    let var_4 = vec4<i32>(u_input.d.x, 2147483647i, -15306i, 3392i);
    return countOneBits(~vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, var_1.x), firstTrailingBit(73392u)), 14743u));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = abs(~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 228u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 65906u)) << (func_3() % vec3<u32>(32u)))));
    let var_1 = Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), true), !all(vec2<bool>(true, true)), arg_0);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-153f, 309f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(548f * -696f), -1088f, false)))));
    let var_3 = ~(abs(u_input.d) >> (select(reverseBits(vec3<u32>(var_0.x, u_input.b, 1u)) << (vec3<u32>(0u, var_0.x, var_0.x) % vec3<u32>(32u)), abs(vec3<u32>(1u, 0u, 75453u)) << (select(vec3<u32>(4590u, u_input.b, var_0.x), vec3<u32>(var_0.x, 44797u, var_0.x), vec3<bool>(false, true, var_1.a.x)) % vec3<u32>(32u)), !select(vec3<bool>(true, false, true), vec3<bool>(var_1.b, var_1.b, true), false)) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a, 1046f)) - _wgslsmith_f_op_f32(min(455f, _wgslsmith_f_op_f32(-var_2.a)))), 748f)));
    return !((!any(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)) | (~0u <= ~var_0.x)) & true);
}

fn func_1() -> vec3<bool> {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(func_2(-1i, u_input.d.x), true), vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)) & true, -4022i);
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    return !(!vec3<bool>(!(!var_0.a.x), var_0.b, !var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(func_1(), vec3<bool>(true, true, true), select(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_1(), true)), select(vec3<bool>(true, func_1().x, func_1().x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_1()), false || func_1().x), vec3<bool>(true, true, true), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-873f, 229f), vec2<f32>(-2343f, -1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-416f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1321f, -1177f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, 993f))))))));
    let var_2 = vec4<bool>(all(!func_1().zx), reverseBits(global0[_wgslsmith_index_u32(u_input.b, 27u)]) != -1i, false, !all(vec3<bool>(false, true, true)));
    var var_3 = Struct_3(true, u_input.b, vec4<bool>(!var_0.x, var_0.x, _wgslsmith_add_u32(4294967295u & u_input.a.x, 4294967295u) != u_input.b, false));
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

