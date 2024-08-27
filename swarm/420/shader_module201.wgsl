struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(arg_1.a, all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(arg_0.a.b, true), vec2<bool>(arg_0.a.b, arg_1.b), true), !vec2<bool>(arg_1.b, true)))), arg_1.b, Struct_1(abs(arg_0.c.a), !all(!vec4<bool>(true, true, arg_0.c.b, false))));
    var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = -1i;
    var var_3 = _wgslsmith_mult_i32(14911i, _wgslsmith_mod_i32(1i, u_input.a.x >> (_wgslsmith_div_u32(60605u, _wgslsmith_mod_u32(26788u, 4294967295u)) % 32u)));
    return vec3<u32>(arg_0.c.a.x, abs(~max(arg_0.c.a.x, var_0.c.a.x)), ~firstLeadingBit(_wgslsmith_sub_u32(27114u, 12201u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(283f));
    let var_1 = ~((~countOneBits(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i)) ^ vec4<i32>(2147483647i ^ u_input.a.x, u_input.a.x, ~u_input.a.x, min(1i, u_input.a.x))) << (firstLeadingBit(min(~arg_0.a, ~vec4<u32>(arg_2.c.a.x, 4294967295u, arg_2.c.a.x, arg_1.a.x))) % vec4<u32>(32u)));
    var var_2 = ~func_3(Struct_2(Struct_1(vec4<u32>(0u, 20808u, arg_1.a.x, arg_2.a.a.x), !arg_3.b), !all(vec2<bool>(arg_0.b, arg_2.a.b)), Struct_1(~arg_2.a.a, select(false, arg_2.b, false))), arg_0, var_1.ww);
    var_2 = abs(vec3<u32>(arg_0.a.x, 45302u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, arg_2.a.a.x), _wgslsmith_mult_u32(arg_3.a.a.x, arg_3.a.a.x))) | vec3<u32>(arg_0.a.x, arg_3.c.a.x, ~0u));
    let var_3 = ~(~firstLeadingBit(16527u)) ^ reverseBits(firstTrailingBit(arg_2.a.a.x));
    return Struct_1(arg_0.a, false);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, 1000f, 265f, -226f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, 908f, -107f, -1560f) - vec4<f32>(235f, -547f, -771f, -1000f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1595f, 1f, _wgslsmith_f_op_f32(-414f * -2638f), _wgslsmith_div_f32(_wgslsmith_div_f32(-447f, 425f), _wgslsmith_f_op_f32(step(-1343f, -2001f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1821f, 993f, 807f, 1197f) - vec4<f32>(-980f, 971f, 115f, -944f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, -910f, 938f, -1002f) + vec4<f32>(-1341f, 375f, 1000f, 1113f))))));
    var var_1 = Struct_2(arg_3.a, true, arg_3.a);
    var_1 = Struct_2(Struct_1(select(select(func_2(Struct_1(vec4<u32>(0u, 24780u, var_1.a.a.x, 4294967295u), arg_3.b), Struct_1(vec4<u32>(var_1.a.a.x, var_1.c.a.x, var_1.a.a.x, var_1.a.a.x), var_1.b), Struct_2(Struct_1(vec4<u32>(50173u, var_1.a.a.x, var_1.c.a.x, 767u), arg_3.b), arg_3.b, Struct_1(vec4<u32>(arg_3.a.a.x, arg_3.a.a.x, var_1.a.a.x, 34912u), true)), Struct_2(arg_3.a, true, arg_3.c)).a, ~vec4<u32>(1u, 4294967295u, 16610u, arg_3.a.a.x), true), var_1.c.a, vec4<bool>(false, true, false, true)), true != !var_1.c.b), true, func_4(vec4<i32>(-(i32(-1i) * -2147483647i), 15i, arg_1, u_input.a.x << (0u % 32u)), Struct_1(func_2(var_1.a, Struct_1(var_1.c.a, true), Struct_2(arg_3.c, var_1.b, arg_3.c), Struct_2(Struct_1(vec4<u32>(var_1.a.a.x, var_1.c.a.x, 9394u, 1u), false), arg_2, arg_3.a)).a, true), -1484f, Struct_1(~(var_1.a.a & vec4<u32>(0u, var_1.c.a.x, var_1.a.a.x, arg_3.a.a.x)), !(arg_3.a.b || var_1.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1388f, var_0.x)) - _wgslsmith_f_op_vec2_f32(-var_0.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xy, vec2<f32>(-334f, var_0.x), vec2<bool>(arg_3.a.b, false))))) + vec2<f32>(669f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, var_0.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = abs(arg_1);
    return arg_3.a.a.x;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = vec2<u32>(_wgslsmith_add_u32(~firstTrailingBit(~1u), 1u), func_5(_wgslsmith_mult_vec4_i32(~vec4<i32>(-8221i, -2147483647i, 30893i, var_0), vec4<i32>(-18176i, arg_1.x | -22909i, min(arg_0, 1i), ~arg_0)), -2147483647i, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(min(vec4<u32>(0u, 13802u, 4294967295u, 11876u), vec4<u32>(74130u, 1u, 1u, 42226u)), true), any(vec4<bool>(true, true, true, true)), func_4(abs(vec4<i32>(38433i, arg_1.x, var_0, u_input.a.x)), func_2(Struct_1(vec4<u32>(5389u, 18732u, 89906u, 1u), false), Struct_1(vec4<u32>(10380u, 28851u, 15773u, 4294967295u), true), Struct_2(Struct_1(vec4<u32>(1u, 42447u, 50552u, 0u), false), true, Struct_1(vec4<u32>(1u, 8412u, 48939u, 1u), true)), Struct_2(Struct_1(vec4<u32>(1u, 57039u, 25382u, 12605u), true), false, Struct_1(vec4<u32>(0u, 0u, 1u, 45376u), true))), 755f, func_2(Struct_1(vec4<u32>(9968u, 1u, 78795u, 39993u), true), Struct_1(vec4<u32>(0u, 28991u, 0u, 87513u), true), Struct_2(Struct_1(vec4<u32>(18052u, 1u, 1u, 10581u), true), false, Struct_1(vec4<u32>(37817u, 4294967295u, 53533u, 8451u), false)), Struct_2(Struct_1(vec4<u32>(4294967295u, 42535u, 28893u, 46118u), false), true, Struct_1(vec4<u32>(0u, 1u, 8311u, 4294967295u), false)))))));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(select(0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.x, 1i), u_input.a), func_2(Struct_1(vec4<u32>(25143u, var_1.x, var_1.x, 4294967295u), true), Struct_1(vec4<u32>(var_1.x, 63017u, var_1.x, var_1.x), true), Struct_2(Struct_1(vec4<u32>(23642u, 4294967295u, var_1.x, 12887u), true), true, Struct_1(vec4<u32>(var_1.x, var_1.x, var_1.x, 71664u), false)), Struct_2(Struct_1(vec4<u32>(0u, var_1.x, 12760u, var_1.x), true), true, Struct_1(vec4<u32>(var_1.x, var_1.x, 24247u, 70012u), true))).b), 1i, i32(-1i) * -arg_0), u_input.a.x);
    let var_3 = arg_2.yy;
    var var_4 = vec2<i32>(-1i) * -u_input.a;
    return func_4(~abs(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_0, u_input.a.x, 0i, 1i)), ~vec4<i32>(-1i, arg_1.x, -58890i, var_4.x))), Struct_1(vec4<u32>(var_1.x, ~(~var_1.x), func_2(func_2(Struct_1(vec4<u32>(var_1.x, 70867u, var_1.x, var_1.x), false), Struct_1(vec4<u32>(var_1.x, 4294967295u, 33642u, var_1.x), false), Struct_2(Struct_1(vec4<u32>(var_1.x, 4294967295u, var_1.x, 62131u), true), true, Struct_1(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), false)), Struct_2(Struct_1(vec4<u32>(var_1.x, var_1.x, 28830u, 3272u), true), false, Struct_1(vec4<u32>(1510u, 4294967295u, var_1.x, var_1.x), false))), func_2(Struct_1(vec4<u32>(12193u, var_1.x, var_1.x, var_1.x), true), Struct_1(vec4<u32>(74567u, 56986u, var_1.x, 78490u), false), Struct_2(Struct_1(vec4<u32>(93142u, var_1.x, 48953u, 40029u), false), true, Struct_1(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), false)), Struct_2(Struct_1(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), false), false, Struct_1(vec4<u32>(4294967295u, 1u, var_1.x, 79658u), false))), Struct_2(Struct_1(vec4<u32>(var_1.x, 0u, 17087u, 0u), false), true, Struct_1(vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), false)), Struct_2(Struct_1(vec4<u32>(var_1.x, 4294967295u, 32534u, 48080u), true), false, Struct_1(vec4<u32>(1u, var_1.x, 0u, 72256u), true))).a.x, 4294967295u), !(!select(false, false, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_3.x), _wgslsmith_f_op_f32(1635f - var_3.x)), 562f, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))))), false)), Struct_1(~vec4<u32>(_wgslsmith_add_u32(var_1.x, 4294967295u), var_1.x, func_2(Struct_1(vec4<u32>(var_1.x, var_1.x, 28719u, 1u), false), Struct_1(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x), true), Struct_2(Struct_1(vec4<u32>(23822u, var_1.x, 1u, 73445u), true), false, Struct_1(vec4<u32>(var_1.x, 26538u, var_1.x, 23345u), true)), Struct_2(Struct_1(vec4<u32>(var_1.x, 23353u, var_1.x, var_1.x), true), true, Struct_1(vec4<u32>(var_1.x, var_1.x, var_1.x, 50782u), true))).a.x, ~var_1.x), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_2(arg_0, true, func_2(func_2(arg_0, func_4(firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 0i)), func_2(arg_0, arg_0, Struct_2(arg_0, false, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 4294967295u), arg_0.b)), Struct_2(arg_0, arg_0.b, Struct_1(vec4<u32>(arg_0.a.x, var_0, 1u, 4294967295u), false))), _wgslsmith_f_op_f32(f32(-1f) * -347f), func_1(-1i, vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(107f, -253f, 661f))), Struct_2(arg_0, false, arg_0), Struct_2(func_2(Struct_1(vec4<u32>(33537u, 25015u, var_0, 0u), true), arg_0, Struct_2(Struct_1(vec4<u32>(10131u, var_0, 54220u, 1u), arg_0.b), true, arg_0), Struct_2(Struct_1(vec4<u32>(1517u, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.b), false, arg_0)), arg_0.b || false, Struct_1(arg_0.a, true))), arg_0, Struct_2(func_4(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), arg_0, _wgslsmith_f_op_f32(floor(-243f)), func_1(2147483647i, u_input.a, vec3<f32>(-604f, -157f, 1164f))), false, Struct_1(~arg_0.a, arg_0.b)), Struct_2(arg_0, true, Struct_1(~arg_0.a, false))));
    var var_2 = firstLeadingBit(28283u ^ _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_0.a.xwx, var_1.a.a.zzy), abs(0u)), _wgslsmith_mult_u32(~1u, arg_0.a.x >> (37645u % 32u)), arg_0.a.x));
    var var_3 = 447f;
    var var_4 = select(vec3<i32>(u_input.a.x, -u_input.a.x, -4053i) | _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, 16026i, u_input.a.x), vec3<i32>(1i, 21886i, 2147483647i)), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 20309i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 15309i, u_input.a.x)), ~firstTrailingBit(u_input.a.x), i32(-1i) * -1i), true) >> (reverseBits(~_wgslsmith_sub_vec3_u32(arg_0.a.yxx, var_1.c.a.zww)) % vec3<u32>(32u));
    return var_1;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = true;
    return arg_1;
}

