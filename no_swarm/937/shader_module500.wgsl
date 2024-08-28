struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<Struct_2, 21>();
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = select(select(vec2<bool>(true, true), !vec2<bool>(722f <= var_0.b.b.x, all(vec3<bool>(true, false, false))), 946f >= var_0.b.b.x), vec2<bool>(true, true), true);
    global0 = array<Struct_2, 21>();
    return countOneBits((~vec3<u32>(u_input.c, 4294967295u, 66802u) | ((vec3<u32>(1u, u_input.c, var_0.b.a) | vec3<u32>(0u, 5329u, var_0.d)) | ~vec3<u32>(u_input.c, 45996u, var_0.d))) >> (~(~(~vec3<u32>(4294967295u, 4294967295u, var_0.b.a))) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = abs(_wgslsmith_mod_vec3_u32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 346f)), Struct_2(42258u, vec3<f32>(arg_0, arg_0, arg_0)), vec4<i32>(16023i, -1i, 13723i, 0i), 0u, ~(-10200i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1493f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(708f, arg_0, 3522f, arg_0))))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(arg_1, u_input.c, 1u), vec3<u32>(4294967295u, arg_1, 7410u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(u_input.c, arg_1, u_input.b.x))), ~(vec3<u32>(u_input.c, 1u, arg_1) ^ vec3<u32>(0u, 86123u, 4294967295u)))));
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec2_u32(var_0.yx, var_0.yy)) << (~var_0.x % 32u), 21u)];
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec4<bool>(true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.e, arg_0.c.x), min(vec3<i32>(0i, arg_0.c.x, -12111i), vec3<i32>(-1i, 0i, 0i))) != (firstTrailingBit(-1i) & _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.e, -11086i, arg_0.e), 0i)), false, false || select(all(vec2<bool>(true, true)), (arg_0.e < arg_0.e) == all(vec4<bool>(false, true, false, true)), true));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(-194f)), _wgslsmith_f_op_f32(f32(-1f) * -329f), 871f), _wgslsmith_f_op_vec4_f32(round(arg_0.a)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(675f, 974f, var_1.a.x, var_1.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(146f, 450f, var_1.b.x, 548f), var_1.b))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.b.x, arg_0.b.b.x, var_1.b.x, -661f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(round(664f))) * var_1.b)), func_2(2916f, ~(~0u) | (firstTrailingBit(46141u) & abs(15223u)), vec2<bool>(var_0.x, var_0.x)), arg_0.c, arg_0.b.a, arg_0.c.x);
    var var_3 = select(_wgslsmith_div_i32(var_2.e, var_2.c.x), ~(select(_wgslsmith_mod_i32(arg_0.c.x, 4586i), 1i, var_0.x) << (var_2.d % 32u)), true);
    var_2 = arg_0;
    return Struct_3(vec4<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))), var_1.b.x), global0[_wgslsmith_index_u32(~1u, 21u)], vec4<i32>(arg_0.e, -20658i, firstLeadingBit(arg_0.c.x), i32(-1i) * 0i), u_input.b.x, -max(1i, var_2.c.x));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_2.b.x, -884f, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1407f, -1292f, -504f)))), func_2(-1430f, arg_2.a, vec2<bool>(!arg_3.x, select(false, arg_3.x, true))), select(~select(vec4<i32>(-13704i, -14964i, arg_0, arg_0), vec4<i32>(2147483647i, -19796i, arg_0, arg_0), vec4<bool>(false, true, true, true)), ~(vec4<i32>(2147483647i, arg_0, 1i, arg_0) >> (vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b.x) % vec4<u32>(32u))), select(!vec4<bool>(true, arg_3.x, arg_3.x, false), select(vec4<bool>(arg_3.x, false, false, arg_3.x), vec4<bool>(true, true, arg_3.x, true), vec4<bool>(arg_3.x, false, arg_3.x, false)), arg_3.x || arg_3.x)), firstTrailingBit(select(1u, u_input.b.x, any(arg_3))), 1i));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(168f)), _wgslsmith_f_op_f32(ceil(640f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(555f, 1037f) * _wgslsmith_f_op_f32(1000f - arg_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1762f, arg_2.b.x, 1137f)))));
    let var_2 = vec4<u32>(~(~u_input.c >> (~(~u_input.c) % 32u)), ~4294967295u, var_0.b.a, 39902u);
    global0 = array<Struct_2, 21>();
    var var_3 = 4294967295u >> (u_input.b.x % 32u);
    return ~(~select(~(var_2.xwx | var_2.xzy), ~abs(var_2.xzw), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = -1380f;
    let var_2 = select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(0u, 16380u, 75860u)), vec3<u32>(44176u, var_0, _wgslsmith_div_u32(var_0, var_0))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(25935u, 4294967295u, 84249u), func_1(-1i, vec2<f32>(-1358f, 1076f), global0[_wgslsmith_index_u32(21927u, 21u)], vec3<bool>(false, true, false)))), select(_wgslsmith_div_vec3_u32(vec3<u32>(~var_0, 27160u ^ var_0, var_0), ~vec3<u32>(var_0, var_0, 1u)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0, var_0, 9514u), vec3<u32>(u_input.a, 0u, 34240u)), false), vec3<bool>(true, true, true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-358f, -1446f, var_1), vec3<f32>(var_1, 1423f, -1008f))), vec3<f32>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec4_f32(-func_4(Struct_3(vec4<f32>(-617f, -885f, var_1, 491f), func_2(var_1, var_2.x, vec2<bool>(true, false)), max(vec4<i32>(-33890i, 48081i, 0i, -13985i), vec4<i32>(0i, 1i, 36528i, -1i)), var_2.x, -10511i >> (u_input.b.x % 32u))).a));
    global0 = array<Struct_2, 21>();
    let var_4 = u_input.a;
    let var_5 = func_1(-func_4(func_4(Struct_3(vec4<f32>(1128f, var_1, -1647f, var_1), global0[_wgslsmith_index_u32(17971u, 21u)], vec4<i32>(-33050i, 1i, -1998i, 0i), u_input.c, -55430i))).e, _wgslsmith_f_op_vec2_f32(var_3.b.wz + var_3.b.wy), global0[_wgslsmith_index_u32(0u, 21u)], vec3<bool>(var_2.x <= ~var_0, select(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), !(var_3.a.x == var_1), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), true)).x;
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(14990i, -2147483647i), vec2<i32>(-17216i, 1i)), -vec2<i32>(-22322i, -29301i)) & _wgslsmith_dot_vec2_i32(-vec2<i32>(-1387i, 13294i), vec2<i32>(1i, -27828i))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 4294967295u, u_input.c, var_4), vec4<u32>(1u, 4294967295u, var_2.x, 31924u)), ~vec4<u32>(0u, 28982u, 64065u, var_0)) ^ vec4<u32>(~var_5, countOneBits(1u), 1u, countOneBits(var_4)), vec4<u32>(var_4, abs(var_5), 67724u, u_input.c) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, 27126u, 1u), vec4<u32>(var_5, var_2.x, u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, ~var_2.yy), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(31150u, 86969u, var_5)))), var_2.x);
}

