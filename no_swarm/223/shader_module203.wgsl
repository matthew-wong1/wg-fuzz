struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 10>;

var<private> global3: i32;

var<private> global4: array<bool, 22> = array<bool, 22>(false, false, false, true, true, true, true, false, false, true, false, true, false, true, true, true, false, true, true, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = !((arg_1 == (false || global4[_wgslsmith_index_u32(4294967295u, 22u)])) && true) || (true | all(!global0.wzw));
    let var_1 = select(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 15374i), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, 74047i), -vec2<i32>(16388i, u_input.a))), countOneBits(abs(select(vec2<i32>(-1i, 46643i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(arg_0, false)))), !(!(!global2[_wgslsmith_index_u32(1u, 10u)]))) | -(~(vec2<i32>(1262i, -2147483647i) | vec2<i32>(7435i, u_input.a)) ^ ~vec2<i32>(-3270i, -1i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2479f, _wgslsmith_f_op_f32(-1000f * 565f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -970f))), _wgslsmith_f_op_f32(f32(-1f) * -551f)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(1000f));
    global4 = array<bool, 22>();
    return 2147483647i;
}

fn func_2() -> i32 {
    global3 = func_3((_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 50081i), vec4<i32>(35579i, u_input.a, u_input.a, u_input.a)), min(vec4<i32>(u_input.a, u_input.a, 12828i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -7209i))) == -29090i) | global0.x, true);
    global4 = array<bool, 22>();
    let var_0 = Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(~select(2147483647i, u_input.a, global0.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, u_input.a), ~(-13669i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, 16631i, u_input.a), vec3<i32>(2147483647i, -33431i, u_input.a), global0.wyw), ~vec3<i32>(1i, 0i, -25670i))), firstLeadingBit(min(~vec3<i32>(u_input.a, u_input.a, -14579i), select(vec3<i32>(6181i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), true)))), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(42912u, 0u), vec2<u32>(47320u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(67373u, 4294967295u), vec2<u32>(21779u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-839f)), 1182f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-432f, 1012f))))), u_input.a, all(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2187u, 0u, 72358u, 72951u), vec4<u32>(0u, 0u, 44852u, 1u)), vec4<u32>(1u, 4294967295u, 1u, 44367u)), 22u)], false, any(!global2[_wgslsmith_index_u32(4294967295u, 10u)]), all(global0.zx))));
    var var_1 = Struct_1(var_0.b.x, 1u);
    let var_2 = Struct_2(var_0.a, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(var_0.b), vec2<u32>(_wgslsmith_div_u32(var_1.a, 1u), _wgslsmith_div_u32(var_1.b, 72679u))), vec2<u32>(~firstTrailingBit(4294967295u), ~countOneBits(var_0.b.x))), var_0.c, countOneBits(-47445i) | func_3(_wgslsmith_f_op_f32(-var_0.c.x) <= -1175f, true), !any(vec4<bool>(var_0.a.x == var_0.a.x, false, !global4[_wgslsmith_index_u32(0u, 22u)], global0.x)));
    return _wgslsmith_clamp_i32(var_0.d, _wgslsmith_mult_i32(~(-1i), max(~var_0.a.x, u_input.a)), -2147483647i) << (17708u % 32u);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(4294967295u, 17649u);
    let var_1 = _wgslsmith_f_op_f32(trunc(-1064f));
    let var_2 = min(~countOneBits(countOneBits(~vec4<i32>(-45258i, u_input.a, 41878i, -1i))), vec4<i32>(~_wgslsmith_mult_i32(u_input.a, 2147483647i | u_input.a), abs(-(~1i)), _wgslsmith_add_i32(-1i, 28689i), 1i));
    global3 = var_2.x;
    var var_3 = select(vec4<i32>(_wgslsmith_mod_i32(2147483647i | func_2(), abs(-27455i & var_2.x)), u_input.a, _wgslsmith_clamp_i32(var_2.x, u_input.a, func_3(true, false)) | func_2(), _wgslsmith_sub_i32(var_2.x, 1i) & u_input.a), firstLeadingBit(vec4<i32>(~(~u_input.a), -1i, abs(var_2.x) & u_input.a, ~var_2.x)), all(!global0.zxw));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> vec2<f32> {
    global4 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(1131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1001f, _wgslsmith_f_op_f32(851f - -306f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1152f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2137f, 222f), vec2<f32>(-270f, 259f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(270f, -1301f), vec2<f32>(1360f, -1281f))))))));
    var var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(11580i, arg_2.x, arg_0, -2147483647i), vec4<i32>(arg_1, -2147483647i, 58775i, u_input.a)), reverseBits(vec4<i32>(2147483647i, 1i, arg_2.x, 1i)), true), vec4<i32>(-1603i, u_input.a, arg_1, ~u_input.a)), func_3(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_sub_u32(0u, 0u)), 22u)], true), select(1i, reverseBits(-16175i), true)), vec2<u32>(4294967295u, 56385u ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(19455u, 24890u)), vec2<u32>(72800u, 1u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(224f + var_0.x))), 220f), var_0)), arg_0, abs(_wgslsmith_clamp_u32(32547u, 4294967295u, 1u) & 1u) > abs(~(~12851u)));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(select(arg_2.x, countOneBits(1i), var_1.e), ~arg_1), i32(-1i) * -2147483647i, -reverseBits(arg_0));
    let var_3 = Struct_2(var_1.a, firstLeadingBit(vec2<u32>(1u, var_1.b.x | ~var_1.b.x)), var_0, _wgslsmith_div_i32(reverseBits(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(50617i, 8406i, 26534i, arg_1), vec4<i32>(-1i, arg_1, arg_2.x, u_input.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -28331i, arg_0, -42298i), vec4<i32>(arg_2.x, -2147483647i, arg_1, arg_1), vec4<i32>(var_1.a.x, -1i, 2147483647i, arg_2.x)), vec4<i32>(0i, u_input.a, 0i, arg_1), vec4<i32>(var_2.x, -2147483647i, var_1.d, arg_0) >> (vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, 14815u) % vec4<u32>(32u))))), true);
    return var_3.c;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.a.x, arg_0.d), 1i | ~arg_0.a.x);
    var var_0 = Struct_1(~(~(~arg_0.b.x)) << (arg_0.b.x % 32u), ~39567u);
    global4 = array<bool, 22>();
    var var_1 = arg_0.b.x;
    var_0 = Struct_1(_wgslsmith_sub_u32(min(_wgslsmith_mult_u32(~arg_0.b.x, 4294967295u), arg_0.b.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.b.x, var_0.b, var_0.b, var_0.a)), vec4<u32>(arg_0.b.x, var_0.b, countOneBits(arg_0.b.x), _wgslsmith_sub_u32(var_0.b, var_0.a)))), arg_0.b.x);
    return Struct_2(vec3<i32>(u_input.a, u_input.a >> (4294967295u % 32u), u_input.a) | vec3<i32>(~abs(arg_0.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.a), vec3<i32>(arg_0.a.x, arg_0.d, -36233i)), arg_0.a.x), vec2<u32>(var_0.a, ~1u), arg_0.c, abs(-reverseBits(i32(-1i) * -2147483647i)), select(false, any(vec3<bool>(false, false, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.b, arg_0.b.x), vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u)) <= 28095u) || (any(!global0.yzw) & true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_i32(-(~(-_wgslsmith_mod_i32(-16949i, u_input.a))), firstTrailingBit(max(~0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(20900i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, 2147483647i, -2502i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, 3589i), vec4<i32>(77786i, u_input.a, u_input.a, u_input.a))))));
    var var_0 = func_5(Struct_2(max(~vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(~(-53723i), -2147483647i, ~u_input.a)), vec2<u32>(0u, firstTrailingBit(18840u)), _wgslsmith_f_op_vec2_f32(func_4(~u_input.a, -u_input.a & u_input.a, vec3<i32>(-7531i, func_1(vec2<bool>(global0.x, global4[_wgslsmith_index_u32(1u, 22u)])), -u_input.a))), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-19384i, 37926i, u_input.a, -3004i), vec4<i32>(-44172i, 77161i, 15292i, 0i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-19491i, u_input.a, -37069i, -24394i), vec4<i32>(u_input.a, -36509i, 1i, u_input.a), vec4<i32>(2147483647i, -28781i, -34766i, u_input.a))), global0.x | false), _wgslsmith_f_op_f32(-1f));
    var_0 = Struct_2(select(~(-(~vec3<i32>(var_0.a.x, 41720i, 1i))), _wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, -1i, u_input.a), vec3<i32>(var_0.d, u_input.a, 12453i)), _wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(1944i, -24713i, u_input.a)), var_0.b.x <= var_0.b.x), vec3<i32>(min(-1i, u_input.a), ~u_input.a, ~(-2147483647i))), false), var_0.b, _wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(839f, -403f))), -49966i, any(vec3<bool>(var_0.e, true, all(!vec4<bool>(false, var_0.e, false, global0.x)))));
    var var_1 = Struct_1(~(var_0.b.x ^ var_0.b.x), 0u);
    let var_2 = var_0.b.x;
    let var_3 = ~var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.c - var_0.c));
}

