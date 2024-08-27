struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), any(vec3<bool>(true, all(vec3<bool>(true, true, arg_1)), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1166f, -3089f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-889f, -603f) + vec2<f32>(-1144f, 878f)))), -2697f), max(12141i, -firstLeadingBit(_wgslsmith_div_i32(2147483647i, 2147483647i))), -126f, !(!vec2<bool>(!arg_1, true)), Struct_1(-(~firstLeadingBit(vec4<i32>(-2147483647i, -1i, -16722i, 2147483647i))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-854f, 1000f))))), 1f));
    let var_1 = var_0.d.x;
    let var_2 = Struct_2(var_0.a, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.a.x, var_0.b), vec2<i32>(var_0.e.a.x, var_0.a.a.x)), max(var_0.e.a.xz, var_0.e.a.wx)) & -(~(-10201i)), _wgslsmith_div_f32(479f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -551f)))), !(!select(select(vec2<bool>(false, arg_1), vec2<bool>(true, false), var_0.d.x), select(vec2<bool>(var_0.a.b, true), var_0.d, vec2<bool>(false, true)), !vec2<bool>(true, arg_1))), Struct_1(firstLeadingBit(-vec4<i32>(var_0.b, -25532i, 33983i, var_0.a.a.x) & firstTrailingBit(vec4<i32>(-1i, var_0.a.a.x, -1i, var_0.a.a.x))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.c * _wgslsmith_f_op_vec2_f32(-var_0.a.c)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, var_0.c)), vec2<f32>(var_0.a.c.x, 631f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, var_0.a.d)), 234f))));
    var var_3 = countOneBits(-vec3<i32>(~_wgslsmith_mod_i32(var_2.b, var_0.a.a.x), -36527i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, var_0.b, 22486i), vec3<i32>(15721i, 5513i, 2147483647i), false), var_2.a.a.xzx | var_0.a.a.wwx)));
    let var_4 = Struct_2(var_2.e, -_wgslsmith_add_i32(~var_2.e.a.x, 15774i) & min(var_3.x, _wgslsmith_mult_i32(abs(var_2.e.a.x), ~1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.a.c.x))))) * _wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + 1019f) - var_2.c))), vec2<bool>(!(false & all(vec4<bool>(true, arg_1, false, false))), true), Struct_1(vec4<i32>(~(~(-29324i)), firstTrailingBit(var_3.x), _wgslsmith_mult_i32(firstLeadingBit(var_3.x), max(var_0.e.a.x, var_0.e.a.x)), _wgslsmith_mult_i32(var_2.a.a.x, _wgslsmith_sub_i32(var_2.a.a.x, var_2.a.a.x))), firstTrailingBit(~(-2147483647i)) > _wgslsmith_add_i32(countOneBits(var_3.x), abs(81306i)), vec2<f32>(var_0.a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-633f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.e.d, var_2.e.d, var_0.c, var_4.c) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.c, 1848f, _wgslsmith_f_op_f32(floor(1000f)), -207f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c, var_4.e.d, var_4.a.d, 292f) - vec4<f32>(var_0.a.d, -455f, 2203f, var_0.a.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1085f, var_0.e.d, var_0.e.c.x, var_0.a.c.x) + vec4<f32>(var_0.e.c.x, var_2.c, -889f, 804f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-233f, -1076f, var_0.c, var_2.e.c.x), vec4<f32>(var_4.c, var_4.c, -303f, var_0.e.d))), _wgslsmith_div_vec4_f32(vec4<f32>(662f, var_0.e.d, var_0.e.c.x, 859f), vec4<f32>(var_4.c, 1077f, -871f, var_2.c)), all(var_4.d))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = vec2<bool>(true, ~(arg_2.a.x ^ arg_0.a.x) <= -2147483647i);
    var_0 = vec2<bool>(true, true);
    var var_1 = -_wgslsmith_mod_vec3_i32(select(~vec3<i32>(2147483647i, arg_0.a.x, arg_2.a.x), _wgslsmith_mult_vec3_i32(arg_0.a.xzy, arg_2.a.zwz), any(vec3<bool>(false, arg_2.b, var_0.x))), vec3<i32>(21265i, 3131i << (u_input.a.x % 32u), 33805i)) & ~arg_0.a.yyz;
    let var_2 = Struct_1(vec4<i32>(select(firstTrailingBit(17051i), 1i, all(vec2<bool>(false, true)) & arg_0.b), _wgslsmith_dot_vec3_i32(arg_2.a.xyx, -(~arg_2.a.www)), 64007i, 1i), any(!(!vec4<bool>(true, arg_2.b, false, var_0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1460f)))), _wgslsmith_f_op_f32(floor(arg_2.c.x))))), 751f);
    var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_1.x, var_2.a.x), var_2.a.yyy) | var_2.a.yxz;
    return select(!(!select(select(vec2<bool>(true, arg_0.b), vec2<bool>(false, arg_0.b), arg_2.b), !vec2<bool>(arg_0.b, false), !vec2<bool>(true, arg_2.b))), !select(select(vec2<bool>(var_0.x, true), !vec2<bool>(false, var_2.b), var_2.b), !select(vec2<bool>(true, var_2.b), vec2<bool>(false, var_2.b), false), vec2<bool>(arg_0.b, all(vec4<bool>(arg_0.b, var_2.b, true, true)))), any(vec4<bool>(arg_2.b, var_0.x, !(var_2.a.x < var_2.a.x), false)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = 63170u;
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-2147483647i, -1i), -arg_1.e.a.x), vec2<i32>(-abs(-65910i), ~(~arg_1.e.a.x))), -abs(vec2<i32>(~arg_1.a.a.x, 0i)), arg_1.e.a.yz);
    var_0 = abs(4294967295u & u_input.a.x);
    let var_2 = abs(~5620u);
    let var_3 = Struct_2(arg_1.a, var_1.x, arg_0, func_4(arg_1.e, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, 60522u, 26969u), ~vec4<u32>(1u, var_2, var_2, 43141u)), any(select(vec2<bool>(true, arg_1.e.b), vec2<bool>(arg_1.d.x, arg_1.e.b), arg_1.a.b)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2, u_input.a.x), vec3<u32>(0u, 4294967295u, 15848u))))), arg_1.e), arg_1.e);
    return ~abs(-4200i);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a, u_input.a);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_mod_i32(2147483647i, 1i);
    var_1 = ~arg_1;
    let var_3 = u_input.a.x;
    return vec4<f32>(213f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1593f + -116f) - 1649f)), 168f)), -1817f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1654f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) * _wgslsmith_f_op_f32(f32(-1f) * -820f))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = !vec3<bool>(!arg_1.b, arg_1.b, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(max(vec4<i32>(~arg_1.a.x, arg_1.a.x, arg_1.a.x, func_2(235f, Struct_2(Struct_1(vec4<i32>(arg_1.a.x, 2147483647i, 1i, arg_1.a.x), true, vec2<f32>(-368f, arg_1.d), arg_1.c.x), -34052i, -242f, var_0.xx, Struct_1(vec4<i32>(arg_1.a.x, arg_1.a.x, -18506i, arg_1.a.x), arg_1.b, arg_1.c, arg_1.d)))) ^ _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, arg_1.a.x, 20904i, arg_1.a.x), vec4<i32>(0i, arg_1.a.x, arg_1.a.x, 0i)), vec4<i32>(~_wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x), abs(-2147483647i) << (arg_0 % 32u), _wgslsmith_mult_i32(62643i, 1i), 46620i)), ~1u, arg_1.b && all(select(select(vec3<bool>(arg_1.b, false, false), vec3<bool>(arg_1.b, var_0.x, arg_1.b), vec3<bool>(true, arg_1.b, var_0.x)), vec3<bool>(true, true, true), vec3<bool>(arg_1.b, var_0.x, true))), -1i));
    var var_2 = (-48421i < arg_1.a.x) && (!all(!vec3<bool>(arg_1.b, true, arg_1.b)) && (func_2(var_1.x, Struct_2(arg_1, -47003i, -810f, var_0.xz, arg_1)) >= (_wgslsmith_dot_vec2_i32(arg_1.a.wy, arg_1.a.yw) ^ (2147483647i << (0u % 32u)))));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(3676u, abs(57040u), u_input.a.x, (26472u >> ((0u & arg_0) % 32u)) & _wgslsmith_mod_u32(u_input.a.x, abs(arg_0))), ~(~(~select(vec4<u32>(27015u, 37655u, arg_0, 4294967295u), vec4<u32>(u_input.a.x, 1u, 0u, arg_0), false))));
    var var_4 = max(~20159u, 31373u);
    return Struct_2(Struct_1(arg_1.a, var_0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-var_1.xx), all(vec3<bool>(arg_1.b, false, arg_1.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, var_1.x)), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f) - var_1.x)), 1i, _wgslsmith_f_op_f32(-151f * arg_1.d), select(!vec2<bool>(false, arg_1.b), vec2<bool>(true, true), true), arg_1);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(vec4<u32>(1u, u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, arg_0.x), 0u), min(~arg_0.x, arg_0.x ^ u_input.a.x)) & min(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.x, 34842u), vec4<u32>(0u, arg_0.x, 58530u, 27681u)), ~(vec4<u32>(u_input.a.x, 68872u, arg_0.x, arg_0.x) << (vec4<u32>(1u, 40330u, 4294967295u, u_input.a.x) % vec4<u32>(32u)))));
    let var_1 = reverseBits(vec3<i32>(abs(arg_1.e.a.x >> (~0u % 32u)), -1317i, 0i));
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(arg_1.a.a, arg_1.a.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-28134i, -50719i, 26212i, -2147483647i), ~arg_1.e.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-22802i, var_1.x, var_1.x, -51662i), vec4<i32>(-2147483647i, 1509i, 1i, arg_1.e.a.x)) ^ vec4<i32>(var_1.x, -1i, 19368i, arg_1.a.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, arg_1.e.a.x, -38647i, var_1.x), arg_1.a.a))), (1i << (abs(var_0.x) % 32u)) != 12862i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.a.c)))), func_1(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.zy)), ~countOneBits(var_0.x), ~10280u), Struct_1(-vec4<i32>(2147483647i, -21710i, 1i, arg_1.a.a.x) << ((vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, 0u) & var_0) % vec4<u32>(32u)), false, arg_1.e.c, arg_1.e.d)).e.d);
    var_2 = Struct_1(~_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, var_2.a.x, 30944i, -2147483647i), var_2.a), all(arg_1.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.c.x, var_2.c.x), vec2<f32>(var_2.c.x, var_2.d), vec2<bool>(true, var_2.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.d, arg_1.a.d)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.c, arg_1.e.c), _wgslsmith_f_op_vec2_f32(-var_2.c), vec2<bool>(!var_2.b, true || var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + var_2.c.x)));
    let var_3 = func_1(var_0.x, Struct_1(func_1(~var_0.x, Struct_1(var_2.a, !arg_1.a.b, _wgslsmith_f_op_vec2_f32(select(arg_1.e.c, vec2<f32>(-166f, 1102f), arg_1.d)), var_2.d)).e.a, !(all(vec3<bool>(false, true, true)) != (var_2.b == false)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.d)), _wgslsmith_f_op_f32(sign(arg_1.c))), _wgslsmith_f_op_f32(step(var_2.c.x, -199f))), _wgslsmith_f_op_f32(-func_1(_wgslsmith_mult_u32(0u, var_0.x), arg_1.a).a.d)));
    return Struct_1(vec4<i32>(firstLeadingBit(var_1.x), -6857i, countOneBits(-58952i), _wgslsmith_sub_i32(-11322i, i32(-1i) * -1i)), arg_1.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1662f, func_1(~u_input.a.x, func_1(var_0.x, Struct_1(vec4<i32>(var_2.a.x, var_2.a.x, var_1.x, var_2.a.x), var_3.a.b, var_2.c, arg_1.e.c.x)).a).a.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.d, 649f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-217f * 595f) + arg_1.e.d));
}

