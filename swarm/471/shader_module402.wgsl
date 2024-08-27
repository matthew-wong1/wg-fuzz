struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -752f;

var<private> global1: f32;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -575f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) * -997f))));
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f + -243f) - _wgslsmith_f_op_f32(min(408f, -868f))) - -1376f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -722f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1614f, -763f, false)), _wgslsmith_f_op_f32(-1000f - 955f)))));
    var_0 = 160f;
    let var_1 = Struct_1(-1i, ~reverseBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.x, u_input.a.x), firstLeadingBit(global2.x), u_input.a.x)));
    let var_2 = var_1;
    return reverseBits(12024u);
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = ~func_3();
    var var_1 = func_3();
    let var_2 = _wgslsmith_div_vec2_u32(global2.yy, select(~(~arg_0), ~arg_0, true)) ^ u_input.a.yz;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(-30845i), -(firstLeadingBit(-48245i) >> (0u % 32u))), _wgslsmith_clamp_i32(-(i32(-1i) * -46545i), _wgslsmith_add_i32(-2147483647i, -_wgslsmith_mult_i32(-28164i, 12758i)), 0i));
    let var_4 = false;
    return any(select(select(vec3<bool>(var_0 == 22291u, false, var_4), select(vec3<bool>(var_4, false, var_4), !vec3<bool>(var_4, true, true), var_4 | false), vec3<bool>(false, true, var_4)), vec3<bool>(var_4, all(select(vec2<bool>(true, var_4), vec2<bool>(var_4, var_4), var_4)), true), vec3<bool>(true, any(vec4<bool>(var_4, var_4, var_4, false)) | var_4, ~global2.x != 0u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = ~abs(countOneBits(vec4<i32>(8000i, arg_1.a, 1i, arg_1.a) >> (reverseBits(vec4<u32>(43483u, arg_1.b, u_input.a.x, global2.x)) % vec4<u32>(32u))));
    let var_2 = select(~var_0.b, u_input.a.x, true);
    global2 = vec3<u32>(~var_2, arg_1.b, var_0.b);
    var var_3 = ~(firstLeadingBit(~vec2<u32>(4294967295u, var_0.b)) ^ select(vec2<u32>(0u, 41317u), ~vec2<u32>(var_0.b, var_0.b), all(!vec4<bool>(arg_0, arg_0, false, arg_0))));
    return Struct_1(var_0.a, abs(var_2));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = Struct_1(17012i, func_3());
    return 17642u;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> f32 {
    let var_0 = func_4(true, func_4(arg_1 != 4294967295u, func_4(true, func_4(false, Struct_1(25373i, arg_2)))));
    let var_1 = -584f;
    global0 = _wgslsmith_f_op_f32(select(var_1, 529f, false));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -871f)) + var_1))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1181f, -928f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 829f), arg_3.xw)), _wgslsmith_div_vec2_f32(vec2<f32>(273f, 585f), vec2<f32>(406f, 686f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(trunc(var_2.x)))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(func_6(1i <= (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -48165i, -1i), vec3<i32>(-44892i, 5227i, 0i)), 1i) & ~_wgslsmith_mult_i32(-8855i, 19500i)), 4413u, min(func_5(func_4(func_2(vec2<u32>(51544u, u_input.a.x)), Struct_1(12193i, u_input.a.x)), func_4(true, func_4(true, Struct_1(17804i, 1u))), false, reverseBits(~u_input.a.x)), 60796u), select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<bool>(any(vec3<bool>(false, arg_0.x, true)), !arg_0.x, true, all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, false, false), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), select(!select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0.x), select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true), !vec4<bool>(false, arg_0.x, false, true), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x)), vec4<bool>(true, arg_0.x, all(arg_0), false)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1307f)));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 148f, 885f, -156f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1002f, 299f, -1000f, -223f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, -1000f, 355f, -706f)), all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)) | !arg_0.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(810f, -176f, -1317f, -915f))) - vec4<f32>(-951f, 598f, 299f, -203f)))))));
    let var_1 = Struct_1(~(-27121i), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~7032u, ~u_input.a.x, ~global2.x), vec3<u32>(u_input.a.x, 0u, ~86032u)), global2.x));
    var var_2 = arg_0.x;
    return -1308f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false))), true))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(848f * -1339f)), _wgslsmith_f_op_f32(-1372f - -259f)))));
    let var_0 = vec4<bool>(func_2(vec2<u32>(func_3(), _wgslsmith_div_u32(~global2.x, 1u))), true, all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), all(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true))), !(~abs(u_input.a.x) < u_input.a.x));
    global2 = ~firstTrailingBit(firstTrailingBit(~(~u_input.a)));
    global2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(abs(57630u), ~7590u, u_input.a.x), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, global2.x, 0u), u_input.a)));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-766f)))), 324f, true)), -1751f, !(!(var_0.x | var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

