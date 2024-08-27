struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(1i, -7117i), vec4<i32>(-1i, 2147483647i, 15256i, 45484i), false, 1045f), -1i, vec4<f32>(509f, -789f, 1646f, -1000f), -1842f), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(40448i, 19454i), vec4<i32>(-71121i, 1i, -7685i, i32(-2147483648)), true, 561f), -1i, vec4<f32>(-137f, 1000f, -1142f, 786f), 1122f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-17602i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 54205i, -20957i), false, -505f), -27409i, vec4<f32>(-1041f, 223f, -621f, 818f), 225f), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-77637i, -12027i), vec4<i32>(19624i, 16770i, 29056i, 12536i), true, 988f), i32(-2147483648), vec4<f32>(814f, 2073f, 1000f, 203f), 635f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(28482i, -28475i), vec4<i32>(-26984i, 2147483647i, 2147483647i, -1i), true, -1309f), 29132i, vec4<f32>(-2064f, 521f, 1501f, -1840f), 681f), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(1i, -1i), vec4<i32>(9879i, -61511i, 2147483647i, 24871i), true, -952f), 2147483647i, vec4<f32>(-1000f, 1521f, -1169f, 1367f), -1000f), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-54316i, 0i), vec4<i32>(-1i, -54883i, -1i, -1i), false, -992f), 2147483647i, vec4<f32>(-810f, -216f, 1000f, -331f), 732f), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(38008i, 24675i), vec4<i32>(22308i, 2147483647i, -45036i, 2147483647i), false, -103f), -1i, vec4<f32>(361f, 1640f, -826f, -1068f), -812f), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-8652i, 85i), vec4<i32>(22702i, -1i, -14876i, -1i), false, -1221f), 14603i, vec4<f32>(-531f, -881f, -757f, 502f), 1281f), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(1i, 12645i), vec4<i32>(2147483647i, 0i, 2147483647i, i32(-2147483648)), false, 903f), -10478i, vec4<f32>(-1773f, 270f, 1000f, 1196f), 1000f), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(1i, 2147483647i), vec4<i32>(-40660i, 7713i, 1i, -104997i), false, -158f), 1i, vec4<f32>(-2604f, 825f, 411f, -780f), -521f), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, -1508i), vec4<i32>(10515i, 8080i, 2147483647i, 2853i), false, 397f), 0i, vec4<f32>(-109f, 632f, 1360f, -289f), -220f), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), -45832i), vec4<i32>(0i, -16133i, -1i, -24524i), false, 1006f), 23064i, vec4<f32>(688f, -1212f, 1000f, -1000f), -898f));

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(-5676i, -11938i, 41658i, -20761i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> vec4<bool> {
    global1 = array<Struct_2, 13>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_1 = -_wgslsmith_sub_i32(-4926i, ~(-15332i)) ^ u_input.a;
    var var_2 = _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(countOneBits(1u), 29u)], _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(arg_1, 29u)]));
    global3 = firstLeadingBit(_wgslsmith_mult_vec4_i32(firstLeadingBit(var_0.a.c), vec4<i32>(-var_0.a.c.x, _wgslsmith_clamp_i32(arg_0.b.x, var_1, -19236i), var_1, arg_0.c.x)) >> ((max(~vec4<u32>(arg_1, 1u, u_input.c, 0u), vec4<u32>(1u, 67303u, arg_1, arg_1) | vec4<u32>(4294967295u, 4294967295u, 27369u, 37523u)) | _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 11428u, 3824u, 4294967295u), ~vec4<u32>(arg_1, arg_1, u_input.c, arg_1))) % vec4<u32>(32u)));
    return arg_0.a;
}

