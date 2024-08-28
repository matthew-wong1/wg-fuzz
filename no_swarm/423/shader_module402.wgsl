struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_4(Struct_1(vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, -45413i, u_input.a, 8706i)), ~vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x)), _wgslsmith_sub_i32(-13704i, u_input.a << (arg_0.x % 32u)), -1i), select(~vec4<u32>(u_input.d.x, 97021u, 63414u, 9603u), u_input.d, select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), true)), -53450i | _wgslsmith_sub_i32(countOneBits(u_input.e), 39981i), arg_0.x == ~59019u), _wgslsmith_f_op_f32(f32(-1f) * -981f));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f)), _wgslsmith_f_op_f32(178f * 1793f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(-var_0.b))));
    var var_1 = select(var_0.a.a, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(1i), var_0.a.a.x, u_input.a, _wgslsmith_mod_i32(var_0.a.a.x, u_input.c.x)), max(var_0.a.a, _wgslsmith_clamp_vec4_i32(var_0.a.a, vec4<i32>(u_input.c.x, var_0.a.a.x, 2147483647i, 39486i), vec4<i32>(44570i, u_input.a, -1i, 1i))))), vec4<bool>(27330u >= ((arg_0.x >> (u_input.d.x % 32u)) & 1165u), true, arg_1.x, all(vec2<bool>(true, !arg_1.x))));
    let var_2 = var_0.a.a.yz << ((vec2<u32>(23661u, ~(~var_0.a.b.x)) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.a.b.xy, var_0.a.b.yx), 1u | arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = Struct_4(var_0.a, var_0.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-123f)), _wgslsmith_f_op_f32(775f + var_0.b), any(vec2<bool>(var_0.a.d, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-620f)))), 528f);
}

