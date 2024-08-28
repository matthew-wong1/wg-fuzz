struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<vec2<u32>, 17>();
    let var_0 = any(vec3<bool>(true == arg_0, !arg_0, !arg_0));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, _wgslsmith_f_op_f32(-735f + -839f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1348f, -1101f))), vec2<f32>(-336f, 551f), true))), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2082f, -1003f, -488f, 597f), vec4<f32>(-1211f, 2108f, -398f, 734f), vec4<bool>(arg_0, false, false, true)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, -1365f, -1957f, 1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(932f, -893f, 727f, -1000f), vec4<f32>(-1464f, -1439f, -1071f, -149f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2043f) * _wgslsmith_f_op_f32(f32(-1f) * -2141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), -171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f + 130f) - _wgslsmith_f_op_f32(f32(-1f) * -231f)))));
    var var_2 = (_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(10411u, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 1u))) == _wgslsmith_mult_u32(_wgslsmith_div_u32(~110234u, 15792u), 1u)) && arg_0;
    let var_3 = Struct_2(2147483647i, var_1, 1u);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_3.b.c.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(exp2(arg_1.b.x))) + 154f), _wgslsmith_f_op_f32(590f + arg_1.b.x)), vec4<f32>(-740f, -1191f, _wgslsmith_f_op_f32(-1590f - _wgslsmith_f_op_f32(func_3(true))), 1000f));
    let var_2 = !any(select(vec4<bool>(arg_1.a, var_1.a, var_1.a, true), vec4<bool>(arg_1.a, true, false, var_1.a), any(vec4<bool>(var_1.a, var_1.a, true, false)))) != var_1.a;
    return u_input.c;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = 50365i;
    let var_1 = _wgslsmith_mult_u32(abs(57574u), u_input.b.x) & (_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x) ^ ~(~_wgslsmith_sub_u32(0u, u_input.b.x)));
    let var_2 = vec4<u32>(39274u, var_1 | _wgslsmith_dot_vec3_u32(u_input.b.ywz, u_input.b.zzw), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(var_1, var_1), _wgslsmith_clamp_u32(1u, reverseBits(u_input.b.x), min(3712u, var_1)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(22859u, var_1, 20010u, 106887u), u_input.b)), ~(~vec3<u32>(u_input.b.x, var_1, u_input.b.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(max(11764u, 1u), _wgslsmith_div_u32(9354u, var_1) ^ var_1), min(~_wgslsmith_mod_u32(4294967295u, u_input.b.x), ~1u << (u_input.b.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(-arg_0.x));
    var var_4 = max(~func_2(vec2<u32>(4294967295u, var_1), Struct_1(false, arg_0, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) >> (14u % 32u), firstLeadingBit(u_input.a));
    return Struct_1((i32(-1i) * -23060i) < u_input.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, -177f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1739f, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1563f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 765f, arg_0.x, -125f), vec4<f32>(-1013f, 209f, arg_0.x, 173f), vec4<bool>(false, false, false, true))), 4558u != var_2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -425f, -116f) - vec4<f32>(arg_0.x, -1000f, arg_0.x, 1825f)) * vec4<f32>(2388f, 990f, 1000f, 1220f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(u_input.c), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-828f, 969f), vec2<f32>(1000f, -390f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, -625f))) * vec2<f32>(_wgslsmith_div_f32(-277f, -1559f), _wgslsmith_f_op_f32(-1203f - -2255f)))), u_input.b.x);
    global0 = array<vec2<u32>, 17>();
    let var_1 = !(!(!select(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.b.a, var_0.b.a, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.b.a, var_0.b.a, false), true))));
    let var_2 = var_0;
    global0 = array<vec2<u32>, 17>();
    let var_3 = firstLeadingBit(vec4<i32>(-1i) * -(~vec4<i32>(-1i, var_0.a, var_0.a, 18925i)));
    let x = u_input.a;
    s_output = StorageBuffer(-min(-select(24738i, var_2.a, var_2.b.a), ~(-var_3.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_2.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.c.x, -348f)))))))), var_0.b.c, vec3<f32>(_wgslsmith_f_op_f32(min(-381f, var_2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)) + _wgslsmith_f_op_f32(-var_0.b.b.x)), -296f), ~((~vec4<u32>(var_2.c, u_input.b.x, var_2.c, var_2.c) | u_input.b) | firstTrailingBit(u_input.b)));
}

