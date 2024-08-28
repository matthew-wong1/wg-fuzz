struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-1930i, arg_0, -55846i, -12883i)), vec4<i32>(_wgslsmith_add_i32(-37858i, arg_0), 1i, arg_0 & 15177i, -1i)), countOneBits(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 3827i, arg_0, arg_0), vec4<i32>(15946i, 2147483647i, 31374i, arg_0)))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(17139i, arg_0, arg_0, arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(1115i, 11298i, arg_0, 0i))), vec4<i32>(~39411i, arg_0, 2147483647i, arg_0))), !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-927f * -850f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1854f + 290f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2718f + 335f), -318f, true)), -1644f, -1919f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1417f, -829f, -1555f, 331f) + vec4<f32>(-1000f, -901f, 592f, -847f))))))), _wgslsmith_div_i32(arg_0, arg_0) & _wgslsmith_div_i32(-abs(-1i), arg_0));
    var_1 = Struct_1(-vec4<i32>(-arg_0, 56737i, arg_0, var_1.a.x), !select(select(!vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), !vec3<bool>(var_1.b.x, var_1.b.x, false), vec3<bool>(false, true, false)), vec3<bool>(var_1.b.x, false, !var_1.b.x), var_1.b), 337f, _wgslsmith_f_op_vec4_f32(-var_1.d), countOneBits(var_1.e));
    var var_2 = Struct_1(vec4<i32>(1i, -arg_0, 62728i, ~arg_0 ^ 32843i) | -vec4<i32>(-3927i >> (1u % 32u), 1i, -2147483647i, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a)), select(select(select(var_1.b, select(var_1.b, vec3<bool>(var_1.b.x, var_1.b.x, false), true), select(vec3<bool>(false, true, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b.x)), var_1.b, var_1.b), !(!var_1.b), !var_1.b), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.c)), 1373f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.d.x, -345f)), -776f)), -810f, _wgslsmith_f_op_f32(-var_1.d.x))), arg_0);
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(17020u, ~1u, u_input.a) ^ vec3<u32>(u_input.a, ~(~0u), (u_input.a >> (0u % 32u)) >> (~u_input.a % 32u)), select(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, 49222u) | vec3<u32>(u_input.a, u_input.a, 75872u), ~vec3<u32>(u_input.a, u_input.a, 44669u), vec3<bool>(var_1.b.x, true, true)), abs(~vec3<u32>(17445u, u_input.a, u_input.a))), vec3<u32>(~4294967295u, 0u, _wgslsmith_div_u32(11794u, u_input.a)) << (vec3<u32>(u_input.a | 55536u, u_input.a, u_input.a) % vec3<u32>(32u)), select(select(vec3<bool>(var_1.b.x, var_2.b.x, var_1.b.x), !var_1.b, var_2.b.x || var_2.b.x), !var_1.b, var_2.b.x)), vec3<u32>(~(~u_input.a), ~u_input.a, 84981u));
    return -1336f;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, 29896u));
    var var_1 = true;
    var_0 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(var_0.x, u_input.a)), abs(3484u)), 12010u);
    var var_2 = vec3<u32>(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(var_0.x, 4294967295u)), ~(~var_0.x)), var_0.x, firstLeadingBit(4294967295u));
    let var_3 = reverseBits(23024u << (~(~0u) % 32u));
    return _wgslsmith_mult_i32(arg_1.e, -arg_1.a.x);
}

fn func_2() -> u32 {
    var var_0 = ~vec3<i32>(func_4(true, Struct_1(firstLeadingBit(vec4<i32>(-1i, 11133i, -6523i, -1i)), vec3<bool>(true, true, true), _wgslsmith_div_f32(-1000f, -1452f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, -1207f, 1482f, -380f)), -2147483647i), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-63937i, -1i, 2147483647i, -35095i), vec4<i32>(-2147483647i, -1i, 9281i, -2147483647i), vec4<i32>(1088i, -13331i, -29218i, -1i)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(534f, -956f, 1155f, -276f) + vec4<f32>(1000f, 365f, -599f, 514f)), reverseBits(2147483647i)), Struct_1(vec4<i32>(11565i, 51910i, 2147483647i, 0i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1000f * 806f), vec4<f32>(-255f, -1018f, 2097f, 603f), firstTrailingBit(1i))), _wgslsmith_sub_i32(-2147483647i, -1i), ~(-30414i));
    var_0 = vec3<i32>(~(-abs(var_0.x)), firstLeadingBit(~0i), _wgslsmith_add_i32(abs(-var_0.x), var_0.x)) & -vec3<i32>(abs(~var_0.x), var_0.x, _wgslsmith_clamp_i32(max(0i, -1i), _wgslsmith_div_i32(2375i, var_0.x), ~var_0.x));
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1088f, -560f, 816f, -606f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 1759f, 1813f, 880f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1254f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(275f, 556f, 1236f, -627f), vec4<f32>(811f, -1000f, -237f, 799f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-172f, -1000f, -1000f, 857f), vec4<f32>(999f, -2153f, -342f, -569f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, 333f, -1000f, 2260f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(301f, -616f, 632f, 1143f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-805f, -628f, -148f, -230f) + vec4<f32>(-232f, -1380f, -1000f, -228f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(429f, 352f, 101f, 105f))))))));
    return 38634u;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = 61155u;
    let var_1 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-(~41060i), arg_1.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-9910i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(1i, -39535i, -39587i, arg_1.x)), _wgslsmith_add_i32(i32(-1i) * -33405i, max(-22793i, arg_1.x))), _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(arg_1.x, arg_1.x, -2147483647i, arg_1.x)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i), vec4<i32>(arg_1.x, 1i, arg_1.x, -27060i), vec4<i32>(arg_1.x, arg_1.x, -18020i, -18087i)), vec4<i32>(2147483647i, _wgslsmith_add_i32(arg_1.x, min(-20578i, arg_1.x)), i32(-1i) * -1i, _wgslsmith_mod_i32(arg_1.x & -7796i, ~1730i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))));
    var_0 = _wgslsmith_clamp_u32(arg_0, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 81963u) >> (vec2<u32>(31113u, arg_0) % vec2<u32>(32u))), vec2<u32>(u_input.a, arg_0) >> (min(vec2<u32>(0u, 1u), vec2<u32>(arg_0, 0u)) % vec2<u32>(32u))), 3761u);
    var var_3 = reverseBits(var_1.x);
    return vec3<bool>(var_2 < _wgslsmith_f_op_f32(f32(-1f) * -1337f), true, any(vec2<bool>(all(vec2<bool>(false, true)), true)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = firstLeadingBit(countOneBits(~arg_1));
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)))))) * arg_0.c);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-956f, _wgslsmith_f_op_f32(floor(-569f)))))), _wgslsmith_f_op_f32(-arg_0.d.x)));
    var_2 = _wgslsmith_f_op_f32(exp2(var_1));
    return Struct_1(arg_0.a, func_5(func_2(), arg_0.a.xwy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 176f, var_1 <= -308f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 1600f, 2092f, var_1) * _wgslsmith_f_op_vec4_f32(-arg_0.d))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(257f, var_1, -423f, -565f), vec4<f32>(-769f, arg_0.c, -1641f, arg_0.d.x)) + arg_0.d))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.zx, arg_0.a.zx), vec2<i32>(-23621i, arg_0.a.x)) >> (_wgslsmith_add_u32(~(0u << (u_input.a % 32u)), arg_1) % 32u));
}

