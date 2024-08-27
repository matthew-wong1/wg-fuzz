struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_1(!vec4<bool>(true != (u_input.c.x <= 4294967295u), arg_2.x <= arg_1, true, true), !vec3<bool>(!all(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)), select(1410f == var_0, true, any(vec3<bool>(false, true, true)))), select(vec2<bool>(false, true), !vec2<bool>(false, select(false, false, false)), any(vec2<bool>(false, true))), any(vec2<bool>(true, all(vec2<bool>(true, true)))) || true, var_0);
    var_1 = Struct_1(var_1.a, select(var_1.a.yxw, select(var_1.b, var_1.a.yxz, arg_2.x > var_0), vec3<bool>(any(vec3<bool>(false, false, true)), var_1.b.x, false)), var_1.a.xz, !all(!var_1.b.xx), 1302f);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~0i, 58621i, ~u_input.a.x, 92884i), vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a) & ~u_input.a, select(vec3<i32>(-17450i, -2147483647i, arg_0), vec3<i32>(-43363i, -1i, 21978i), true)), 1i, 1i, _wgslsmith_clamp_i32(~(arg_0 >> (u_input.c.x % 32u)), ~u_input.a.x, abs(u_input.a.x))), min(abs(vec4<i32>(-2147483647i, 23600i, arg_0, arg_0) << (vec4<u32>(u_input.c.x, 49983u, u_input.c.x, 4294967295u) % vec4<u32>(32u))), reverseBits(vec4<i32>(48443i, -20263i, u_input.a.x, arg_0))) | _wgslsmith_mult_vec4_i32(vec4<i32>(-43300i, 4020i, -18364i, u_input.a.x), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i, -41756i, 0i, u_input.a.x)), ~vec4<i32>(-2147483647i, -6723i, arg_0, arg_0))));
    return reverseBits(u_input.c.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.a.x;
    var var_1 = select(firstTrailingBit(~vec4<u32>(4294967295u ^ u_input.c.x, firstLeadingBit(126657u), u_input.b, func_3(u_input.a.x, arg_3.e, vec3<f32>(arg_2.x, arg_2.x, -476f)))), vec4<u32>(_wgslsmith_div_u32(reverseBits(44459u), ~72673u), abs(_wgslsmith_sub_u32(0u, arg_1.x)), 1u, ~_wgslsmith_clamp_u32(~72897u, arg_1.x, ~arg_1.x)), true);
    var_1 = select(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(5680u, 1u, 12606u, 1u)), vec4<u32>(arg_1.x, var_1.x, var_1.x, arg_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 106769u, 27017u, 4294967295u), vec4<u32>(22315u, var_1.x, 0u, 87899u)))), select(~(~(~vec4<u32>(u_input.c.x, 1u, arg_1.x, var_1.x))), reverseBits(vec4<u32>(7566u, var_1.x, ~59143u, _wgslsmith_mod_u32(arg_1.x, 0u))), select(!(!vec4<bool>(arg_0.x, arg_3.a.x, arg_3.c.x, true)), vec4<bool>(u_input.a.x >= u_input.a.x, false, arg_0.x, arg_0.x), arg_3.a)), false);
    var_1 = (vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c.x, 4294967295u), vec4<u32>(arg_1.x, 0u, 0u, var_1.x))), ~1981u, ~17591u, ~u_input.c.x) & (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 47160u, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, var_1.x)) << (countOneBits(vec4<u32>(u_input.c.x, 1u, var_1.x, 0u) ^ vec4<u32>(arg_1.x, 78593u, arg_1.x, 25067u)) % vec4<u32>(32u)))) & firstLeadingBit(countOneBits(~select(vec4<u32>(arg_1.x, 1u, 20339u, var_1.x), vec4<u32>(1u, var_1.x, 42832u, u_input.b), vec4<bool>(true, arg_3.a.x, false, false))));
    let var_2 = Struct_1(arg_3.a, !select(vec3<bool>(true, arg_3.a.x || true, arg_3.c.x), select(vec3<bool>(var_0, true, arg_3.d), select(arg_3.a.xyy, vec3<bool>(arg_3.b.x, false, var_0), vec3<bool>(true, var_0, true)), arg_3.b), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_1.x, arg_1.x)) < reverseBits(u_input.c.x)), !vec2<bool>(!all(vec4<bool>(true, true, true, true)), false), arg_3.d, arg_2.x);
    return !(71725u < ~firstTrailingBit(4294967295u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_0.a, vec3<bool>(arg_3.a.x, func_2(arg_0.c, vec2<u32>(~4294967295u, ~u_input.b), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_3.e - arg_0.e)), arg_3), !(!all(arg_3.c))), arg_0.c, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2410f))));
    let var_1 = _wgslsmith_div_vec4_i32(min(_wgslsmith_sub_vec4_i32(~vec4<i32>(24710i, u_input.a.x, u_input.a.x, -83156i), ~vec4<i32>(u_input.a.x, arg_1.x, u_input.a.x, arg_1.x)), abs(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i)))), select(vec4<i32>(max(arg_1.x, 2147483647i), i32(-1i) * -5913i, u_input.a.x, arg_1.x), min(max(vec4<i32>(2627i, 1i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 62i, -1i, 0i)), ~vec4<i32>(arg_1.x, -1i, u_input.a.x, arg_1.x)), arg_0.a)) >> (vec4<u32>(52220u >> ((u_input.b ^ 46009u) % 32u), u_input.c.x, ~u_input.b & 1u, _wgslsmith_add_u32(_wgslsmith_add_u32(1661u, 13795u), ~u_input.c.x) << (~_wgslsmith_mod_u32(u_input.b, u_input.c.x) % 32u)) % vec4<u32>(32u));
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -691f);
    let var_4 = vec2<bool>(var_0.b.x, all(vec4<bool>(var_2.d, select(true, u_input.b >= u_input.c.x, true), all(!arg_0.c), select(var_0.e <= 344f, arg_0.d, arg_3.e <= arg_3.e))));
    return arg_0.a.yyz;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, vec3<bool>(var_0.a.x, func_2(!vec2<bool>(true, var_0.c.x), firstTrailingBit(vec2<u32>(u_input.b, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-589f, -198f, 2021f)), Struct_1(arg_0.a, vec3<bool>(false, true, true), arg_0.a.yy, arg_0.d, var_0.e)) && true, var_0.c.x), select(vec2<bool>(arg_0.e == _wgslsmith_f_op_f32(-var_0.e), all(select(vec4<bool>(false, var_0.a.x, arg_0.a.x, false), vec4<bool>(var_0.d, arg_0.d, var_0.a.x, var_0.c.x), vec4<bool>(var_0.d, false, false, false)))), vec2<bool>(any(select(var_0.a, arg_0.a, false)), true | all(arg_0.a)), vec2<bool>(select(arg_0.b.x, true, var_0.b.x), !var_0.c.x)), !(any(var_0.c) != all(var_0.b)), _wgslsmith_f_op_f32(floor(arg_0.e)));
    var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(var_0.e + -360f)), _wgslsmith_f_op_f32(max(-1500f, arg_0.e)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-912f, _wgslsmith_f_op_f32(min(arg_0.e, var_0.e)), u_input.c.x <= 1u)))));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-513f, arg_0.e, var_1.x, arg_0.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, -165f, arg_0.e, var_1.x) + vec4<f32>(1806f, var_2.e, 985f, var_0.e)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, var_1.x, 696f, 106f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1010f, var_2.e, var_0.e) * vec4<f32>(var_1.x, 424f, var_0.e, arg_0.e)), !var_2.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(select(-706f, -113f, arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(-var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<bool>(true, true, true, true), func_1(Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec2<bool>(false, false), false, 643f), vec3<i32>(-67731i, u_input.a.x, u_input.a.x), vec2<f32>(-1226f, 1292f), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec2<bool>(true, false), false, 275f)), vec2<bool>(true, false), true, _wgslsmith_f_op_f32(f32(-1f) * -522f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1271f, -1011f, 1000f, -1125f), vec4<f32>(-1396f, 216f, -1251f, 1497f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1068f, -1000f, 269f, 458f))))))));
    let var_1 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 4294967295u) >> (vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 63836u) % vec4<u32>(32u)), ~vec4<u32>(87240u, u_input.b, 26209u, 4294967295u))));
    var var_2 = Struct_1(select(vec4<bool>(true, select(false, true, false), !func_2(vec2<bool>(true, false), u_input.c, var_0.wzz, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), vec2<bool>(false, true), false, var_0.x)), _wgslsmith_mod_i32(3236i, u_input.a.x) >= u_input.a.x), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, true)), all(vec2<bool>(true, false)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(u_input.a.x <= ~u_input.a.x, func_2(vec2<bool>(false, true), ~vec2<u32>(var_1, var_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2184f, var_0.x, var_0.x), var_0.xxy)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), vec2<bool>(false, true), true, 490f)), -15158i < _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<u32>(0u, var_1), _wgslsmith_div_vec3_f32(var_0.zwy, vec3<f32>(-235f, var_0.x, var_0.x)), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec2<bool>(false, false), false, var_0.x)))), vec3<bool>(true, false == !all(vec3<bool>(false, false, true)), ~reverseBits(8746u) > ~u_input.b), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_1(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec2<bool>(true, false), true, -266f), -vec3<i32>(-1i, u_input.a.x, 58318i), var_0.wx, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, true), vec2<bool>(false, false), false, -515f)).xx, func_1(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), vec2<bool>(true, true), true, var_0.x), u_input.a | u_input.a, vec2<f32>(-692f, var_0.x), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), vec2<bool>(false, true), true, 1515f)).yz), select(vec2<bool>(true, true), !func_1(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), vec2<bool>(true, false), false, var_0.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec2<f32>(var_0.x, -1152f), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec2<bool>(false, false), false, -1079f)).yy, vec2<bool>(all(vec2<bool>(false, false)), false)), !func_1(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec2<bool>(false, true), true, 800f), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, 1355f)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), vec2<bool>(false, false), false, 475f)).xz), true, -526f);
    var_2 = Struct_1(vec4<bool>(!var_2.b.x, !var_2.c.x, false, true), var_2.a.wwy, select(var_2.b.zx, vec2<bool>(var_2.a.x, _wgslsmith_f_op_f32(var_2.e + 594f) != var_2.e), !select(vec2<bool>(false, true), func_1(Struct_1(var_2.a, var_2.a.wxz, vec2<bool>(var_2.c.x, var_2.d), false, -1784f), u_input.a, vec2<f32>(var_0.x, var_0.x), Struct_1(var_2.a, vec3<bool>(var_2.b.x, false, var_2.b.x), vec2<bool>(false, var_2.c.x), true, -725f)).yz, select(var_2.b.yx, vec2<bool>(false, false), var_2.a.yz))), any(vec4<bool>(true, true, var_2.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -447f)));
    var var_3 = Struct_1(select(!vec4<bool>(false, true, !var_2.a.x, true), !vec4<bool>(false, true, var_2.c.x, u_input.b > 0u), !var_2.a), !var_2.a.yxw, vec2<bool>(false, var_2.a.x), -28923i == select(_wgslsmith_mod_i32(u_input.a.x, -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, 2147483647i)), true & (u_input.b < var_1)), var_0.x);
    var var_4 = Struct_1(select(select(var_3.a, !vec4<bool>(var_2.b.x, true, var_3.a.x, true), any(!var_3.a)), vec4<bool>(!(!var_3.b.x), true, true, -2147483647i >= firstTrailingBit(u_input.a.x)), false), !vec3<bool>(true, any(!vec4<bool>(false, var_2.c.x, true, true)), var_3.a.x | false), !vec2<bool>(var_3.c.x, true), any(vec4<bool>(false, all(var_2.c) || !var_2.b.x, var_2.d, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e - 1010f) * 1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_0.yzy, ~(~firstLeadingBit(-vec4<i32>(u_input.a.x, -2147483647i, 0i, 1i))));
}