fn func_7(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_2.e, 2147483647i, arg_2.a.c.x, select(arg_2.d, !vec2<bool>(!arg_2.e.b, arg_2.a.b == arg_0), vec2<bool>(arg_0, arg_0)), Struct_1(~_wgslsmith_mult_vec4_i32(arg_2.a.a, vec4<i32>(2796i, arg_2.b, arg_2.a.a.x, 2147483647i) << (vec4<u32>(arg_3, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), func_4(func_1(countOneBits(arg_3), func_6(vec3<u32>(u_input.a.x, u_input.a.x, arg_3), arg_2)).a, vec4<f32>(_wgslsmith_div_f32(arg_2.e.c.x, 1000f), arg_1, _wgslsmith_f_op_f32(-arg_2.c), -900f), arg_2.a).x, func_1(reverseBits(arg_3), arg_2.a).a.c, arg_1));
    var var_1 = Struct_2(Struct_1(min(arg_2.a.a, abs(vec4<i32>(0i, var_0.b, arg_2.e.a.x, -22924i))), -_wgslsmith_add_i32(18546i, -2147483647i) > -countOneBits(arg_2.e.a.x), arg_2.a.c, -591f), arg_2.b, _wgslsmith_f_op_f32(arg_2.a.c.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.e.d)) - arg_1)))), arg_2.d, Struct_1(~arg_2.e.a, var_0.e.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, _wgslsmith_div_f32(-155f, 1296f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.d, _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(var_0.e.d + arg_1))));
    var var_2 = Struct_1(arg_2.e.a << (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(18572u, 1u, 4294967295u, u_input.a.x), ~vec4<u32>(90462u, u_input.a.x, u_input.a.x, arg_3))) % vec4<u32>(32u)), any(var_0.d), _wgslsmith_f_op_vec2_f32(var_1.e.c + _wgslsmith_f_op_vec2_f32(var_1.e.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 161f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-175f * arg_1), _wgslsmith_f_op_f32(var_1.c + var_0.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * var_0.e.c.x) + _wgslsmith_f_op_f32(-var_1.e.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + var_0.a.c.x) * 1141f)));
    var_1 = var_0;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(~arg_3, arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, u_input.a.x, _wgslsmith_mult_u32(0u, 6570u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 133312u), u_input.a.x, 68629u))), abs(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(min(69742u, 4294967295u), min(4294967295u, arg_3)))));
    return func_1(4294967295u, Struct_1(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 62570i, arg_2.e.a.x, var_1.b), vec4<i32>(var_1.a.a.x, 0i, 68725i, -6091i))), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -181f)) - vec2<f32>(492f, var_0.e.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) - -350f) - var_1.a.c.x))).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a, ~vec2<u32>(0u, 36130u))), vec2<u32>(u_input.a.x, ~19853u));
    var var_1 = -1040f;
    var var_2 = max(1i >> (0u % 32u), firstTrailingBit(0i));
    var var_3 = 398u;
    var var_4 = Struct_2(func_7(true, _wgslsmith_f_op_f32(-189f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-189f * -1222f), _wgslsmith_f_op_f32(round(-930f)))), Struct_2(func_6(vec3<u32>(u_input.a.x, var_0.x, var_0.x), func_1(var_0.x, Struct_1(vec4<i32>(-1i, -2147483647i, -46910i, 2324i), false, vec2<f32>(-1000f, -902f), 1850f))), _wgslsmith_clamp_i32(-1i, -1i, 0i) & min(0i, -6765i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(135f))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), func_6(min(vec3<u32>(1u, var_0.x, 6323u), vec3<u32>(14801u, var_0.x, var_0.x)), func_1(19806u, Struct_1(vec4<i32>(1i, -23029i, 17565i, -6009i), false, vec2<f32>(-875f, -961f), 253f)))), ~35718u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(func_6(vec3<u32>(u_input.a.x, var_0.x, 4294967295u), Struct_2(Struct_1(vec4<i32>(22509i, 2147483647i, -2554i, -29808i), false, vec2<f32>(856f, 1579f), 1000f), 0i, 1799f, vec2<bool>(false, true), Struct_1(vec4<i32>(-2147483647i, 545i, 8623i, -2147483647i), false, vec2<f32>(-1671f, -1221f), -241f))).a | vec4<i32>(-1i, -40770i, -2147483647i, 1i), func_6(abs(vec3<u32>(4294967295u, var_0.x, u_input.a.x)), Struct_2(Struct_1(vec4<i32>(0i, 585i, -71612i, -39275i), false, vec2<f32>(814f, -495f), 429f), 31764i, 528f, vec2<bool>(false, false), Struct_1(vec4<i32>(24615i, 0i, -2147483647i, -1i), false, vec2<f32>(-1397f, -358f), -413f))).a), vec4<i32>(1i, 1i, 1i, 1i) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, 0u), vec4<u32>(u_input.a.x, 12698u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 35566u, u_input.a.x, u_input.a.x)) ^ vec4<u32>(0u, 4294967295u, 37616u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1172f, 150f) + -1012f), vec2<bool>(func_4(func_7(true, -565f, func_1(var_0.x, Struct_1(vec4<i32>(-24651i, -35183i, -1i, 0i), false, vec2<f32>(-1033f, -154f), 668f)), var_0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-241f, -556f, -1991f, 113f) + vec4<f32>(-244f, -2304f, 1000f, 1088f)))), Struct_1(~vec4<i32>(-13659i, -2147483647i, 37679i, 1i), true, vec2<f32>(344f, -394f), -415f)).x, any(vec2<bool>(true, true))), func_1(u_input.a.x, Struct_1(vec4<i32>(i32(-1i) * -18682i, _wgslsmith_mod_i32(2147483647i, 2147483647i), 1i, 1i), true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(876f, 780f))), _wgslsmith_f_op_f32(trunc(888f)))).e);
    let var_5 = func_6(vec3<u32>(u_input.a.x, u_input.a.x, ~12330u), Struct_2(var_4.e, max(-_wgslsmith_sub_i32(var_4.a.a.x, -1i), _wgslsmith_mult_i32(-2606i, var_4.a.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.e.c.x - var_4.e.c.x)))), select(!select(var_4.d, var_4.d, vec2<bool>(false, var_4.d.x)), func_1(firstTrailingBit(0u), func_1(u_input.a.x, var_4.e).a).d, true), func_1(_wgslsmith_add_u32(var_0.x, var_0.x), Struct_1(vec4<i32>(10287i, 2147483647i, var_4.e.a.x, var_4.a.a.x), false, _wgslsmith_f_op_vec2_f32(ceil(var_4.e.c)), _wgslsmith_f_op_vec4_f32(func_3(4294967295u, var_4.d.x, vec3<u32>(var_0.x, 1u, u_input.a.x))).x)).a));
    var var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~1i, (i32(-1i) * -2147483647i) << (var_0.x % 32u), var_5.a.x, 583i));
}