fn func_4(arg_0: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(153f, 658f, -419f) + vec3<f32>(729f, -131f, 1705f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 332f, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-466f, -1000f, -1214f) * vec3<f32>(-1016f, 1387f, arg_0.d.x)))))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-arg_0.e.a.a.wzy, -(~(arg_0.e.d.a.zzy << (u_input.d.zwy % vec3<u32>(32u))))), 1i);
    var var_2 = 9401u;
    var_2 = select(select(u_input.b, select(1u & u_input.d.x, _wgslsmith_clamp_u32(0u, arg_0.e.c.b.x, 40794u), all(vec3<bool>(false, false, arg_0.b))), arg_0.e.a.d), u_input.d.x | u_input.d.x, false) ^ 1u;
    let var_3 = Struct_2(arg_0.e.a, u_input.d.x, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-var_1.x, u_input.c.x, var_1.x, ~1i), arg_0.e.d.a), arg_0.e.c.b, -14884i, all(vec3<bool>(true, true, false))), arg_0.e.c);
    return var_3.d.d;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = !func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f)), any(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, true), arg_0.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1524f * -170f) + _wgslsmith_f_op_f32(func_3(u_input.d.wwx, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-404f * 976f), -1329f), Struct_2(Struct_1(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), u_input.d, 10524i, true), 33586u, Struct_1(vec4<i32>(arg_1, u_input.c.x, arg_1, u_input.c.x), vec4<u32>(24772u, 1u, 1u, u_input.d.x), arg_1, true), Struct_1(vec4<i32>(-2147483647i, -12790i, -1i, -31158i), vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.d.x), u_input.c.x, arg_0.x))));
    var var_1 = _wgslsmith_add_vec2_u32(max(u_input.d.wz, ~(~min(vec2<u32>(3525u, 1u), vec2<u32>(u_input.d.x, u_input.d.x)))), min(vec2<u32>(0u, u_input.b), abs(~u_input.d.wz)));
    var_1 = ~vec2<u32>(abs(~u_input.d.x), ~firstLeadingBit(u_input.b) | 0u);
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, _wgslsmith_mult_i32(u_input.e, 2147483647i) >> (var_1.x % 32u), 2147483647i, (u_input.e ^ u_input.e) | u_input.a), vec4<i32>(arg_1, 20763i, firstLeadingBit(20224i | u_input.c.x), 1i)), _wgslsmith_clamp_vec4_u32(~(~select(vec4<u32>(1u, var_1.x, var_1.x, u_input.b), u_input.d, var_0)), ~(~(~u_input.d)), min(~vec4<u32>(1u, 0u, u_input.b, var_1.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.d, u_input.d)))), countOneBits(-arg_1), arg_0.x);
    var var_3 = firstTrailingBit(_wgslsmith_add_vec4_i32(var_2.a, _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), u_input.c), _wgslsmith_div_i32(0i, var_2.c), 12744i), vec4<i32>(var_2.a.x, arg_1, var_2.c, arg_1 | -65795i))));
    return ~52769u;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = select(_wgslsmith_add_i32(-u_input.c.x, -1i), max(u_input.a, u_input.c.x), false);
    var var_1 = u_input.d.zyw & u_input.d.wwx;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~max(reverseBits(var_1.yx), u_input.d.zz ^ u_input.d.zx), ~vec2<u32>(func_2(vec3<bool>(true, true, true), u_input.c.x), 97921u)), firstTrailingBit(~var_1.x ^ var_1.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(-755f))))), arg_0);
    var var_4 = Struct_3(Struct_1(~min(firstTrailingBit(vec4<i32>(u_input.e, -17162i, -16330i, -2147483647i)), vec4<i32>(u_input.e, u_input.e, 41294i, u_input.e) >> (u_input.d % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(11582u, 49681u, var_1.x, var_1.x), abs(vec4<u32>(7755u, 63603u, u_input.b, var_1.x))), u_input.d << (u_input.d % vec4<u32>(32u)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true))), u_input.e, !(u_input.c.x < u_input.a) && (u_input.a >= -19825i)), _wgslsmith_dot_vec2_u32(~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(var_1.x, 0u)) ^ vec2<u32>(u_input.b, 1u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 1u)), ~vec2<u32>(67050u, u_input.b) << (select(vec2<u32>(var_1.x, 0u), vec2<u32>(var_1.x, var_1.x), vec2<bool>(false, true)) % vec2<u32>(32u)))), ~max(reverseBits(u_input.c.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, 0i), vec3<i32>(u_input.c.x, -1i, u_input.c.x))), vec3<u32>(abs(4294967295u) << (var_2.x % 32u), _wgslsmith_add_u32(abs(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(25391u, 4294967295u, var_1.x), vec3<u32>(28081u, 30356u, 1u))) << (_wgslsmith_clamp_u32(countOneBits(u_input.d.x), _wgslsmith_sub_u32(u_input.b, 1u), u_input.d.x) % 32u), var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_3.x)) - vec2<f32>(var_3.x, -1080f)) + vec2<f32>(arg_0, -1219f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.x - arg_0), _wgslsmith_f_op_f32(select(arg_0, -125f, true))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, arg_0), vec2<f32>(-2325f, -1265f))))))));
    return Struct_4(Struct_1(select(vec4<i32>(u_input.e, -1i, var_4.a.c, ~1i), vec4<i32>(var_4.a.a.x, ~var_4.a.c, 43023i, -1i), false), var_4.a.b, 0i, var_3.x != var_3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(682f, 1000f)), -542f), _wgslsmith_f_op_f32(ceil(919f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f + -946f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1087f))))));
    var var_1 = !(!select(!(!vec3<bool>(true, var_0.a.d, true)), !vec3<bool>(true, false, var_0.a.d), select(vec3<bool>(var_0.a.d, var_0.a.d, var_0.a.d), vec3<bool>(var_0.a.d, true, false), select(vec3<bool>(var_0.a.d, true, false), vec3<bool>(var_0.a.d, false, true), vec3<bool>(var_0.a.d, var_0.a.d, var_0.a.d)))));
    var var_2 = vec3<bool>(any(vec3<bool>(select(true, false, var_1.x & false), true, !any(vec4<bool>(var_1.x, true, var_1.x, true)))), true, !any(select(vec3<bool>(var_1.x, var_1.x, var_0.a.d), !vec3<bool>(true, true, var_1.x), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_0.a.d, var_1.x), var_0.a.d))));
    var_1 = !select(select(vec3<bool>(true, false, var_2.x), vec3<bool>(false, true, any(vec3<bool>(var_0.a.d, false, true))), select(!vec3<bool>(var_1.x, false, var_0.a.d), vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_2.x, var_1.x))), !vec3<bool>(func_1(-1451f).a.d, var_0.a.d, true), select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_2.x, var_0.a.d, var_2.x), !vec3<bool>(true, false, var_0.a.d)), !(!vec3<bool>(var_2.x, true, var_2.x)), select(vec3<bool>(var_0.a.d, var_2.x, var_2.x), select(vec3<bool>(true, var_1.x, var_2.x), vec3<bool>(true, var_1.x, var_1.x), false), vec3<bool>(true, true, var_1.x))));
    var_2 = select(vec3<bool>(false, any(!(!vec4<bool>(true, false, var_1.x, true))), var_0.a.a.x >= -447i), !vec3<bool>(var_1.x, var_0.a.d, _wgslsmith_f_op_f32(floor(var_0.b)) <= _wgslsmith_f_op_f32(max(var_0.b, -434f))), 4294967295u <= func_1(_wgslsmith_f_op_f32(829f + 273f)).a.b.x);
    var_1 = vec3<bool>(true, ~_wgslsmith_div_i32(var_0.a.a.x ^ var_0.a.a.x, u_input.e) != 0i, true);
    let var_3 = -478f;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i << (0u % 32u), _wgslsmith_sub_i32(u_input.c.x, var_0.a.a.x), 7987i, _wgslsmith_div_i32(-1i, u_input.c.x)), var_0.a.a & (_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, u_input.e, 2147483647i, var_0.a.a.x), var_0.a.a) | vec4<i32>(u_input.a, 9985i, 2147483647i, -9891i))), 516f, 11433u | var_0.a.b.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, _wgslsmith_f_op_f32(abs(func_1(var_0.b).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1549f, var_0.b, -421f, var_0.b), vec4<f32>(var_0.b, 1000f, var_0.b, var_3)))), vec4<f32>(var_0.b, 1768f, var_3, _wgslsmith_f_op_f32(-var_3)))))), vec2<f32>(var_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2440f * var_3) * var_3)))));
}