fn func_8(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(func_4(~vec4<i32>(arg_2.x | arg_2.x, countOneBits(2147483647i), -1i, _wgslsmith_mod_i32(27323i, -41306i)), Struct_1(arg_3.a.a, select(func_4(arg_1, arg_3.c, 1315f, arg_3.c).b, !arg_3.c.b, arg_3.b)), _wgslsmith_div_f32(278f, -1072f), func_6(Struct_1(~vec4<u32>(52949u, arg_3.c.a.x, arg_3.c.a.x, 1u), func_4(vec4<i32>(arg_1.x, 1i, 0i, 69356i), arg_3.c, -571f, arg_3.a).b)).c).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1481f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f))) != _wgslsmith_f_op_f32(ceil(1835f)));
    var_0 = Struct_1(vec4<u32>(~firstTrailingBit(4294967295u), 4294967295u, var_0.a.x, func_4(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, arg_2.x, -59819i, -18806i), arg_1), Struct_1(vec4<u32>(4294967295u, 0u, var_0.a.x, 78863u) << (arg_3.c.a % vec4<u32>(32u)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1060f))), func_6(arg_3.c).c).a.x), !(arg_3.c.b || true));
    let var_1 = _wgslsmith_mod_i32(~reverseBits(~select(-13947i, arg_2.x, var_0.b)), (i32(-1i) * -2147483647i) >> (~4294967295u % 32u));
    let var_2 = arg_3.c;
    var_0 = Struct_1(~var_0.a, all(select(vec4<bool>(all(vec3<bool>(var_2.b, var_2.b, arg_3.b)), var_0.b | var_2.b, func_2(var_2, Struct_1(arg_3.c.a, var_0.b), arg_3, Struct_2(var_2, var_0.b, var_2)).b, true), !vec4<bool>(arg_3.c.b, var_0.b, var_2.b, var_2.b), vec4<bool>(true, true, true, true))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(4294967295u, max(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(1i, u_input.a.x, -1i)) << (~1u % 32u), _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, min(1i, u_input.a.x)), u_input.a.x), vec4<i32>(u_input.a.x, -max(u_input.a.x, 2147483647i), 1i, 2147483647i)), vec2<i32>(1i, 2147483647i << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(47724u, 48441u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 47902u, 4294967295u, 0u))) % 32u)), Struct_2(Struct_1(vec4<u32>(1u, ~1u, ~8671u, 4294967295u >> (1u % 32u)), !any(vec2<bool>(false, true))), true, func_7(func_6(func_1(-2147483647i, u_input.a, vec3<f32>(1643f, -2226f, -509f))), func_2(Struct_1(vec4<u32>(0u, 51278u, 68074u, 112706u), false), func_4(vec4<i32>(-2147483647i, 15527i, 2147483647i, 12082i), Struct_1(vec4<u32>(25198u, 1u, 1u, 98930u), true), 328f, Struct_1(vec4<u32>(25617u, 13746u, 12911u, 83323u), false)), func_6(Struct_1(vec4<u32>(1u, 4294967295u, 45850u, 4294967295u), true)), func_6(Struct_1(vec4<u32>(0u, 6622u, 0u, 0u), false))), func_1(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), select(u_input.a, u_input.a, vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, -706f, -1561f))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(43391u, 28508u, 4294967295u)))));
    let var_1 = func_6(Struct_1(select(reverseBits(vec4<u32>(var_0.c.a.x, 4294967295u, var_0.c.a.x, 11089u)), firstLeadingBit(vec4<u32>(var_0.c.a.x, var_0.c.a.x, 69383u, var_0.c.a.x)) | ~var_0.c.a, true), var_0.a.b));
    var var_2 = -(_wgslsmith_dot_vec2_i32(u_input.a, -u_input.a) & countOneBits(firstTrailingBit(-2147483647i)));
    var var_3 = var_1;
    let var_4 = !(!(!(var_0.b & func_2(var_0.c, Struct_1(vec4<u32>(var_3.c.a.x, var_1.a.a.x, var_1.a.a.x, 33889u), var_1.b), Struct_2(var_0.a, false, Struct_1(var_3.c.a, var_0.b)), Struct_2(var_0.a, false, Struct_1(var_1.a.a, true))).b)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_3.c.a.x, 0u, ~var_1.a.a.x, var_3.c.a.x));
}

