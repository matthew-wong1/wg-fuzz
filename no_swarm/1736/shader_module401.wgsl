struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = vec2<i32>(-8236i, ~(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -81553i), vec3<i32>(0i, u_input.a, u_input.a))) << (_wgslsmith_sub_u32(~14510u, 1u) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, 481f, -336f, -1708f)) * vec4<f32>(894f, 144f, 1834f, 2385f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-544f, -572f, -326f, -350f))), vec4<f32>(-1000f, 1461f, 782f, 331f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-876f, 891f, -249f, 514f)))))), !(!(~2147483647i > ~var_0.x))));
    var var_2 = vec3<i32>(var_0.x, -57569i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, -_wgslsmith_mult_i32(32714i, var_0.x), 0i), u_input.a));
    let var_3 = vec3<u32>(1u, 17330u, countOneBits(~abs(_wgslsmith_sub_u32(4294967295u, 28387u))));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, abs(u_input.a)), var_2.x);
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -987f, -527f) + vec3<f32>(-265f, -740f, -177f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(select(991f, -1482f, arg_0)), -1380f))), ~min(_wgslsmith_div_i32(-39137i, arg_1), -arg_1), u_input.a ^ min(-7766i, func_3()));
    let var_1 = Struct_2(var_0.c, var_0.a.x < _wgslsmith_f_op_f32(-var_0.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -732f, var_0.a.x)), vec3<f32>(var_0.a.x, 928f, -540f), !arg_0))), 36070i, ~u_input.a >> (~(~6225u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_1.c.a.zx - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-288f, _wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(abs(var_0.a.x)))), var_1.c.a.yy, true)));
    var var_3 = _wgslsmith_dot_vec2_i32(((~vec2<i32>(-13632i, u_input.a) >> (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) << (firstTrailingBit(vec2<u32>(4179u, 1430u)) % vec2<u32>(32u))) & min(~vec2<i32>(18206i, arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.c, arg_1), vec2<i32>(-1i, 2147483647i))), vec2<i32>(abs(~var_1.a), var_1.a));
    var_3 = _wgslsmith_add_i32(-var_0.b, _wgslsmith_mult_i32(arg_1, arg_1) >> (abs(firstLeadingBit(80255u)) % 32u));
    return max(vec2<i32>(~func_3(), abs(arg_1)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, _wgslsmith_mult_i32(u_input.a, ~var_1.a)), vec2<i32>(1i, var_1.a)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mult_i32(-2147483647i & u_input.a, _wgslsmith_mod_i32(countOneBits(reverseBits(1i | u_input.a)), 1i));
    let var_1 = _wgslsmith_sub_u32(20617u, abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, 75380u), 1u)));
    var var_2 = _wgslsmith_f_op_f32(ceil(arg_0));
    var var_3 = reverseBits(-(~(~func_2(false, -2147483647i))));
    let var_4 = Struct_2(1i, true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(377f, 1001f, arg_0), vec3<f32>(arg_0, 144f, -748f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -519f, 827f)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)))), 2147483647i, -(~abs(var_3.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(ceil(1000f)))) - arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = vec3<i32>(~arg_1.b.c, 1i, 38205i);
    var var_1 = -190f;
    let var_2 = Struct_3(select(vec4<bool>(false, -11163i != func_3(), !arg_1.a.x, true), !(!select(arg_1.a, arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x))), select(!arg_1.a, select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), !arg_1.a, any(arg_1.a.xw)), vec4<bool>(true, true, false, true))), arg_1.b, arg_1.c, arg_1.d);
    var_1 = 1000f;
    let var_3 = _wgslsmith_f_op_f32(ceil(-976f));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-145f + 1000f), _wgslsmith_f_op_f32(abs(-196f))))));
    let var_1 = ~(~1u);
    let var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1(-126f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-314f * -171f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), Struct_3(vec4<bool>(false, false, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, 728f, -1587f)), vec3<f32>(113f, -248f, -607f)), -u_input.a, ~u_input.a), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_1, var_1, 36952u), vec4<u32>(1u, var_1, 4294967295u, 1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1156f, -353f))))), var_1);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(~var_2.b.b | abs(u_input.a), _wgslsmith_clamp_i32(var_2.b.b, min(func_2(true, var_2.b.b).x, ~(-2147483647i)), u_input.a)));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * var_2.d)))))));
    let var_4 = var_2.b;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(2803f, var_4.a.x)))))), 1f);
    let var_5 = Struct_2(~var_4.b, !select(!var_2.a.x | true, false, true), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1077f + -1311f) * _wgslsmith_f_op_f32(sign(var_4.a.x))) - var_2.d), -624f, -409f, 104f), _wgslsmith_mod_i32(abs(abs(~0i)), func_3()), i32(-1i) * -7096i);
}

