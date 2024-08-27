struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = -2147483647i;
    global0 = array<Struct_2, 7>();
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.d, u_input.c.x)), 7u)];
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(509f))))));
    return _wgslsmith_add_u32(u_input.c.x, firstLeadingBit(~(~_wgslsmith_add_u32(u_input.c.x, 71820u))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_2(!(!all(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)))));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_1 = func_2();
    return max(4294967295u, u_input.c.x);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u & firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(arg_2.a, 1u) << (u_input.c.x % 32u))), 7u)];
    let var_1 = ~(~(~0u));
    let var_2 = -(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-4238i, arg_0, arg_0, u_input.a.x) << (vec4<u32>(var_1, 4294967295u, var_1, u_input.c.x) % vec4<u32>(32u)), -vec4<i32>(arg_0, u_input.a.x, -8937i, arg_0))));
    let var_3 = vec4<u32>(~4294967295u, 4294967295u, var_1, var_1);
    global0 = array<Struct_2, 7>();
    return var_2.ywy;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(32028u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-555f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f + -1969f) - -652f), 1000f)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(arg_0, u_input.d, u_input.c.x, 11049u))), ~vec4<u32>(_wgslsmith_add_u32(arg_0, 33004u), _wgslsmith_mod_u32(var_0.a, arg_0), ~1u, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(abs(-1208f))), var_0.b.x) - _wgslsmith_f_op_vec3_f32(-var_0.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1996f)) + 1651f)), 709f)));
    var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-var_1.b));
    global0 = array<Struct_2, 7>();
    return Struct_2(!arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~countOneBits(select(12256u, u_input.c.x, true) ^ func_1(global0[_wgslsmith_index_u32(42599u, 7u)], u_input.d)), ~firstLeadingBit(func_3(-2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1518f, -1009f, 394f)), Struct_1(u_input.c.x, vec3<f32>(-179f, 409f, 669f)), Struct_2(false))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    global0 = array<Struct_2, 7>();
    var var_1 = (all(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, true), vec2<bool>(false, true))) != !(!(14772u <= u_input.c.x))) | var_0.a;
    var_1 = all(select(!select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), false), !var_0.a), select(vec2<bool>(var_0.a, true), !vec2<bool>(false, var_0.a), all(!vec4<bool>(true, true, false, var_0.a))), select(select(!vec2<bool>(var_0.a, var_0.a), !vec2<bool>(var_0.a, true), !vec2<bool>(false, var_0.a)), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a)), select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), var_0.a))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x & u_input.d, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(653f, _wgslsmith_f_op_f32(f32(-1f) * -1017f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -610f)))))));
}

