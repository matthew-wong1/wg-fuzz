struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = 7024i;
    global0 = array<u32, 30>();
    let var_1 = true;
    global0 = array<u32, 30>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-425f, -564f)) - arg_1.b) * arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -384f));
    return vec4<bool>(false, all(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(76763u, arg_2.x, 0u, arg_2.x), vec4<u32>(0u, u_input.a.x, arg_2.x, 0u)) != global0[_wgslsmith_index_u32(~4294967295u, 30u)], true, true)), true, true);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4) -> i32 {
    let var_0 = firstLeadingBit(~countOneBits(arg_1.a.a.x));
    let var_1 = arg_1;
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_2 = any(!vec2<bool>(any(vec3<bool>(false, false, false)), true));
    return min(-firstTrailingBit(-arg_1.a.a.x) ^ -1i, _wgslsmith_add_i32(-60261i, var_0));
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<u32, 30>();
    var var_0 = Struct_4(Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(5166i, -2147483647i), vec2<i32>(0i, 0i)) ^ vec2<i32>(0i >> (global0[_wgslsmith_index_u32(1u, 30u)] % 32u), func_3(u_input.a, Struct_4(Struct_1(vec2<i32>(-11842i, -1i), 603f)))), 279f));
    let var_1 = var_0.a.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + 561f)), 2170f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b + -612f) - var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f * -897f))), var_0.a.b) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(441f * -1028f), -1016f, _wgslsmith_f_op_f32(floor(280f)), _wgslsmith_f_op_f32(ceil(var_0.a.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -997f, var_0.a.b, -520f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a.b, var_0.a.b, var_0.a.b)))))));
    var_2 = vec4<f32>(-1123f, _wgslsmith_f_op_f32(select(1126f, _wgslsmith_f_op_f32(sign(var_2.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(314f)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x - 438f))) * -955f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -619f))))), _wgslsmith_f_op_f32(-var_2.x))));
    return _wgslsmith_mod_i32(func_3(_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(max(8730u, 13086u), 30u)], _wgslsmith_dot_vec2_u32(vec2<u32>(5960u, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<u32>(global0[_wgslsmith_index_u32(42056u, 30u)], u_input.a.x))), vec2<u32>(1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), Struct_4(var_0.a)), -(var_0.a.a.x ^ var_0.a.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(125f, var_0.a.b)))) - 708f));
    var var_2 = Struct_4(Struct_1(-var_0.a.a, _wgslsmith_f_op_f32(824f * _wgslsmith_f_op_f32(step(1f, arg_2.a.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-662f, 1023f, arg_2.b)), -762f, -393f, _wgslsmith_f_op_f32(trunc(-722f))))), vec4<f32>(var_2.a.b, _wgslsmith_f_op_f32(1142f * _wgslsmith_f_op_f32(abs(arg_1.a.b))), -1020f, _wgslsmith_f_op_f32(arg_1.a.b - 859f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(445f, arg_2.a.b, var_2.a.b, 167f) + vec4<f32>(1057f, 1000f, -809f, 1962f)))))));
    var_1 = _wgslsmith_f_op_f32(step(150f, -2384f));
    return !(!func_1(arg_2.a.a.x << (_wgslsmith_mod_u32(13031u, 1u) % 32u), Struct_1(var_2.a.a, var_0.a.b), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 11294u, 1u), vec3<u32>(1u, 36141u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17077u, 30u)], 30u)]), arg_1.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 30u)]), vec3<u32>(9520u, u_input.a.x, 28135u)), abs(vec3<u32>(global0[_wgslsmith_index_u32(14362u, 30u)], u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), func_1(81520i, Struct_1(vec2<i32>(0i, -29570i), 1206f), vec3<u32>(u_input.a.x, 20287u, 1u)), true), func_4(firstLeadingBit(vec2<i32>(2147483647i, 42777i)), Struct_2(Struct_1(vec2<i32>(8008i, -2147483647i), -1160f), false), Struct_2(Struct_1(vec2<i32>(17757i, -21867i), -1000f), true), func_2(false))));
    var var_1 = func_1(-max(-37508i, 25145i) >> (~abs(global0[_wgslsmith_index_u32(33535u, 30u)]) % 32u), Struct_1(firstLeadingBit(firstLeadingBit(~vec2<i32>(-7973i, 2147483647i))), -535f), vec3<u32>(min(~97769u, firstTrailingBit(abs(u_input.a.x))), u_input.a.x, u_input.a.x)).x;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 48027i, -1i, -24424i), vec4<i32>(1i, 1i, 1i, 1i), any(vec3<bool>(false, true, false))), -vec4<i32>(41572i, 0i, -51098i, -20886i)) ^ -58008i, -(-(~3128i) & (2147483647i >> (u_input.a.x % 32u))));
    var_1 = false;
    global0 = array<u32, 30>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(47845u, 30u)], 65178u)), _wgslsmith_add_u32(~u_input.a.x, ~49483u), 35294u, _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)], 30u)], max(1u, u_input.a.x))), vec4<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(28471u, 30u)], 9374u, ~0u) >> (1u % 32u), ~u_input.a.x, ~(~_wgslsmith_mod_u32(23578u, global0[_wgslsmith_index_u32(4294967295u, 30u)])), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), 30u)])), 30u)];
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1124f, -183f)) + -322f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(701f, 519f, false)))), _wgslsmith_div_f32(-1121f, _wgslsmith_f_op_f32(f32(-1f) * -1323f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1053f, 1413f, -807f), vec3<f32>(315f, -1051f, -968f), true))))));
    var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, var_4.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, 877f))))))) - vec3<f32>(_wgslsmith_f_op_f32(min(347f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x)) - 795f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, max(vec3<i32>(~var_2.x, -var_2.x | (var_2.x ^ 16293i), _wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(var_2.x, var_2.x))), -min(vec3<i32>(var_2.x, 1i, var_2.x) ^ vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(var_2.x, var_2.x, 13420i))), var_4.x, max(global0[_wgslsmith_index_u32(~(~(35174u ^ u_input.a.x)), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 1u, 28372u), vec3<u32>(4294967295u, 41507u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(99091u, 30u)], 30u)], 30u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24303u, 30u)] << (u_input.a.x % 32u), 30u)] ^ 4294967295u), 30u)]), ~0u);
}

