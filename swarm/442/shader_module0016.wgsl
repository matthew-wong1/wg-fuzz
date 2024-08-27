struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 122f;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(700f, -802f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * 1456f)), 597f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 613f)), 313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1637f + var_0.x)));
    let var_1 = Struct_1(firstLeadingBit(vec2<i32>(arg_0.a, 2147483647i) | ~firstTrailingBit(vec2<i32>(arg_0.a, 2147483647i))), true, countOneBits(vec2<i32>(arg_0.a, _wgslsmith_div_i32(23046i, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))));
    var var_2 = _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 212f)));
    global0 = var_1.d.x;
    return all(vec3<bool>(var_1.b, all(vec2<bool>(var_1.b, true)), !var_1.b && !(var_1.b | true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = arg_1.x;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(128f, -447f))), _wgslsmith_f_op_f32(min(-796f, _wgslsmith_f_op_f32(-arg_0.x))))))));
    let var_1 = !func_3(Struct_2(-1850i));
    let var_2 = Struct_2(~min(22956i, min(1i, _wgslsmith_div_i32(11504i, 39050i))));
    var var_3 = Struct_2(-3705i);
    return 2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_clamp_i32(max(~arg_0.a >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(vec3<f32>(173f, 998f, 626f), vec2<bool>(true, false), vec3<bool>(false, false, true)), -arg_0.a, firstLeadingBit(arg_0.a), i32(-1i) * -1i), abs(firstTrailingBit(vec4<i32>(0i, arg_0.a, 38850i, 2147483647i))))), 15627i, arg_0.a);
    return !any(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(countOneBits(~1i) & ~_wgslsmith_clamp_i32(1i, -51810i, -1i));
    var var_1 = Struct_2(var_0.a & (i32(-1i) * -1i));
    let var_2 = 1547f;
    let var_3 = func_1(Struct_2(10167i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f), 1051f) * -523f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -122f, 492f, -720f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, 117f, -229f, -1165f), vec4<f32>(464f, var_2, var_2, var_2))))));
    var var_4 = firstLeadingBit((_wgslsmith_add_vec3_i32(~vec3<i32>(5704i, var_0.a, var_1.a), -vec3<i32>(var_0.a, var_0.a, var_0.a)) & _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.a, -7930i, -2147483647i), vec3<i32>(var_0.a, var_0.a, 0i))) & vec3<i32>(_wgslsmith_div_i32(20528i, 15371i), 28426i, _wgslsmith_mult_i32(~(-13259i), var_1.a)));
    var var_5 = true;
    let var_6 = vec2<bool>(any(vec3<bool>(true && any(vec3<bool>(var_3, true, true)), !(!var_3), 0u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 33155u, 1u), vec4<u32>(77497u, u_input.a, 4294967295u, 37466u)))), !var_3);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 11524u, var_0.a, func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, var_2, var_2))))), var_6, vec3<bool>(all(!vec3<bool>(false, var_6.x, var_3)), var_6.x, true)));
}

