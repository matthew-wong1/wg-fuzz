struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global2 = array<vec3<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-456f)) * _wgslsmith_f_op_f32(abs(997f)))) - -213f);
    var var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1514f - _wgslsmith_f_op_f32(f32(-1f) * -127f)) * 1709f), min(~arg_0.yzz, countOneBits(vec3<u32>(u_input.b ^ 61517u, ~18037u, firstTrailingBit(arg_0.x)))));
    var var_3 = all(!select(vec3<bool>(true, all(vec2<bool>(false, false)), any(vec2<bool>(true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), false));
    return var_2;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    return ~arg_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(812f * arg_0.a))))));
    let var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(var_0.b.x, 29u)];
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_1.a)) - arg_0.a));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1278f)) * _wgslsmith_f_op_f32(516f - var_0.a)) - arg_1.x)), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f + 688f))), countOneBits(func_2(_wgslsmith_f_op_f32(f32(-1f) * -2375f), func_1(vec4<u32>(u_input.b, 1u, 0u, 4294967295u))))), _wgslsmith_div_vec2_f32(vec2<f32>(-400f, _wgslsmith_f_op_f32(1129f * -716f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, 514f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, 1357f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -842f), vec2<f32>(312f, -915f))))), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 373f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(var_1 * var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f - var_1) * -1343f))));
    global2 = array<vec3<f32>, 27>();
    let var_3 = func_1(vec4<u32>(1u, func_2(-525f, global0[_wgslsmith_index_u32(44386u, 29u)]).x, _wgslsmith_add_u32(60741u, 79230u), u_input.b));
    let var_4 = (_wgslsmith_mult_i32(-46489i, 1i) & u_input.c.x) >= select(~_wgslsmith_mult_i32(1i, u_input.a.x >> (var_3.b.x % 32u)), -2147483647i, true);
    var var_5 = func_1(reverseBits(~(~vec4<u32>(var_3.b.x, var_3.b.x, u_input.b, 1u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.b, var_3.b), u_input.b, u_input.b, 1u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1211f, var_1, ~vec4<u32>(24977u, ~var_5.b.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, 78885u, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.b, 26331u, var_5.b.x))), 1u), i32(-1i) * -1i);
}

