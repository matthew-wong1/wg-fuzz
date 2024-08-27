struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = select(vec2<bool>(!select(false, all(vec3<bool>(arg_3, false, false)), true), any(vec4<bool>(arg_3, true, u_input.e != 2147483647i, arg_1))), vec2<bool>(arg_1, arg_1), !(!(~u_input.c < 0i)));
    var var_1 = _wgslsmith_sub_vec3_u32(u_input.d.xwx, firstLeadingBit(_wgslsmith_mod_vec3_u32(select(u_input.d.wxy, u_input.d.xww, arg_3), u_input.d.zxy))) | vec3<u32>(u_input.a.x, 30595u, _wgslsmith_div_u32(16741u, ~(arg_2 & u_input.b.x)));
    var var_2 = 909f;
    let var_3 = vec2<bool>(false, !(countOneBits(~u_input.b.x) <= arg_2));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-377f)), -556f, _wgslsmith_f_op_f32(-202f + 3039f), _wgslsmith_f_op_f32(ceil(1287f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, -1537f, -713f, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f + 469f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -930f), all(vec2<bool>(arg_1, arg_0)))), _wgslsmith_f_op_f32(floor(-616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f - 231f)))), select(vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(u_input.d.x, u_input.b.x)), 8799u), ~_wgslsmith_mult_vec2_u32(~u_input.a, var_1.yy), !var_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1745f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -669f)))))), u_input.e);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_4.c.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1531f * -958f), -751f), -1721f))));
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(vec4<f32>(1f, -1874f, _wgslsmith_f_op_f32(-1493f * _wgslsmith_f_op_f32(min(1861f, -158f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-242f - 1224f)))), _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(u_input.d.x, 62550u)), vec2<u32>(52186u, u_input.a.x), ~u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, -421f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-674f, -736f), vec2<f32>(2476f, 381f)))) * vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, 150f)), _wgslsmith_f_op_f32(min(1774f, 835f)))), -2147483647i));
    let var_1 = var_0;
    global0 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(821f, 428f)), _wgslsmith_f_op_f32(func_3(false, true, 4294967295u, false)), 870f, _wgslsmith_div_f32(var_1.a.a.x, var_0.a.a.x)) - vec4<f32>(-777f, var_0.a.a.x, _wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, false)), _wgslsmith_f_op_f32(-var_1.a.a.x)))), max(~(~var_1.a.b), _wgslsmith_add_vec2_u32(~abs(var_1.a.b), max(u_input.b & vec2<u32>(31238u, 1u), ~vec2<u32>(0u, var_1.a.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, var_0.a.a.x)), u_input.c);
    global0 = 1u;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1177f)))), 1f, 201f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_2.a, vec2<u32>(35821u, u_input.d.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(485f, arg_2.c.x) * arg_2.c))) + arg_2.a.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(213f, arg_2.a.x))))), ~arg_2.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1078f, _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(ceil(arg_2.c.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x - var_0.c.x), _wgslsmith_f_op_f32(floor(var_0.a.x)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.a.wxw + _wgslsmith_f_op_vec3_f32(func_2()));
    var var_3 = Struct_1(vec4<f32>(-681f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_2.x, 1000f)))))), var_2.x, -524f), _wgslsmith_mult_vec2_u32(~arg_2.b, vec2<u32>(arg_1, _wgslsmith_clamp_u32(0u, 0u, 0u) | max(u_input.b.x, arg_2.b.x))), _wgslsmith_f_op_vec3_f32(func_2()).xy, firstTrailingBit(u_input.e));
    global0 = 4294967295u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1174f), var_0.a.x)) - _wgslsmith_f_op_f32(step(-1426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, var_3.c.x, true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(488f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(2126f, var_2.x))), true)));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -697f, arg_0) * vec4<f32>(arg_1, arg_1, 986f, -526f)))) + vec4<f32>(arg_0, arg_1, -575f, -1000f))), ~(~u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0)), u_input.c);
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(0i >> (var_0.b.x % 32u), -30472i, var_0.d & u_input.c), firstTrailingBit(firstLeadingBit(vec3<i32>(2147483647i, 0i, var_0.d)))) | select(vec3<i32>(-1i) * -(~vec3<i32>(var_0.d, var_0.d, var_0.d)), vec3<i32>(_wgslsmith_div_i32(select(-1i, var_0.d, true), -2147483647i), ~_wgslsmith_clamp_i32(1i, -3028i, 0i), reverseBits(45771i)), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)));
    let var_2 = var_0.c.x;
    let var_3 = ~u_input.c;
    var var_4 = ~(~vec3<i32>(~(-var_3), u_input.e, ~(~var_1.x)));
    return Struct_2(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global0 = 7074u;
    let var_0 = func_4(-420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f - _wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.e, u_input.e, u_input.e), u_input.d.x, Struct_1(vec4<f32>(556f, 1919f, 1156f, 1212f), vec2<u32>(u_input.d.x, 142257u), vec2<f32>(-1000f, 572f), u_input.e)))))));
    var var_1 = var_0.a.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(~0u, u_input.b.x), 16358u), -1i);
}