fn func_3() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1311f, -553f, -1090f, 153f)), vec4<f32>(217f, 168f, 1152f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, _wgslsmith_div_f32(110f, -987f), _wgslsmith_f_op_f32(-530f - 927f), -712f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global2 = ~(~(~(~(~u_input.c))));
    global3 = vec4<i32>(~(-1i), 80084i, max(min(countOneBits(arg_1.x), abs(_wgslsmith_mult_i32(global3.x, arg_1.x))), -2147483647i), abs(6587i));
    global1 = array<Struct_2, 13>();
    global0 = array<vec2<u32>, 29>();
    let var_0 = ~reverseBits(vec3<u32>(1u, abs(32832u), 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1741f, arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -151f)), any(vec2<bool>(true, false)))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<u32>, 29>();
    global1 = array<Struct_2, 13>();
    var var_0 = Struct_1(arg_0.a.a, arg_0.a.b, -arg_0.a.c, (~_wgslsmith_add_i32(arg_0.b, global3.x) | -2147483647i) < u_input.b, arg_0.c.x);
    let var_1 = arg_0.a.a;
    var var_2 = _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c ^ _wgslsmith_mult_u32(u_input.c, 1u)) >> (((4294967295u ^ u_input.c) << (72594u % 32u)) % 32u), 29u)], arg_0.a.c, ~u_input.c, _wgslsmith_f_op_vec4_f32(func_3())));
    return Struct_1(vec4<bool>(!(!var_0.a.x) && !(!arg_0.a.d), all(!var_1.wz), all(var_0.a.zx), !any(!var_1.yx)), vec2<i32>(0i, firstLeadingBit(u_input.b)), vec4<i32>(-arg_0.b, arg_0.b, -_wgslsmith_add_i32(~(-2147483647i), global3.x), var_0.c.x), false, -382f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -980f;
    let var_1 = func_2(Struct_2(Struct_1(!func_1(Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, u_input.a), vec4<i32>(global3.x, -1i, -27895i, u_input.a), false, -597f), 60791u, vec3<f32>(-783f, -731f, var_0)), select(global3.wx, global3.zz, true) & -global3.yw, abs(-vec4<i32>(-3671i, global3.x, u_input.b, global3.x)), true, _wgslsmith_f_op_f32(198f * -610f)), u_input.b, vec4<f32>(437f, 1464f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 296f), _wgslsmith_f_op_f32(f32(-1f) * -1518f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -595f))), _wgslsmith_f_op_f32(f32(-1f) * -318f)));
    let var_2 = var_1;
    let var_3 = (~select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(27832u, u_input.c, 21394u) >> (vec3<u32>(24835u, 11455u, u_input.c) % vec3<u32>(32u)), select(var_2.a.zxy, vec3<bool>(var_1.d, true, var_2.d), vec3<bool>(var_2.d, var_2.d, false))) & vec3<u32>(37819u, firstLeadingBit(~u_input.c), select(u_input.c, _wgslsmith_sub_u32(0u, u_input.c), true))) ^ vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.c))), _wgslsmith_div_u32(~u_input.c, 41069u), 4294967295u);
    let var_4 = Struct_1(vec4<bool>(true, !(false & (u_input.a >= u_input.a)), var_2.a.x, false), _wgslsmith_mod_vec2_i32(global3.xy, _wgslsmith_add_vec2_i32(min(~var_2.b, select(var_1.c.zz, vec2<i32>(-1i, -15743i), false)), select(vec2<i32>(var_1.b.x, 2147483647i) << (global0[_wgslsmith_index_u32(45980u, 29u)] % vec2<u32>(32u)), ~var_1.c.xy, true))), vec4<i32>(1i, _wgslsmith_mod_i32(u_input.b, -2861i & global3.x) << (28484u % 32u), ~(~u_input.a), 1i), true, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-186f, 644f, 175f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)) - 128f), func_2(Struct_2(func_2(Struct_2(var_1, -2147483647i, vec4<f32>(var_1.e, var_0, -581f, var_2.e), -167f)), _wgslsmith_clamp_i32(var_4.b.x, global3.x, u_input.b), vec4<f32>(var_1.e, -396f, var_0, var_2.e), _wgslsmith_f_op_f32(var_0 * var_0))).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e)) * var_1.e)));
}

