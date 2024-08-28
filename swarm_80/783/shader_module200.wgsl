struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -583f;

var<private> global1: vec4<i32> = vec4<i32>(3999i, 1i, 4180i, 35614i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_1(~(abs(vec2<i32>(-1i, u_input.a)) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-180f - 736f)))), min(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(42909u, u_input.c), vec2<u32>(1u, u_input.c))), u_input.c) >> (16882u % 32u), arg_0.zwx);
    var var_1 = !select(vec4<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), ~var_0.a.x > var_0.a.x, true && all(vec4<bool>(true, true, false, true))), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), true);
    var_0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b | u_input.b)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~50360i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.x), var_0.a)), _wgslsmith_div_i32(countOneBits(u_input.a), 60235i), var_0.a.x)), var_0.d.x, ~select(0u, ~firstLeadingBit(u_input.c), true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.zzy * var_0.d))));
    var var_2 = var_0.a.x;
    let var_3 = Struct_3(Struct_2(Struct_1(global1.zz ^ ~vec2<i32>(0i, -2147483647i), arg_0.x, select(~0u, 1u, false), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.d.x, var_0.d.x), var_0.d))));
    return var_1.x;
}

fn func_2(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_1(firstTrailingBit(u_input.b.wx), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-124f, 187f))) * -1441f), _wgslsmith_div_f32(-725f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -678f), -228f))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, -268f, -594f, -199f))))), 524u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(687f, -1211f, -619f), vec3<f32>(591f, -991f, -253f)))))))));
    var var_1 = Struct_2(Struct_1(u_input.b.yy, -713f, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.wwz, arg_0.wxy), _wgslsmith_mod_u32(var_0.c, 4294967295u)), _wgslsmith_mod_u32(~100214u, 63544u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.b, -1576f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.d.x, 1549f)))));
    let var_2 = 2779u;
    let var_3 = Struct_3(Struct_2(var_0));
    let var_4 = global1.wzy;
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.a.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1102f, _wgslsmith_f_op_f32(f32(-1f) * -1613f)))) * _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(1u, countOneBits(0u), ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(1u, 1u, u_input.c)))))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, abs(36780u)), ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)))), reverseBits(max(~(~66798u), ~10633u)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-557f)) - 1691f), -938f)));
    let var_4 = -countOneBits(-_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.b.x), -u_input.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -194f)) - 854f) - _wgslsmith_f_op_f32(514f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) + -235f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1806f + 650f)), 159f)) * _wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false))) + _wgslsmith_f_op_f32(abs(-1339f))))));
    var var_0 = vec3<f32>(-400f, -144f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-921f, -840f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-953f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1116f))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + var_0.x))), var_0.x, -427f);
    global1 = -vec4<i32>(u_input.b.x, u_input.a, global1.x, _wgslsmith_mult_i32(~(-8278i), ~1i));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 156f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 572f, -915f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, -236f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, 756f, -947f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, -1103f, var_0.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -1000f, 761f), vec3<f32>(1577f, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1995f, -702f, 1321f), vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-205f, 225f, var_0.x))))), true));
    let var_1 = _wgslsmith_sub_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 10832u, u_input.c), vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u)))), _wgslsmith_div_u32(89480u, u_input.c));
    let var_2 = _wgslsmith_sub_vec3_u32(abs(~min(select(vec3<u32>(59157u, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 74891u), vec3<bool>(true, true, true)), vec3<u32>(var_1, 50619u, var_1))), vec3<u32>(min(var_1, ~_wgslsmith_sub_u32(var_1, u_input.c)), u_input.c, select(~max(var_1, 51396u), ~var_1, all(vec3<bool>(true, true, true)))));
    global1 = -vec4<i32>(_wgslsmith_add_i32(-1i, u_input.b.x ^ 1i) << (~(~50036u) % 32u), global1.x, u_input.a >> (var_1 % 32u), global1.x);
    let var_3 = ~(1u >> (~var_2.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-647f, ~(-vec2<i32>(-4634i, global1.x) & vec2<i32>(_wgslsmith_sub_i32(-2147483647i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 6987i), global1.zy))), vec2<i32>(1i, firstTrailingBit((global1.x & u_input.a) << (min(22480u, 49378u) % 32u))));
}

