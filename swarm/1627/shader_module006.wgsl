struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 1000f, 1419f, 1000f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(733f + global0.x) * _wgslsmith_f_op_f32(-arg_0.x)), -374f, global0.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global0.x * 333f), _wgslsmith_f_op_f32(global0.x * arg_0.x), global0.x, global0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1266f, global0.x, global0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-100f, arg_0.x, arg_0.x, 2425f) + vec4<f32>(global0.x, 748f, arg_0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global0.x, 750f, 1000f) - vec4<f32>(global0.x, -644f, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -848f, 224f, global0.x)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-834f, global0.x, global0.x, arg_0.x) + vec4<f32>(global0.x, global0.x, arg_0.x, -564f)), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1750f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-803f, 1800f, global0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, arg_0.x, global0.x, -282f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(215f, -105f, -343f, 751f), vec4<f32>(2539f, arg_0.x, arg_0.x, -1904f)) * _wgslsmith_div_vec4_f32(vec4<f32>(2002f, 1057f, global0.x, 916f), vec4<f32>(215f, -1371f, 1208f, 741f)))))));
    return u_input.a.x;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1619f, _wgslsmith_f_op_f32(round(781f))), _wgslsmith_f_op_f32(round(-878f)), -1000f, global0.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, 1062f, global0.x, -580f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1251f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(254f, 657f, global0.x, 140f) - vec4<f32>(global0.x, -1404f, global0.x, 1000f))))));
    var var_0 = vec3<u32>(~u_input.d, u_input.b, 45572u) | vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy))), max(firstLeadingBit(_wgslsmith_div_u32(u_input.d, u_input.a.x)), 1u), 24453u);
    var_0 = ~firstLeadingBit(vec3<u32>(countOneBits(1u), 1u, var_0.x));
    var var_1 = !arg_0.zxx;
    var var_2 = vec3<bool>(true, !(!arg_0.x), arg_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global0.x);
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1008f, -322f, global0.x), vec4<f32>(144f, global0.x, -303f, 931f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, global0.x, -2120f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -2097f, global0.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-323f, 1186f, -691f, 357f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1071f, global0.x, -1628f), vec4<f32>(185f, global0.x, -756f, 2775f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, 1674f, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), -1388f, _wgslsmith_f_op_f32(146f - global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1810f)))));
    var var_0 = u_input.a.x;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), -231f);
    var_0 = min(46007u | u_input.b, ~(~44794u));
    return u_input.e >> (u_input.b % 32u);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-min(arg_1, u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c.b.x, -27539i, arg_1, arg_0), firstLeadingBit(vec4<i32>(arg_3.c.b.x, -1i, arg_0, -33943i)))), arg_3.c.b.x), vec2<i32>(~1i, min(arg_3.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-23382i, -2147483647i, -2147483647i) | arg_3.c.b, vec3<i32>(u_input.e, arg_3.c.b.x, arg_1)))));
    let var_1 = reverseBits(-(~_wgslsmith_clamp_vec3_i32(arg_3.c.b, countOneBits(vec3<i32>(arg_0, 1i, var_0.x)), arg_3.c.b)));
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.c, ~countOneBits(vec2<u32>(38166u, arg_3.a) & ~u_input.c));
    var_2 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mult_vec3_u32(min(u_input.a.wxy, vec3<u32>(0u, u_input.c.x, 57172u)), u_input.a.xxy)), _wgslsmith_add_vec3_u32(u_input.a.xyz, vec3<u32>(4294967295u, ~arg_3.a, arg_3.a)) & vec3<u32>(~(~arg_2), u_input.d, 1u));
    var var_3 = Struct_2(select(~(~(~62015u)), min(~0u, arg_3.a & u_input.a.x), true), arg_3.c.a.x, arg_3.c);
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 2630f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1141f, global0.x, -2092f), vec4<f32>(global0.x, global0.x, -655f, global0.x))))) - vec4<f32>(-116f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))), arg_3, reverseBits(vec4<i32>(-1i) * -select(vec4<i32>(var_3.c.b.x, 1i, var_3.c.b.x, 2147483647i), vec4<i32>(var_0.x, 1i, arg_1, var_1.x), var_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e <= _wgslsmith_clamp_i32(u_input.e >> (min(~15368u, 4294967295u) % 32u), firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, -12347i, -2147483647i), vec3<i32>(-2147483647i, u_input.e, 9040i), vec3<i32>(u_input.e, u_input.e, -1i)), vec3<i32>(u_input.e, -2147483647i, u_input.e) << (u_input.a.xyx % vec3<u32>(32u)))), 38676i);
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -881f) + -1000f) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-672f - _wgslsmith_f_op_f32(max(-521f, global0.x))))));
    var var_1 = func_4(0i, func_1() ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.e, u_input.e), firstLeadingBit(-1i)), 38861u, Struct_2(24552u, var_0, Struct_1(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), false), _wgslsmith_sub_vec3_i32(max(vec3<i32>(6337i, u_input.e, u_input.e), vec3<i32>(25780i, u_input.e, 1i)), vec3<i32>(-7312i, u_input.e, u_input.e)))));
    let var_2 = _wgslsmith_clamp_i32(-15193i, var_1.c.c.b.x, 5984i);
    let var_3 = Struct_2(1408u, !var_0, Struct_1(!select(vec2<bool>(false, var_0), !vec2<bool>(var_1.c.b, true), true), ~vec3<i32>(-var_2, -27964i, countOneBits(-23891i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.c, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a, u_input.d), vec2<u32>(var_3.a, 4294967295u), u_input.c)) << (firstTrailingBit(countOneBits(var_3.a) | 0u) % 32u), var_1.c.a, abs(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(47609i, -1i), vec2<i32>(var_3.c.b.x, u_input.e)) << (_wgslsmith_div_vec2_u32(u_input.a.yz, vec2<u32>(29995u, 4294967295u)) % vec2<u32>(32u)))), 197f, vec4<u32>(select(var_1.c.a, u_input.a.x, true), var_1.c.a, _wgslsmith_div_u32(26895u, abs(var_1.c.a ^ var_3.a)), abs(var_3.a)));
}

