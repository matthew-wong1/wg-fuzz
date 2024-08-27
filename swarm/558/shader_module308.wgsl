struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false));

var<private> global1: f32 = -391f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32((1u >> (1u % 32u)) & (~0u | ~select(0u, 8314u, true)), 0u);
    var_0 = 39645u;
    var var_1 = ~firstTrailingBit((84754u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(47771u, 1u)) % 32u)) ^ select(~65037u, 1u, arg_1.a == u_input.b.x));
    let var_2 = 1i < u_input.a;
    let var_3 = u_input.a;
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(f32(-1f) * -517f)));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(1u, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(83444u, -1i))))), vec3<bool>(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(286f, -1000f, 1569f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, 835f, -100f))), Struct_1(countOneBits(38959i), true)).b, any(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !(!func_1(vec3<f32>(786f, 138f, 1916f), Struct_1(-1i, true)).b)));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, -106f), !select(select(select(var_0.b, var_0.b, false), var_0.b, true), !(!var_0.b), !var_0.b.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, -1350f, -1000f))), var_0.a)), vec3<bool>(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) - vec3<f32>(-243f, var_0.a.x, var_0.a.x)), Struct_1(-27404i, var_0.b.x)).b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u)) != select(reverseBits(1u), 1u, !var_0.b.x), all(vec2<bool>(!var_0.b.x, !var_0.b.x))));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + _wgslsmith_f_op_f32(sign(var_0.a.x))), 260f)), _wgslsmith_f_op_f32(-var_0.a.x), -1348f), var_0.b);
    let var_1 = reverseBits(1u) << ((_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 0u)), ~vec3<u32>(42500u, 1u, 0u)), 0u) | 4294967295u) % 32u);
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_1), abs(var_1)), vec2<u32>(1u, var_1)), countOneBits(_wgslsmith_sub_u32(select(var_1, var_1, var_0.a.x < var_0.a.x), 4294967295u)), ~(~var_1));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = min(max(_wgslsmith_mult_vec3_u32(abs(~arg_0), abs(arg_0)), firstLeadingBit(vec3<u32>(arg_0.x, 25494u, arg_0.x) ^ vec3<u32>(4840u, 4294967295u, 39665u)) ^ func_2()), arg_0);
    global0 = array<vec4<bool>, 6>();
    var var_1 = Struct_1(-_wgslsmith_div_i32(max(arg_1.x, arg_1.x), -40935i << (arg_0.x % 32u)) & abs((arg_1.x >> (var_0.x % 32u)) ^ arg_1.x), true);
    let var_2 = u_input.c.wwx;
    return countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0.x, var_0.x, 1u, ~var_0.x), vec4<u32>(arg_0.x & arg_0.x, ~arg_0.x, ~var_0.x, arg_0.x), select(~vec4<u32>(arg_0.x, 14814u, 1u, 1u), ~vec4<u32>(41623u, var_0.x, arg_0.x, 8464u), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(424f - 1319f), -1805f, 947f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(269f, 857f, 696f))), vec3<bool>(!var_0, false, false)))), Struct_1(u_input.c.x, true));
    global1 = _wgslsmith_f_op_f32(292f * -2102f);
    let var_2 = _wgslsmith_clamp_u32(~21605u, _wgslsmith_div_u32(1u, ~(~(~1u))), _wgslsmith_dot_vec4_u32(func_4(select(select(vec3<u32>(27683u, 8559u, 0u), vec3<u32>(1u, 1u, 14697u), vec3<bool>(var_0, var_1.b, true)), func_2(), true), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, var_1.a), select(vec2<i32>(-2147483647i, u_input.a), u_input.b.xx, vec2<bool>(var_1.b, true)))), vec4<u32>(4294967295u, func_2().x, 0u, max(0u, 34705u)) ^ countOneBits(vec4<u32>(4294967295u, 83680u, 54150u, 36353u))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-391f - 1f), vec3<f32>(-1467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-673f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(22680u, var_3.a))))))), ~u_input.c, abs(vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_div_i32(var_3.a, var_3.a), var_1.a, var_3.a) | u_input.c));
}

