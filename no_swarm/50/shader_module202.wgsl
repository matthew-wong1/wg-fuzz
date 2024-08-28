struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = 4287u;
    var var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-749f, _wgslsmith_f_op_f32(trunc(2002f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1706f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, -560f) * vec2<f32>(255f, 263f))), true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1648f, -393f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(818f, 1399f), vec2<f32>(-698f, -1560f))), true)) + vec2<f32>(_wgslsmith_f_op_f32(sign(-866f)), _wgslsmith_f_op_f32(-1000f + -2997f)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -379f), _wgslsmith_f_op_f32(round(-1396f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1324f - var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))));
    let var_4 = !((i32(-1i) * -22823i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, 2147483647i) ^ select(u_input.c, vec3<i32>(19421i, 18776i, u_input.c.x), vec3<bool>(false, true, true)), u_input.c));
    return u_input.c;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_add_vec3_i32(-max(u_input.c, vec3<i32>(u_input.c.x, 0i, -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.c.xwy, vec3<i32>(u_input.c.x, -48438i, 14922i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, arg_0.c.x, u_input.c.x), arg_0.c.wxx))) & -reverseBits(func_3()), u_input.c.xx, ~_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 32609i, arg_0.c.x)), -57090i), 45438i);
}

fn func_1() -> i32 {
    var var_0 = func_2(Struct_1(~(-2147483647i) ^ (firstLeadingBit(1i) << (firstTrailingBit(u_input.b.x) % 32u)), true, _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(-42181i, -34864i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, 30671i, -40859i) | vec4<i32>(u_input.c.x, u_input.c.x, -1990i, u_input.c.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -61979i), vec4<i32>(55331i, 0i, -30720i, u_input.c.x)), abs(vec4<i32>(u_input.c.x, -13170i, u_input.c.x, -2147483647i))), ~max(_wgslsmith_add_i32(u_input.c.x, -2147483647i), -u_input.c.x), 3237u), _wgslsmith_f_op_f32(148f + _wgslsmith_div_f32(1587f, 1f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)))), -806f);
    var_0 = func_2(Struct_1(u_input.c.x, true || !all(vec2<bool>(true, true)), vec4<i32>(-u_input.c.x, ~_wgslsmith_clamp_i32(var_0.d, -17256i, u_input.c.x), ~(-47834i & u_input.c.x), var_0.b.x), 0i, ~(~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1554f, -1445f))) - -1000f));
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -var_0.b.x, _wgslsmith_add_i32(u_input.c.x, 2147483647i), countOneBits(var_0.a.x)), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d, u_input.c.x, 0i, -1i), vec4<i32>(u_input.c.x, -1i, 1i, -1i)), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.zy >> (vec2<u32>(u_input.e, u_input.b.x) % vec2<u32>(32u)), func_2(Struct_1(-15018i, true, vec4<i32>(var_0.b.x, 2157i, u_input.c.x, 26807i), 18244i, 41785u), -1773f).a.zz), select(max(0i, -51342i), -2147483647i, false), 26232i, _wgslsmith_div_i32(~var_0.b.x, 1i ^ u_input.c.x)));
    let var_3 = func_2(Struct_1(-_wgslsmith_clamp_i32(u_input.c.x, -var_0.a.x, u_input.c.x), true, ~var_2, var_0.a.x, ~firstTrailingBit(1u)), -2586f);
    return firstLeadingBit((_wgslsmith_div_i32(firstTrailingBit(var_2.x), _wgslsmith_mult_i32(0i, -2147483647i)) << (~4294967295u % 32u)) & -37715i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, arg_2.x, arg_2.x, 0u), u_input.a)), ~0u);
    let var_2 = Struct_1(_wgslsmith_sub_i32(0i, u_input.c.x), !(!(-799f != _wgslsmith_div_f32(arg_0.x, -666f))), _wgslsmith_mult_vec4_i32(min(min(~vec4<i32>(-53358i, arg_1.d, 14621i, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-33124i, 42918i, -2147483647i, 1i), vec4<i32>(arg_1.c, 41570i, 0i, arg_1.d))), vec4<i32>(func_1(), _wgslsmith_mult_i32(46543i, arg_1.c), u_input.c.x, ~(-1i))), -vec4<i32>(-u_input.c.x, arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, 10678i), vec4<i32>(arg_1.d, u_input.c.x, u_input.c.x, 2147483647i)), 1i | u_input.c.x)), arg_1.a.x, arg_2.x);
    let var_3 = vec2<i32>(743i, ~(~(-29947i)));
    let var_4 = Struct_1(_wgslsmith_div_i32(func_3().x, -2147483647i), var_0, vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, var_2.c.x), var_3.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(39417i, -51361i, arg_1.c) ^ vec3<i32>(var_3.x, var_2.a, u_input.c.x)), u_input.c)), ~(-_wgslsmith_sub_i32(28513i, firstTrailingBit(1i))), var_1);
    return func_2(var_4, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1563f * _wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -619f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = u_input.d.x;
    var var_1 = 17978i;
    var var_2 = Struct_1(func_1(), true, vec4<i32>(-_wgslsmith_clamp_i32(10196i, i32(-1i) * -32493i, 1i), u_input.c.x, ~(_wgslsmith_add_i32(arg_1.d, u_input.c.x) ^ 1i), -10749i), u_input.c.x, 1u);
    let var_3 = var_2.e;
    var var_4 = Struct_1(-2147483647i | -_wgslsmith_sub_i32(var_2.d, _wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(var_2.c.x, arg_1.a.x, 2147483647i, -1i))), !var_2.b, var_2.c, u_input.c.x, var_2.e << (0u % 32u));
    return func_2(Struct_1(arg_1.b.x, var_2.b, ~vec4<i32>(func_2(Struct_1(var_2.c.x, var_2.b, var_4.c, arg_1.c, u_input.e), 1542f).b.x, -arg_0.d, arg_0.c, select(arg_0.d, 0i, true)), _wgslsmith_mult_i32(func_3().x, ~10437i), var_2.e), _wgslsmith_f_op_f32(select(876f, 1000f, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(-2147483647i, u_input.c.x, firstLeadingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), -u_input.c.x);
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, -257f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(818f, 1052f) + vec2<f32>(-1000f, 998f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-984f, -603f), vec2<f32>(-189f, -1521f))), Struct_2(firstLeadingBit(-vec3<i32>(18276i, 37125i, u_input.c.x)), abs(-var_0.zz), func_1(), ~(-2147483647i)), u_input.a.xyy), Struct_2(firstLeadingBit(vec3<i32>(-46134i, var_0.x, abs(var_0.x))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), u_input.c.x), 1i), firstLeadingBit(u_input.c.x), -10244i));
    var var_2 = func_2(Struct_1(var_0.x, true, vec4<i32>(11596i, var_0.x, select(firstLeadingBit(16316i), ~77019i, all(vec2<bool>(false, false))), select(-var_0.x, -37708i, true)), ~10710i, 4294967295u), 406f);
    var var_3 = func_2(Struct_1(-1i, true, vec4<i32>(0i, ~2147483647i, i32(-1i) * -1i, firstTrailingBit(var_1.c)) | (min(vec4<i32>(-2147483647i, var_1.c, var_0.x, -24000i), vec4<i32>(var_0.x, -2147483647i, -36661i, var_1.d)) | vec4<i32>(2147483647i, var_0.x, -1i, -1i)), -(18777i & var_0.x) | firstLeadingBit(_wgslsmith_add_i32(var_2.a.x, var_0.x)), ~_wgslsmith_div_u32(u_input.a.x, ~42u)), 996f);
    let var_4 = ~_wgslsmith_sub_i32(var_2.b.x, 1i) >= ~(-45549i);
    var_1 = Struct_2(firstTrailingBit(var_2.a), var_3.a.xy, u_input.c.x << (~u_input.e % 32u), ~var_3.d);
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1285f, -406f, -1101f, 667f)), vec4<f32>(694f, 107f, 1512f, -141f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1121f)), -238f, _wgslsmith_f_op_f32(1236f * -1894f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f - -1672f) - _wgslsmith_f_op_f32(step(371f, 314f)))))));
    var_3 = Struct_2(vec3<i32>(-2147483647i, 1i, func_2(Struct_1(u_input.c.x, true, _wgslsmith_mult_vec4_i32(var_0, var_0), 1i, 0u), 493f).a.x), _wgslsmith_add_vec2_i32(var_1.a.zx, -(~var_0.wz)), 12131i, _wgslsmith_dot_vec2_i32(var_1.b, var_1.a.xx));
    let var_6 = Struct_2(func_3(), -var_2.a.xy, ~func_3().x, -(~(~(-var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(~4294967295u)), var_5.yw);
}

