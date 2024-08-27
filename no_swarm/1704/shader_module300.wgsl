struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<u32> {
    global0 = -1i;
    var var_0 = arg_1.x;
    let var_1 = arg_2;
    let var_2 = arg_2;
    var_0 = arg_2.a.x;
    return ~vec3<u32>(1u, 50635u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, reverseBits(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 61247u), ~vec2<u32>(arg_0, arg_0))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> vec2<bool> {
    global0 = ~36783i;
    var var_0 = -reverseBits(-2147483647i);
    let var_1 = _wgslsmith_add_u32(arg_2.x, arg_2.x);
    var var_2 = false;
    let var_3 = _wgslsmith_mod_u32(var_1, select(~89363u, countOneBits(var_1), false));
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    global0 = -36884i;
    var var_0 = (arg_1.e | -30140i) & abs(~_wgslsmith_div_i32(u_input.b.x, max(-1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), 545f, -703f));
    var var_2 = -796f;
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-var_1.x))));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> vec2<bool> {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(764f, -505f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(473f, 317f, arg_2)))), _wgslsmith_div_f32(-831f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1022f, 216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1274f)) * 577f)), _wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(f32(-1f) * -1239f))), Struct_1(select(vec2<bool>(arg_2, !arg_2), select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, false), vec2<bool>(true, arg_2), vec2<bool>(arg_2, true)), any(vec4<bool>(arg_2, false, true, arg_2))), !vec2<bool>(arg_2, arg_2)), select(func_3(_wgslsmith_f_op_f32(f32(-1f) * -694f), -18585i, func_2(40398u, vec2<bool>(true, arg_2), Struct_2(vec2<bool>(arg_2, arg_2)))), func_3(-715f, ~u_input.b.x, ~vec3<u32>(53996u, 4919u, 1u)), vec2<bool>(!arg_2, arg_2)), false, _wgslsmith_div_u32(~abs(13452u), ~1u), (_wgslsmith_mod_i32(u_input.b.x, arg_1.x) | u_input.b.x) | -28680i), vec3<i32>(arg_1.x, ~_wgslsmith_mult_i32(2147483647i, 1i), -9133i) | -u_input.b, _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1075f, -1000f, true)), _wgslsmith_f_op_f32(max(341f, -1948f)), arg_2)))));
    global0 = 1i;
    var var_1 = Struct_3(var_0, vec4<u32>(select(var_0.d, ~var_0.d, arg_2), var_0.d, var_0.d, var_0.d) | vec4<u32>(var_0.d, var_0.d, var_0.d, 4294967295u));
    var_1 = Struct_3(var_1.a, abs(firstTrailingBit(select(var_1.b, vec4<u32>(var_1.a.d, 10016u, var_0.d, 0u), arg_2))) & var_1.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)));
    return func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(182f, var_2, var_2, var_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -304f, var_2, 728f)))), vec4<f32>(_wgslsmith_f_op_f32(676f * _wgslsmith_f_op_f32(ceil(var_2))), var_2, 925f, _wgslsmith_f_op_f32(max(2221f, var_2)))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(397f, 139f, var_2, 267f), vec4<f32>(var_2, -469f, -233f, 1000f), var_1.a.b.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(1084f, var_2, var_2, var_2), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, var_2, -1540f, var_2))))), var_0, -arg_1, _wgslsmith_f_op_f32(var_2 - var_2)), ~u_input.b, -864f).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x | -firstLeadingBit(~_wgslsmith_add_i32(u_input.a.x, u_input.b.x));
    var var_0 = Struct_1(select(!func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -15872i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 3247i, 32407i)), vec3<i32>(0i, -2147483647i, u_input.b.x), false), func_4(vec4<f32>(-1047f, 730f, _wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(round(-619f))), func_4(vec4<f32>(667f, -2990f, -2413f, 1634f), Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), true, 35604u, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x), u_input.b, u_input.b), -203f), u_input.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-119f + -425f)))).b, func_4(vec4<f32>(-575f, _wgslsmith_f_op_f32(f32(-1f) * -1117f), 916f, _wgslsmith_f_op_f32(-560f - -713f)), Struct_1(func_3(1075f, u_input.b.x, vec3<u32>(0u, 0u, 4294967295u)), vec2<bool>(true, true), u_input.b.x == u_input.b.x, countOneBits(25025u), reverseBits(u_input.b.x)), select(u_input.b, min(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(0i, 8384i, u_input.b.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f))).c), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_sub_i32(0i << ((0u >> (1u % 32u)) % 32u), u_input.a.x), ~(~(~vec3<u32>(2381u, 8448u, 4294967295u)))), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), true)), 4294967295u, ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~reverseBits(74859u)), min(~var_0.d, ~firstLeadingBit(4294967295u))), ~(select(-1i, var_0.e, true) << (~1u % 32u)), ~var_0.d, _wgslsmith_mult_vec2_u32(~vec2<u32>(select(var_0.d, 1u, false), 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 5017u), ~vec2<u32>(var_0.d, var_0.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(888f))))))));
}

