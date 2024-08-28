struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 15>();
    var var_0 = any(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(vec2<bool>(all(vec2<bool>(true, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-629f, -1540f, 942f, _wgslsmith_f_op_f32(trunc(853f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)), 1545f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * 215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-547f, -1530f))))));
    var var_2 = abs(firstLeadingBit(vec2<i32>(0i, i32(-1i) * -1i)));
    global0 = array<Struct_1, 15>();
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 15>();
    var var_0 = vec3<bool>(arg_2.x, !(arg_1.x <= _wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), select(-16804i, arg_1.x, arg_2.x))), true);
    global0 = array<Struct_1, 15>();
    let var_1 = Struct_2(-(-_wgslsmith_add_i32(arg_1.x, arg_1.x) >> (func_3() % 32u)), vec3<f32>(1786f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(874f, 1369f)) + _wgslsmith_f_op_f32(f32(-1f) * -668f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(round(-227f)))))));
    let var_2 = !vec4<bool>(any(select(select(vec3<bool>(arg_2.x, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(true, arg_2.x, true)), !vec3<bool>(false, true, var_0.x), false)), true, true, true);
    return reverseBits(u_input.d.x);
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = vec2<u32>(63914u, ~(~func_2(0u, ~vec4<i32>(27260i, -2147483647i, arg_1, -1i), !vec2<bool>(arg_0, true))));
    var var_1 = Struct_3(Struct_2(abs(arg_1) | arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -415f, _wgslsmith_f_op_f32(f32(-1f) * -1059f)))), Struct_1(true, u_input.a, ~var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - 1698f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-238f, -1472f))))), Struct_1(any(vec3<bool>(arg_0, arg_0, !arg_0)), vec4<u32>(~41517u << (~var_0.x % 32u), firstTrailingBit(~1u), 85458u, reverseBits(_wgslsmith_clamp_u32(1u, var_0.x, u_input.d.x))), 40486u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1399f + -1587f), 180f) * 427f)));
    global0 = array<Struct_1, 15>();
    let var_2 = ~(-vec3<i32>(-39480i, abs(firstTrailingBit(arg_1)), -_wgslsmith_mult_i32(arg_1, var_1.a.a)));
    var var_3 = -1i;
    return _wgslsmith_sub_i32(~abs(abs(select(var_2.x, 44119i, arg_0))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let var_0 = Struct_2(_wgslsmith_add_i32(func_1(true, _wgslsmith_mod_i32(-1i, -21748i)), -1i) >> (38653u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f + -1000f)))));
    var var_1 = Struct_1(8008i == _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(var_0.a, -5302i)), 1i), ~reverseBits(abs(u_input.a)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)));
    global0 = array<Struct_1, 15>();
    let var_2 = vec4<f32>(var_0.b.x, var_0.b.x, -576f, _wgslsmith_f_op_f32(f32(-1f) * -683f));
    var var_3 = ~(~firstLeadingBit(4294967295u));
    let var_4 = -2147483647i;
    var_1 = Struct_1(all(select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, var_1.a)), select(vec2<bool>(var_1.a, true), vec2<bool>(false, true), true), !vec2<bool>(false, var_1.a))) & false, vec4<u32>(func_3(), 1u, ~_wgslsmith_div_u32(~var_1.c, 20439u), u_input.c), u_input.d.x, _wgslsmith_f_op_f32(-var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_4), -1i, _wgslsmith_sub_vec2_i32(abs(_wgslsmith_div_vec2_i32(max(vec2<i32>(var_4, 13967i), vec2<i32>(844i, -18295i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_4, 36129i), vec2<i32>(var_4, 2147483647i)))), -abs(_wgslsmith_add_vec2_i32(vec2<i32>(2703i, var_4), vec2<i32>(var_4, -21065i)))));
}

