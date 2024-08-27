struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = u_input.b.x;
    global0 = 1u;
    var var_0 = _wgslsmith_mult_u32(~firstTrailingBit(~abs(85780u)), 0u);
    let var_1 = _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(32971u, 0u, ~0u, u_input.b.x)), ~(vec4<u32>(0u, ~7079u, firstLeadingBit(20284u), ~1u) | ~max(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x), vec4<u32>(89266u, u_input.b.x, u_input.b.x, u_input.b.x))));
    var_0 = 1u;
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = !select(select(!select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(arg_1.b, arg_1.b), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, arg_1.b)))), vec2<bool>(!arg_1.b, all(!vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))), select(select(select(vec2<bool>(arg_1.b, false), vec2<bool>(arg_1.b, true), vec2<bool>(false, arg_1.b)), vec2<bool>(arg_1.b, arg_1.b), false), select(!vec2<bool>(arg_1.b, false), select(vec2<bool>(true, arg_1.b), vec2<bool>(false, arg_1.b), vec2<bool>(false, arg_1.b)), arg_1.b || true), arg_1.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.b.wz * _wgslsmith_f_op_vec2_f32(-arg_0.b.wx)))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.xy));
    let var_3 = vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, var_0)) ^ vec2<u32>(50371u, var_0), vec2<u32>(47484u, var_0)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x + arg_1.a)))))), true | arg_1.b, Struct_2(_wgslsmith_div_f32(552f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-637f)))))));
    return var_0 ^ ~var_3.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> i32 {
    global0 = arg_0.x & arg_0.x;
    global1 = vec4<i32>(~u_input.a.x, -min(i32(-1i) * -2147483647i, global1.x) << (func_4(Struct_1(-1470f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2055f, -1000f, -470f, -708f)), _wgslsmith_sub_vec3_i32(vec3<i32>(49602i, u_input.a.x, u_input.a.x), vec3<i32>(44260i, -2147483647i, -33552i)), func_3(arg_1.x), vec3<i32>(-46064i, global1.x, 28757i)), Struct_3(_wgslsmith_div_f32(-880f, -1000f), arg_1.x, Struct_2(228f)), Struct_2(_wgslsmith_f_op_f32(-153f - 725f))) % 32u), -(~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -12274i, 11779i, -2147483647i), -vec4<i32>(1i, 0i, global1.x, global1.x))), global1.x);
    var var_0 = _wgslsmith_sub_i32(-u_input.a.x, max(-1i, global1.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-124f + 1000f)))), true, Struct_2(1f));
    var var_2 = u_input.a.x >> (1u % 32u);
    return -(~abs(_wgslsmith_sub_i32(-global1.x, -1i)));
}

fn func_1() -> u32 {
    var var_0 = 0i;
    global0 = u_input.b.x;
    var var_1 = u_input.a.x;
    var var_2 = vec2<bool>(true, any(vec2<bool>(true, false)));
    global1 = _wgslsmith_clamp_vec4_i32(countOneBits(firstTrailingBit(countOneBits(vec4<i32>(2147483647i, -30337i, 1i, 1i)))), firstLeadingBit(select(vec4<i32>(-2147483647i, global1.x, 9783i, 36764i), vec4<i32>(-52208i, 0i, u_input.a.x, u_input.a.x), 0i >= global1.x) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(92365u, u_input.b.x, 75268u, 27367u), vec4<u32>(0u, 72183u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x)) ^ (vec4<u32>(u_input.b.x, u_input.b.x, 84548u, u_input.b.x) << (vec4<u32>(1u, 78059u, 18891u, u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), select(vec4<i32>(-1i, abs(global1.x), 27031i | u_input.a.x, -global1.x) << (~abs(vec4<u32>(121932u, u_input.b.x, u_input.b.x, 1u)) % vec4<u32>(32u)), ~vec4<i32>(func_2(u_input.b, vec4<bool>(var_2.x, false, var_2.x, var_2.x)), 33362i, _wgslsmith_clamp_i32(global1.x, global1.x, 28439i), global1.x), var_2.x));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(~u_input.b.x, min(u_input.b.x, 1u)) & 4294967295u;
    global0 = min(3105u, (func_1() >> (u_input.b.x % 32u)) | 1u);
    global1 = ~select(vec4<i32>(-u_input.a.x, u_input.a.x, ~global1.x, countOneBits(u_input.a.x)), ~vec4<i32>(global1.x, -2147483647i, u_input.a.x, -1i), true) & -min(vec4<i32>(u_input.a.x, select(u_input.a.x, global1.x, true), 1i, select(u_input.a.x, 28765i, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 0i, global1.x, -10554i), abs(vec4<i32>(u_input.a.x, -20818i, -17616i, global1.x))));
    let var_0 = any(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), select(any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, false)), false)), !vec3<bool>(any(vec2<bool>(false, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(true, false, false))), select(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), min(u_input.b.x, u_input.b.x), u_input.b.x), ~u_input.b.x), select(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, 1i, u_input.a.x, global1.x), ~select(vec4<i32>(1i, global1.x, -11168i, u_input.a.x), vec4<i32>(u_input.a.x, global1.x, 1i, 1i), vec4<bool>(var_0, var_0, var_0, false))), vec4<i32>(~global1.x, ~_wgslsmith_sub_i32(u_input.a.x, -12954i), u_input.a.x & (i32(-1i) * -25590i), 35158i), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -1197f)), -1695f), 1034f);
}