fn func_6(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = arg_2;
    let var_1 = vec4<f32>(-558f, -959f, _wgslsmith_f_op_f32(step(1000f, -413f)), -1077f);
    var var_2 = func_1(func_1(Struct_1(vec4<i32>(-1870i, _wgslsmith_dot_vec3_i32(var_0.a.wzz, var_0.a.xyw), -2147483647i, var_0.a.x), func_5(_wgslsmith_div_u32(u_input.a, u_input.a), select(var_0.a.wyx, vec3<i32>(arg_2.e, 54777i, -2147483647i), vec3<bool>(true, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(var_1.zyx - var_1.yyw)), -1152f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-290f, 2114f, 542f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(step(var_0.d, vec4<f32>(var_0.c, var_0.c, arg_2.c, -2744f))))), -abs(-47799i)), 1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13397u, 0u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 1u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) & u_input.a).b.xz;
    var var_3 = ~arg_2.a.zxx;
    var var_4 = !vec3<bool>(arg_2.b.x, func_5(1u, max(vec3<i32>(2147483647i, 0i, var_3.x), vec3<i32>(var_0.e, 1i, var_0.a.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, arg_1), arg_0))).x || false, !var_2.x);
    return select(~(~(-countOneBits(var_3.yx))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.zx, var_3.xy), firstTrailingBit(firstLeadingBit(~arg_2.a.xw))), ((var_0.b.x | var_0.b.x) | (func_1(Struct_1(arg_2.a, var_0.b, -310f, vec4<f32>(528f, 1000f, 1619f, 2345f), 37653i), 60755u).e < var_0.e)) & !(all(var_4.zz) & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 24894i, 2147483647i, 19356i), vec4<i32>(1i, 1i, 1i, 1i)), -1i, -firstTrailingBit(~69549i), -1i), select(select(vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-982f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, -248f, 376f, -119f))), vec4<f32>(1f, 1f, 1f, 1f)), firstTrailingBit(549i));
    var var_1 = 1i;
    var var_2 = _wgslsmith_sub_u32(~u_input.a, u_input.a << (u_input.a % 32u));
    var var_3 = -(~func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 401f, 395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))), func_1(var_0, 50352u), any(!vec4<bool>(false, true, var_0.b.x, var_0.b.x))));
    var var_4 = func_1(Struct_1(abs(min(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, -10113i, var_3.x, var_0.a.x), var_0.a), _wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_3.x, -27828i, var_0.a.x)))), !vec3<bool>(!var_0.b.x, any(var_0.b), false), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c * 825f), var_0.c, 1185f, _wgslsmith_f_op_f32(sign(func_1(var_0, u_input.a).c))), 1i), firstLeadingBit(1u) | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(234f, min(_wgslsmith_add_vec4_i32(~countOneBits(vec4<i32>(0i, var_4.e, var_0.a.x, var_0.e)), var_0.a >> (~vec4<u32>(u_input.a, u_input.a, 9194u, 17529u) % vec4<u32>(32u))), var_4.a << ((select(vec4<u32>(u_input.a, 46799u, 0u, 0u), vec4<u32>(u_input.a, u_input.a, 26129u, u_input.a), vec4<bool>(false, var_4.b.x, true, true)) | select(vec4<u32>(4294967295u, u_input.a, 26272u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 23333u), var_0.b.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-940f, 630f), vec2<f32>(584f, var_0.d.x), !vec2<bool>(var_4.b.x, false))))), 40746u, var_4.e);
}

