struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(true);
    var var_1 = Struct_2(arg_3.a, ~(vec4<u32>(4294967295u, u_input.a, ~u_input.a, ~u_input.b.x) | arg_3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f), -1853f));
    var_1 = arg_3;
    global0 = array<vec3<u32>, 25>();
    var var_2 = var_0.a & any(vec3<bool>(!var_0.a || var_0.a, var_0.a, all(!vec2<bool>(var_0.a, true))));
    return all(vec4<bool>(!select(false, var_0.a, true), false | all(vec4<bool>(var_0.a, false, false, var_0.a)), var_0.a, select(true, !var_0.a, all(vec2<bool>(var_0.a, false))))) && ((var_0.a | all(!vec2<bool>(true, var_0.a))) != true);
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    global0 = array<vec3<u32>, 25>();
    var var_0 = 31552u;
    let var_1 = u_input.a;
    global0 = array<vec3<u32>, 25>();
    var_0 = firstTrailingBit(_wgslsmith_mult_u32(reverseBits(var_1), var_1));
    return vec2<bool>(all(vec4<bool>(true, !any(vec3<bool>(true, true, true)), func_3(-237f, _wgslsmith_clamp_i32(-5156i, arg_0.x, -27528i), arg_0.x, Struct_2(26945u, vec4<u32>(34220u, 4063u, var_1, u_input.a), -1076f)), any(vec4<bool>(true, true, false, false)) & all(vec3<bool>(true, true, true)))), true);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = !(!(!func_2(-vec2<i32>(arg_2.a, arg_2.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-187f)) + _wgslsmith_f_op_f32(max(-272f, 540f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399f + -737f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, 168f)), _wgslsmith_div_f32(1164f, -383f), false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(592f, -140f, 561f, 1613f))) + vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1402f, 1067f, 655f, -667f))))))));
    return i32(-1i) * -1i;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(2558f - -624f);
    var var_1 = ~func_4(!(true || all(vec2<bool>(true, true))), Struct_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 47837i, 1i, 19488i), vec4<i32>(1i, 1i, 1i, 1i))), Struct_3(-37472i >> (abs(u_input.b.x) % 32u)), all(func_2(vec2<i32>(-4798i, -11039i) << (arg_0.xz % vec2<u32>(32u)))));
    var var_2 = Struct_1(!all(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u <= ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), u_input.b.x);
    global0 = array<vec3<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))) - 1001f))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 32993i, -15410i), abs(vec3<i32>(0i, -8625i, -5134i))), -2147483647i << (u_input.a % 32u)), -vec2<i32>(i32(-1i) * -6564i, max(1i, 20222i))));
}

