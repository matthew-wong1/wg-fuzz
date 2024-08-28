struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = Struct_4(-(~countOneBits(vec3<i32>(u_input.a, 15794i, u_input.a))) & vec3<i32>(select(min(2147483647i, -2147483647i), 1i >> (0u % 32u), true), u_input.a, -u_input.a), select(vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, 0i, -37853i)), global0.x, global0.x, _wgslsmith_sub_i32(global0.x & 12224i, i32(-1i) * -2032i)), vec4<i32>(-_wgslsmith_clamp_i32(19131i, global0.x, -1i), global0.x, 1i, -abs(-15004i)), true), Struct_1(!(!(!arg_1.x)), 1895f));
    var var_1 = -(~abs(global0.x)) << (reverseBits(~(~28234u)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1259f, arg_3, arg_2.x, var_0.c.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.b, var_0.c.b, 1000f, 1244f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -2412f, arg_2.x, 1714f) * vec4<f32>(var_0.c.b, -159f, 1000f, 1373f))), arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(599f, _wgslsmith_f_op_f32(abs(166f)), _wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(ceil(var_0.c.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, arg_3, -1196f, 1258f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-218f, 1326f, arg_2.x, arg_2.x), vec4<f32>(903f, 626f, -2514f, arg_3), vec4<bool>(false, true, arg_1.x, false)))))))));
    var_0 = Struct_4(~var_0.b.zxy, var_0.b, Struct_1(any(vec4<bool>(var_0.c.a, var_0.c.a, true, false)), -595f));
    let var_3 = var_0.c;
    return ~abs(~arg_0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<f32> {
    global0 = -_wgslsmith_sub_vec3_i32(~reverseBits(vec3<i32>(u_input.a, global0.x, global0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -2147483647i, -1i), ~vec3<i32>(global0.x, -18747i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-31978i, -2147483647i, 28355i), vec3<i32>(global0.x, 27836i, -6340i))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    let var_0 = 1u;
    var var_1 = var_0;
    var var_2 = global0.zx;
    var_1 = var_0 >> ((1u >> (func_3(~vec3<u32>(var_0, 20566u, 0u), !(!arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 142f, arg_2.b))), _wgslsmith_f_op_f32(1181f * 1098f)) % 32u)) % 32u);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = vec4<i32>(max(~abs(i32(-1i) * -1i), 9972i), -18963i, reverseBits(-global0.x), -2147483647i);
    var var_1 = ~var_0.x;
    global0 = -abs(-var_0.yxz);
    var var_2 = -2147483647i;
    var_2 = ~countOneBits(u_input.a);
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(var_0), var_0);
}

fn func_1(arg_0: bool) -> bool {
    global0 = -(abs(vec3<i32>(~global0.x, -2147483647i, -global0.x)) ^ _wgslsmith_mod_vec3_i32(-(vec3<i32>(-11963i, global0.x, 2147483647i) & vec3<i32>(-37624i, 2147483647i, u_input.a)), vec3<i32>(_wgslsmith_div_i32(global0.x, u_input.a), i32(-1i) * -24414i, min(u_input.a, 16895i))));
    global0 = ~vec3<i32>(_wgslsmith_sub_i32(func_4(Struct_1(arg_0, -1215f), _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, arg_0, false, arg_0), vec2<f32>(-1573f, 276f), Struct_1(arg_0, 2427f))), min(u_input.a, -2147483647i), _wgslsmith_div_f32(-381f, 539f)), 9525i), ~(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -10721i, abs(2147483647i)), ~select(vec4<i32>(20774i, u_input.a, global0.x, global0.x), vec4<i32>(6107i, global0.x, u_input.a, u_input.a), vec4<bool>(arg_0, arg_0, arg_0, false))));
    var var_0 = 47622u;
    return !(!((all(vec4<bool>(arg_0, true, true, true)) | true) | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f));
    var var_1 = vec4<i32>(1i, _wgslsmith_add_i32(~0i, -24301i), global0.x, ~(~min(u_input.a, _wgslsmith_mult_i32(u_input.a, global0.x))));
    let var_2 = ~(~(~(~(~72327u))));
    let var_3 = ~global0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2049f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1005f, -1180f))))))));
    let var_4 = Struct_1(true, _wgslsmith_f_op_f32(-var_0.x));
    var var_5 = Struct_2(~min(11207u, 10629u), vec4<bool>(func_1(false), var_4.a, var_4.a, !(all(vec3<bool>(false, var_4.a, var_4.a)) || true)), false);
    var_5 = Struct_2(min(50704u, var_5.a), !var_5.b, var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_0.x, 216f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.b, var_0.x, var_4.b))))))), var_1.xy);
}

