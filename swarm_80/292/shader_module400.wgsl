struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = select(vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)) & false), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), select(vec2<bool>(true, all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))), !vec2<bool>(any(vec4<bool>(true, false, true, false)), true)), !vec2<bool>(true, !any(vec4<bool>(false, false, true, false))));
    var var_1 = vec3<bool>(any(!vec2<bool>(any(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, var_0.x, false, true)))), var_0.x, var_0.x);
    var_0 = vec2<bool>(_wgslsmith_mult_u32(~(~arg_0), abs(u_input.d)) >= ~_wgslsmith_sub_u32(~0u, firstTrailingBit(4294967295u)), true);
    var_0 = select(var_1.yy, !(!var_1.xy), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -452f) + global0.yy);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.yx * vec2<f32>(-1069f, 860f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, global0.x, var_1.x)))), 282f));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(666f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(u_input.a));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(~select(select(vec2<u32>(u_input.a, 1u), vec2<u32>(2202u, 4294967295u), false), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(68616u, 25633u)), false), vec2<u32>(~u_input.d, ~(~2044u))), ~(~(~vec4<u32>(u_input.d, u_input.a, 4294967295u, 0u)) & _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10002u, 861u, 4294967295u, u_input.d), vec4<u32>(8218u, u_input.a, u_input.d, u_input.d), vec4<u32>(4643u, 53087u, 1u, u_input.a)), vec4<u32>(4294967295u, u_input.a, 49656u, u_input.a))), -1302f, 690f, _wgslsmith_clamp_vec3_i32(arg_1.yyz & _wgslsmith_mod_vec3_i32(arg_1.zwz, u_input.b.yyx), u_input.b.wxw >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 4294967295u, 26685u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 92295u, 0u), vec3<u32>(u_input.a, u_input.a, 76296u))) % vec3<u32>(32u)), arg_1.zzw));
    global0 = arg_2;
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(~select(var_2.a, abs(var_2.a), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(~var_2.b.xw, var_2.a)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~var_2.b.x, 63715u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.a, u_input.d, var_2.b.x), var_2.b)), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_2.b.ywx, vec3<u32>(var_2.b.x, 41663u, var_2.b.x), vec3<u32>(u_input.a, var_2.b.x, u_input.d)), countOneBits(var_2.b.wzy ^ var_2.b.zyw)), ~27196u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-951f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -698f)) - 447f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1018f)))), vec3<i32>(u_input.b.x, -(~abs(0i)), -(-1i << (u_input.a % 32u)) ^ (_wgslsmith_dot_vec2_i32(u_input.b.xy, var_2.e.yx) | (var_2.e.x << (4294967295u % 32u)))));
    return ~var_2.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.c, arg_1.d, false))))), _wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(-global0.x))), -1000f));
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(ceil(503f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1044f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(748f + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * 596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-858f, global0.x), _wgslsmith_div_f32(1276f, 235f)))))));
    let var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = Struct_1(~var_1.a << (vec2<u32>(~arg_0 << (1u % 32u), firstTrailingBit(func_2(-53174i, vec4<i32>(2969i, arg_2, arg_1.e.x, 0i), vec3<f32>(883f, arg_1.d, 441f)))) % vec2<u32>(32u)), ~var_1.b, global0.x, -167f, ~(-vec3<i32>(var_0.e.x, select(u_input.b.x, arg_2, false), -2147483647i)));
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    var var_0 = func_4(~_wgslsmith_div_u32(func_2(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, -37274i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, -593f, 762f) * vec3<f32>(arg_2, global0.x, arg_2))), 20956u), Struct_1(~(vec2<u32>(1u, 1u) | (vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d, 0u, 4294967295u), ~vec4<u32>(u_input.d, 4294967295u, 35938u, u_input.d)), _wgslsmith_add_u32(~u_input.a, u_input.a), u_input.d, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.d), ~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.a)).x) * 1411f), vec3<i32>(u_input.b.x, 1i, -1i)), 19397i);
    var var_1 = !select(arg_1.yx, select(!select(vec2<bool>(false, arg_0), arg_1.zy, arg_0), select(vec2<bool>(arg_1.x, arg_1.x), !vec2<bool>(true, arg_1.x), arg_1.yy), arg_1.zx), !vec2<bool>(arg_1.x | false, all(vec2<bool>(true, arg_1.x))));
    var var_2 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.d, 21050u), vec4<u32>(u_input.a, u_input.a, u_input.a, 32505u), vec4<u32>(u_input.a, 1u, 0u, 50013u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(46464u, u_input.d, 22796u, u_input.d) >> (firstLeadingBit(vec4<u32>(40744u, 4294967295u, 33144u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, u_input.a, u_input.a, 3510u)), firstLeadingBit(~(~vec4<u32>(0u, 56410u, 10631u, u_input.d))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), arg_2, arg_2, -1239f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1000f, global0.x, global0.x)))) + vec4<f32>(arg_2, -653f, -697f, _wgslsmith_f_op_f32(arg_2 + global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-282f * arg_2), _wgslsmith_f_op_f32(460f * arg_2))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -547f) + 929f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) * _wgslsmith_f_op_f32(arg_2 + global0.x)))), 1000f));
    return u_input.b.wxw;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-2067f, arg_2.c, global0.x), vec3<f32>(arg_2.c, arg_0.d, -1983f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1106f, -237f, arg_0.c), vec3<f32>(arg_2.d, global0.x, -1000f))), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, global0.x)), 1322f, _wgslsmith_f_op_f32(ceil(-2372f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1551f)))), 637f, arg_0.d)));
    global0 = vec3<f32>(2041f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -856f))), 109f);
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(ceil(-1199f)), !all(vec3<bool>(true, false, false)))), 1218f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1973f, global0.x, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))))) + _wgslsmith_div_f32(-507f, _wgslsmith_div_f32(867f, _wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(525f, global0.x, 1201f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1252f, 1025f, 1471f), vec3<f32>(arg_2.c, arg_0.c, global0.x)))) + vec3<f32>(-637f, global0.x, _wgslsmith_f_op_f32(step(1023f, arg_2.d))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 2052f, 556f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.d, 326f)), vec3<bool>(true, false, false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1465f, global0.x, -917f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_2.c * 1407f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1298f, 488f, -989f), vec3<f32>(arg_0.c, 1000f, 637f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), vec3<f32>(arg_2.d, 1640f, -658f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.d, arg_2.c)))));
    return Struct_1(arg_1, ~_wgslsmith_div_vec4_u32(~arg_0.b, vec4<u32>(arg_1.x, arg_2.a.x, select(5285u, 0u, false), 17742u)), _wgslsmith_f_op_f32(step(arg_0.c, 1273f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(step(arg_0.d, arg_2.d))))))), _wgslsmith_sub_vec3_i32(-u_input.b.xyx, -arg_2.e << (arg_0.b.wyx % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(43342u >> (u_input.d % 32u), ~u_input.d), ~vec2<u32>(u_input.a, 1u) ^ ~vec2<u32>(27923u, 120176u)), vec4<u32>((59655u ^ u_input.a) & 23860u, u_input.a, _wgslsmith_dot_vec2_u32(min(vec2<u32>(99017u, u_input.d), vec2<u32>(62845u, u_input.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d, u_input.a))), 44641u), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-258f)) - global0.x)), func_1(any(vec2<bool>(true, true)), vec3<bool>(true, true, true), global0.x)), ~(~vec2<u32>(39310u, 5758u)), Struct_1(vec2<u32>(~1929u, 7973u), (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.d), vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.d)) & ~vec4<u32>(2343u, 54917u, u_input.a, u_input.a)) | (vec4<u32>(u_input.a, u_input.d, 33220u, u_input.d) << (abs(vec4<u32>(80051u, 1u, u_input.a, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(global0.x)))), -1024f, vec3<i32>(reverseBits(67379i >> (u_input.d % 32u)), -2147483647i, firstLeadingBit(u_input.b.x))));
    var_0 = func_5(func_5(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, u_input.d) >> (var_0.a % vec2<u32>(32u)), var_0.a | var_0.a), vec4<u32>(~u_input.a, func_2(var_0.e.x, vec4<i32>(var_0.e.x, var_0.e.x, u_input.c, var_0.e.x), vec3<f32>(var_0.c, global0.x, global0.x)), firstTrailingBit(u_input.a), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.c, ~_wgslsmith_sub_vec3_i32(vec3<i32>(49331i, -621i, var_0.e.x), var_0.e)), vec2<u32>(reverseBits(var_0.a.x), u_input.d) << (firstTrailingBit(var_0.b.zz) % vec2<u32>(32u)), func_5(func_5(Struct_1(vec2<u32>(20002u, 8717u), var_0.b, 1613f, var_0.d, vec3<i32>(2147483647i, u_input.b.x, -27888i)), var_0.b.zx, func_5(Struct_1(vec2<u32>(var_0.a.x, 1u), vec4<u32>(60968u, u_input.a, var_0.b.x, 28371u), var_0.c, var_0.c, vec3<i32>(-12344i, -1i, u_input.b.x)), var_0.a, Struct_1(var_0.a, vec4<u32>(4294967295u, 0u, 1u, 0u), var_0.c, var_0.c, u_input.b.yyz))), var_0.a, func_5(Struct_1(vec2<u32>(var_0.b.x, 19534u), vec4<u32>(44963u, var_0.a.x, u_input.d, 1u), var_0.d, global0.x, vec3<i32>(-2467i, var_0.e.x, 1i)), vec2<u32>(var_0.a.x, 29755u) << (var_0.b.xw % vec2<u32>(32u)), Struct_1(vec2<u32>(u_input.a, 0u), vec4<u32>(5838u, 1u, u_input.a, u_input.a), global0.x, 506f, var_0.e)))), min(abs(vec2<u32>(var_0.a.x << (32353u % 32u), ~var_0.b.x)), vec2<u32>(_wgslsmith_clamp_u32(u_input.d, _wgslsmith_div_u32(u_input.d, 1u), u_input.d), ~reverseBits(var_0.b.x))), Struct_1(_wgslsmith_mod_vec2_u32(~var_0.a, func_5(Struct_1(var_0.b.yx, var_0.b, 516f, 721f, u_input.b.www), vec2<u32>(u_input.a, 56718u) << (var_0.a % vec2<u32>(32u)), func_5(Struct_1(var_0.a, var_0.b, var_0.c, -456f, vec3<i32>(-12301i, 13907i, 49585i)), var_0.a, Struct_1(vec2<u32>(0u, u_input.a), var_0.b, var_0.c, var_0.d, var_0.e))).b.zy), firstTrailingBit(~vec4<u32>(37274u, 0u, var_0.a.x, var_0.b.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)), u_input.b.zyx));
    global0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(var_0.d)), global0.x);
    var_0 = func_5(func_5(func_5(func_5(func_5(Struct_1(var_0.a, vec4<u32>(var_0.a.x, var_0.b.x, 1u, 1u), 301f, global0.x, u_input.b.yzw), var_0.a, Struct_1(var_0.a, vec4<u32>(4294967295u, 4294967295u, var_0.a.x, var_0.b.x), -1000f, 1161f, vec3<i32>(2147483647i, var_0.e.x, u_input.b.x))), vec2<u32>(u_input.a, u_input.a), func_5(Struct_1(var_0.b.zz, vec4<u32>(var_0.a.x, 39942u, u_input.a, 0u), global0.x, global0.x, vec3<i32>(0i, var_0.e.x, -25502i)), var_0.a, Struct_1(var_0.a, var_0.b, global0.x, 766f, var_0.e))), vec2<u32>(firstLeadingBit(u_input.d), 4294967295u), Struct_1(~vec2<u32>(u_input.a, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 60214u, 1u, u_input.d), vec4<u32>(0u, 37151u, 16984u, var_0.a.x)), _wgslsmith_f_op_f32(abs(1661f)), _wgslsmith_f_op_f32(-global0.x), ~var_0.e)), var_0.b.yy << (vec2<u32>(~18807u, 1u) % vec2<u32>(32u)), func_5(func_5(Struct_1(var_0.b.xw, var_0.b, -906f, -568f, u_input.b.xzz), ~var_0.a, Struct_1(var_0.b.zx, var_0.b, var_0.c, -1000f, u_input.b.xwy)), select(var_0.a, var_0.a, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_5(func_5(Struct_1(vec2<u32>(var_0.a.x, 4294967295u), vec4<u32>(5617u, var_0.b.x, u_input.a, var_0.a.x), 211f, var_0.d, vec3<i32>(-2147483647i, -5738i, u_input.b.x)), vec2<u32>(9950u, u_input.d), Struct_1(var_0.b.yw, var_0.b, -1000f, var_0.c, vec3<i32>(0i, -875i, -1i))), ~vec2<u32>(2159u, u_input.d), func_5(Struct_1(var_0.b.wz, vec4<u32>(0u, 1u, 25011u, var_0.b.x), global0.x, -859f, u_input.b.wwz), vec2<u32>(4294967295u, var_0.a.x), Struct_1(var_0.a, vec4<u32>(1u, 4294967295u, var_0.a.x, 68447u), global0.x, global0.x, var_0.e))))), _wgslsmith_mult_vec2_u32(countOneBits(var_0.b.zy & ~var_0.b.wy), abs(var_0.b.zz)), Struct_1(vec2<u32>(u_input.a, u_input.d), var_0.b, 196f, -243f, -func_4(1u, Struct_1(vec2<u32>(var_0.b.x, 4294967295u), vec4<u32>(var_0.a.x, 1203u, var_0.a.x, 0u), global0.x, global0.x, vec3<i32>(u_input.b.x, var_0.e.x, 9891i)), -var_0.e.x).wzw));
    let var_1 = true;
    var var_2 = !select(vec3<bool>(all(vec4<bool>(var_1, true, var_1, var_1)), false, false), vec3<bool>(true && var_1, var_1, true), any(!vec2<bool>(var_1, true)));
    var var_3 = u_input.b.x;
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(var_0.c * var_0.c) < _wgslsmith_f_op_f32(max(1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), 488f, 532f);
    let x = u_input.a;
    s_output = StorageBuffer(-690f, func_4(~1u, func_5(func_5(Struct_1(var_0.a, var_0.b, 1141f, -893f, vec3<i32>(var_0.e.x, var_0.e.x, var_0.e.x)), ~vec2<u32>(var_0.b.x, var_0.b.x), Struct_1(vec2<u32>(0u, u_input.a), var_0.b, global0.x, global0.x, vec3<i32>(2147483647i, 0i, var_0.e.x))), _wgslsmith_sub_vec2_u32(var_0.b.xy, var_0.b.wx), func_5(Struct_1(vec2<u32>(4294967295u, u_input.a), vec4<u32>(0u, var_0.a.x, var_0.b.x, 67230u), var_0.c, global0.x, vec3<i32>(var_0.e.x, var_0.e.x, 2147483647i)), var_0.b.xy, Struct_1(var_0.a, vec4<u32>(68877u, 1u, var_0.a.x, u_input.a), -640f, -292f, var_0.e))), u_input.c).zw, ~abs(~11591u));
}

