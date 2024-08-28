struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), firstTrailingBit(~_wgslsmith_mult_u32(85316u, global0.x))), vec2<f32>(-1514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1990f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(649f * 1170f) - _wgslsmith_f_op_f32(ceil(966f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2857f, -739f, 656f)))))), reverseBits(59526u)));
    global0 = vec2<u32>(0u, var_0.c.b);
    let var_1 = vec2<u32>(4294967295u, global0.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, 1000f, _wgslsmith_div_f32(-926f, var_0.c.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.a.x, var_0.a.a.x, -1148f))))), 18628u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_0.b, vec2<f32>(var_0.c.a.x, 1561f))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.a.x)), -2262f), arg_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(637f, -241f)), var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.b.x))), ~(~1u)));
    var var_3 = select(arg_0.x, !(arg_0.x && (_wgslsmith_mod_i32(65617i, u_input.b.x) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 48397i, -39775i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)))), true);
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = 1663f;
    var var_1 = !select(select(vec4<bool>(all(vec2<bool>(arg_0.x, true)), arg_0.x, func_3(vec4<bool>(arg_0.x, arg_0.x, true, false)), arg_0.x | arg_0.x), select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), all(arg_0.xx)), select(!vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, false))), select(vec4<bool>(true, true, select(arg_0.x, true, true), any(vec3<bool>(arg_0.x, false, false))), vec4<bool>(true, true, false, arg_0.x), !vec4<bool>(true, arg_0.x, true, arg_0.x)), select(select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, true, false, true), arg_0.x), false), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), all(select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true)))));
    var_1 = vec4<bool>(true, arg_0.x, any(!select(vec4<bool>(false, arg_0.x, true, false), !vec4<bool>(arg_0.x, var_1.x, arg_0.x, arg_0.x), !var_1.x)), var_1.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(144f, -524f)), _wgslsmith_f_op_f32(step(682f, 1210f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(541f)) * _wgslsmith_f_op_f32(floor(702f)))))));
    var_0 = 159f;
    return select(min(vec2<u32>(u_input.d | 0u, firstLeadingBit(u_input.d)) | ~vec2<u32>(44649u, u_input.d), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, global0.x), ~vec2<u32>(u_input.d, 63752u))), ~vec2<u32>(_wgslsmith_div_u32(~0u, 12256u), ~firstTrailingBit(77467u)), select(!vec2<bool>(arg_0.x, false), var_1.yx, !select(!vec2<bool>(false, var_1.x), vec2<bool>(false, false), var_1.x)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    global0 = ~(vec2<u32>(u_input.d, ~global0.x) | _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(global0.x, u_input.d)), vec2<u32>(0u, global0.x) >> (vec2<u32>(global0.x, 31330u) % vec2<u32>(32u))), func_2(select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)), -vec4<i32>(-32679i, -2147483647i, arg_0.a, u_input.e.x))));
    var var_0 = select(select(select(vec3<bool>(arg_1.x, arg_1.x, true), !select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, true, true), vec3<bool>(true, arg_1.x, false)), select(vec3<bool>(arg_1.x, false, true), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, false, true), vec3<bool>(arg_1.x, arg_1.x, false)), !vec3<bool>(arg_1.x, arg_1.x, false))), vec3<bool>(arg_1.x != select(true, arg_1.x, false), select(false, true, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), countOneBits(18057i) > _wgslsmith_mod_i32(arg_0.a, 34147i)), select(vec3<bool>(true, select(true, true, false), func_3(vec4<bool>(false, arg_1.x, false, arg_1.x))), select(!vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, arg_1.x, true), arg_1.x), vec3<bool>(any(vec4<bool>(true, false, arg_1.x, arg_1.x)), arg_1.x, u_input.d >= u_input.d))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, arg_1.x), true), select(!select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, false), vec3<bool>(arg_1.x, arg_1.x, false)), !vec3<bool>(false, arg_1.x, false), !arg_1.x), all(vec4<bool>(false, all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), true, !arg_1.x))), !vec3<bool>(all(!vec3<bool>(arg_1.x, true, true)), arg_1.x, all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(395f, -1813f, -992f) * vec3<f32>(873f, -981f, -1100f)), vec3<f32>(278f, 1096f, 890f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-105f, -891f, 705f), vec3<f32>(347f, 557f, -284f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1506f, 1050f, -295f))))), global0.x ^ ~select(~global0.x, abs(global0.x), all(vec2<bool>(true, true))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1493f * _wgslsmith_f_op_f32(f32(-1f) * -1926f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -951f) + _wgslsmith_f_op_f32(sign(-1288f))))));
    var var_3 = _wgslsmith_mod_vec4_i32(~min(firstLeadingBit(~vec4<i32>(5472i, u_input.a.x, 2147483647i, -12283i)), -countOneBits(vec4<i32>(arg_0.a, -1i, u_input.a.x, u_input.e.x))), ~(~(-(vec4<i32>(arg_0.a, u_input.b.x, arg_0.a, 0i) << (vec4<u32>(0u, 0u, global0.x, 4294967295u) % vec4<u32>(32u))))));
    return 227f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(_wgslsmith_add_i32(-15654i, 29581i), -u_input.e.x & (i32(-1i) * -u_input.a.x), _wgslsmith_clamp_i32(abs(firstTrailingBit(-2147483647i)), u_input.c, _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(25812i, 0i, -15041i), vec3<i32>(13952i, 11819i, -2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(func_1(Struct_3(-45885i), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))))));
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~global0.x, ~13894u), vec2<u32>(1u, 1u)) & vec2<u32>(global0.x, ~0u), vec2<u32>(func_2(vec3<bool>(true, true, true), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x), vec4<i32>(u_input.b.x, var_0.x, var_0.x, 13892i))).x, _wgslsmith_clamp_u32(~(~global0.x), 8871u, abs(u_input.d))));
    global0 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(50396u, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(u_input.d, 4294967295u, u_input.d))), ~u_input.d) ^ vec2<u32>(4294967295u, global0.x);
    let var_2 = Struct_3(~(-1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -515f, 872f, 1052f)))) + vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-271f * -896f), _wgslsmith_f_op_f32(select(1000f, var_1.x, false))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + -709f)), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1566f * var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
}

