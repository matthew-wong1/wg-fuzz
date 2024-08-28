struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = 8065u;
    var var_2 = ~vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, firstLeadingBit(0u)), vec2<u32>(~0u, ~37583u)));
    var_1 = 105779u;
    return ~(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 36047u, 1u)), vec3<u32>(97585u, 97537u, var_2.x)) & vec3<u32>(var_2.x, _wgslsmith_add_u32(var_2.x, firstLeadingBit(1u)), var_2.x));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = i32(-1i) * -_wgslsmith_add_i32(~(i32(-1i) * -2147483647i), 463i);
    var var_1 = Struct_1(firstLeadingBit(min(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 49127u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(217f, -822f, 1000f, 1222f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1496f, 560f, -1150f, -578f) - vec4<f32>(400f, -131f, -779f, -222f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1230f, -1043f, -213f, 1000f) - vec4<f32>(1000f, 157f, 1614f, -1788f)))))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(reverseBits(_wgslsmith_add_u32(var_1.a.x, 4294967295u))), var_1.a.x), 0u | var_1.a.x);
    var_2 = firstTrailingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)), select(vec3<u32>(var_1.a.x, 25758u, var_1.a.x), vec3<u32>(0u, 468u, 1u), var_1.a.x >= var_1.a.x))) << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(firstTrailingBit(21204u), ~(~var_1.a.x)), ~var_1.a.x, max(1u, 46113u)) % 32u);
    var var_3 = firstLeadingBit(var_0);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), -1053f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(-520f * var_1.b.x)))), _wgslsmith_f_op_f32(1590f * -394f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-572f + 224f)))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~35709u, 1u, ~4294967295u, 0u), ~(~vec4<u32>(32999u, 4294967295u, 21581u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(max(-568f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(809f * 240f), _wgslsmith_f_op_f32(-531f - -2173f)))), _wgslsmith_f_op_f32(-801f - 357f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -528f), -474f, true))), -809f));
    var var_1 = (true | (true | (-u_input.b != -1i))) && !all(vec4<bool>(true, true, true, true));
    var_0 = Struct_1(select(var_0.a, abs(var_0.a), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec3<i32>(arg_0, -1i, u_input.a.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, var_0.b.x, var_0.b.x, -412f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1771f, -357f, -987f, var_0.b.x))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-907f + -438f), -172f)))));
    let var_3 = _wgslsmith_f_op_f32(var_0.b.x - 1063f);
    return !(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(8229u, 11349u, 0u), vec3<u32>(var_0.a.x, 1u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), firstLeadingBit(vec3<u32>(28793u, var_0.a.x, 49594u)))) > var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(func_1(true)), !func_2(-6380i), u_input.b);
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) + _wgslsmith_f_op_f32(ceil(-166f))) + -254f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-784f))))));
    var_1 = 19801i;
    var_1 = var_0.c;
    var_1 = u_input.b;
    let var_3 = vec2<i32>(-1i) * -u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_0.a, ~firstLeadingBit(var_0.a) ^ var_0.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(80434u, var_0.a.x) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, 18972u), vec2<u32>(var_0.a.x, 58066u)) % 32u), var_0.a.x), 4294967295u, ~select(var_0.c, -7248i << (abs(0u) % 32u), (var_0.a.x <= 46688u) || var_0.b));
}

