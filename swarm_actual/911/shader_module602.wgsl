struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    let var_0 = !((!all(vec3<bool>(true, true, false)) || any(vec2<bool>(true, true))) || all(vec4<bool>(true, true, true, false)));
    let var_1 = Struct_2(u_input.a.x);
    return vec2<bool>(var_0, var_0);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> u32 {
    global0 = array<vec3<f32>, 16>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(arg_0.c.a << (arg_0.c.a % 32u), arg_0.b.x), max(min(9769u, _wgslsmith_mod_u32(arg_0.b.x, u_input.a.x)), ~_wgslsmith_sub_u32(1u, u_input.a.x)), 52038u) ^ ~u_input.a.zxx;
    let var_1 = ~firstLeadingBit(~(~vec4<u32>(arg_0.b.x, var_0.x, arg_0.c.a, u_input.a.x)));
    var var_2 = select(select(!select(!vec4<bool>(false, arg_0.e.x, false, arg_0.e.x), vec4<bool>(arg_0.e.x, true, false, arg_0.e.x), true), select(vec4<bool>(arg_0.e.x, arg_0.d.c.d < arg_0.d.a, !arg_0.e.x, !arg_0.e.x), vec4<bool>(select(arg_0.e.x, arg_0.e.x, false), true, false, var_1.x == var_1.x), (1i | arg_0.d.c.c.x) < arg_1), true), !select(select(vec4<bool>(arg_0.e.x, arg_0.e.x, false, true), !vec4<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x), false), !(!vec4<bool>(arg_0.e.x, arg_0.e.x, false, false)), select(true, !arg_0.e.x, !arg_0.e.x)), vec4<bool>(all(vec4<bool>(false, false, true, true)) != all(func_3(29150i)), all(!select(arg_0.e, arg_0.e, vec2<bool>(true, arg_0.e.x))), any(vec2<bool>(true, false || arg_0.e.x)), true));
    var var_3 = arg_0.d.c;
    return ~4294967295u & _wgslsmith_add_u32(arg_0.b.x, 0u);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_4(arg_0.d, vec2<u32>(arg_0.c.a, ~(~func_2(arg_0, arg_0.d.c.a))), Struct_2(arg_0.c.a), Struct_3(-1000f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + vec2<f32>(716f, arg_1.a)))), Struct_1(~arg_1.c.a, -2147483647i, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.a.c.a, 2147483647i, arg_0.d.c.a), ~arg_1.c.c), _wgslsmith_f_op_f32(step(521f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_0.e);
    global0 = array<vec3<f32>, 16>();
    let var_1 = 46457u;
    var var_2 = arg_1.c;
    global0 = array<vec3<f32>, 16>();
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = abs(u_input.a.x ^ (~(~u_input.a.x) << (1u % 32u)));
    var var_1 = false;
    var var_2 = ~_wgslsmith_div_vec3_u32(u_input.a.yzx, abs(vec3<u32>(arg_1.b.x | arg_1.c.a, 1u, 1u ^ u_input.a.x)));
    var var_3 = arg_1.a.b.x;
    var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~(~var_2.yy)), vec2<u32>(var_2.x, var_2.x)), arg_1.b.x);
    return Struct_2(~10978u);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = -20830i;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(826f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, _wgslsmith_f_op_f32(step(462f, -785f)))), Struct_1(var_0, 0i, select(vec4<i32>(var_0, -1i, var_0, var_0), abs(vec4<i32>(var_0, var_0, 75662i, 39671i)), vec4<bool>(arg_1, arg_1, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f - 1000f) * _wgslsmith_f_op_f32(select(241f, -1000f, arg_1))))), _wgslsmith_mult_vec2_u32(u_input.a.yw, ~vec2<u32>(u_input.a.x, u_input.a.x)), arg_0, func_1(Struct_4(func_1(Struct_4(Struct_3(-951f, vec2<f32>(-1225f, -288f), Struct_1(-1i, 47904i, vec4<i32>(-91175i, -22720i, var_0, var_0), 1372f)), vec2<u32>(4294967295u, u_input.a.x), arg_0, Struct_3(1393f, vec2<f32>(792f, 1894f), Struct_1(-41037i, -23557i, vec4<i32>(-2147483647i, 23278i, var_0, var_0), -399f)), vec2<bool>(arg_1, arg_1)), Struct_3(512f, vec2<f32>(832f, 709f), Struct_1(0i, 0i, vec4<i32>(-8937i, 2147483647i, -29857i, -17901i), 1878f))), _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.a.yz), ~u_input.a.xz), func_4(Struct_1(var_0, var_0, vec4<i32>(0i, 0i, var_0, -26259i), -2453f), Struct_4(Struct_3(-443f, vec2<f32>(-790f, -1208f), Struct_1(-1i, 31494i, vec4<i32>(0i, 17591i, -2147483647i, -1i), -1057f)), u_input.a.xw, Struct_2(33005u), Struct_3(-313f, vec2<f32>(1026f, 1796f), Struct_1(17260i, -26200i, vec4<i32>(var_0, -1416i, var_0, var_0), -559f)), vec2<bool>(arg_1, true)), vec4<bool>(true, false, true, arg_1)), func_1(Struct_4(Struct_3(-905f, vec2<f32>(-788f, 712f), Struct_1(0i, var_0, vec4<i32>(var_0, 14592i, -9370i, var_0), 2161f)), vec2<u32>(u_input.a.x, 37224u), arg_0, Struct_3(-755f, vec2<f32>(-1000f, -1311f), Struct_1(var_0, var_0, vec4<i32>(0i, var_0, -2147483647i, var_0), 1482f)), vec2<bool>(true, arg_1)), func_1(Struct_4(Struct_3(1000f, vec2<f32>(-1195f, 421f), Struct_1(var_0, -10245i, vec4<i32>(-43807i, var_0, -1i, var_0), 1881f)), u_input.a.zx, Struct_2(u_input.a.x), Struct_3(1125f, vec2<f32>(-719f, -1000f), Struct_1(-2147483647i, -5658i, vec4<i32>(0i, var_0, var_0, var_0), -1831f)), vec2<bool>(arg_1, arg_1)), Struct_3(-562f, vec2<f32>(321f, -1355f), Struct_1(-32630i, -23629i, vec4<i32>(-3644i, 14607i, 1435i, 21432i), 430f)))), select(!vec2<bool>(arg_1, arg_1), func_3(var_0), arg_1)), Struct_3(_wgslsmith_f_op_f32(-1f), vec2<f32>(_wgslsmith_div_f32(-459f, 866f), _wgslsmith_f_op_f32(trunc(149f))), func_1(Struct_4(Struct_3(660f, vec2<f32>(1387f, -482f), Struct_1(var_0, -1i, vec4<i32>(var_0, var_0, 2147483647i, -46264i), -266f)), vec2<u32>(4294967295u, arg_0.a), arg_0, Struct_3(-911f, vec2<f32>(-1000f, 878f), Struct_1(11113i, var_0, vec4<i32>(2147483647i, var_0, var_0, var_0), 347f)), vec2<bool>(false, false)), Struct_3(234f, vec2<f32>(-2084f, 728f), Struct_1(-40058i, var_0, vec4<i32>(var_0, 2147483647i, var_0, 5943i), -331f))).c)), !vec2<bool>(true, arg_1));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a.b))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.b, var_1.a.b))))));
    var var_3 = Struct_4(var_1.a, ~u_input.a.zx, Struct_2(_wgslsmith_dot_vec3_u32(min(u_input.a.xzx, ~u_input.a.xxx), ~vec3<u32>(1561u, 51575u, 72863u))), func_1(var_1, var_1.d), var_1.e);
    var var_4 = -1i;
    return 5888i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    var var_0 = ~func_5(func_4(Struct_1(-14478i, 2147483647i, -vec4<i32>(16045i, 0i, -24745i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1411f)), Struct_4(func_1(Struct_4(Struct_3(1356f, vec2<f32>(-3225f, -1000f), Struct_1(-28933i, 2147483647i, vec4<i32>(2147483647i, -40631i, -27869i, 0i), 969f)), u_input.a.wx, Struct_2(22482u), Struct_3(934f, vec2<f32>(724f, 719f), Struct_1(1i, 4311i, vec4<i32>(-1i, 1i, -1i, 1309i), 1570f)), vec2<bool>(false, true)), Struct_3(-430f, vec2<f32>(1154f, -796f), Struct_1(1i, 0i, vec4<i32>(-2147483647i, -10325i, -8381i, 7978i), 456f))), _wgslsmith_mult_vec2_u32(vec2<u32>(11886u, 68664u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_2(u_input.a.x), Struct_3(640f, vec2<f32>(-1156f, -109f), Struct_1(44366i, -9408i, vec4<i32>(28893i, 2147483647i, 29043i, 0i), -1626f)), func_3(-37693i)), vec4<bool>(true, true, true, true)), select(_wgslsmith_clamp_i32(1i, 6115i, 0i) < ~(-4452i), false, all(vec2<bool>(true, true))));
    var var_1 = false;
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2344f * -408f), _wgslsmith_f_op_f32(f32(-1f) * -110f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-324f, -152f), vec2<f32>(1992f, 1173f)))))));
    var_1 = (var_2.x >= -1672f) || any(vec2<bool>(true, true));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~func_1(Struct_4(Struct_3(var_2.x, vec2<f32>(var_2.x, var_2.x), Struct_1(-1i, 1i, vec4<i32>(-2147483647i, -2147483647i, 9185i, 1i), var_2.x)), vec2<u32>(u_input.a.x, u_input.a.x), Struct_2(u_input.a.x), Struct_3(-269f, vec2<f32>(var_2.x, var_2.x), Struct_1(-1i, -2147483647i, vec4<i32>(2147483647i, -63841i, 1i, 3199i), 415f)), vec2<bool>(false, true)), func_1(Struct_4(Struct_3(-1980f, vec2<f32>(-2137f, var_2.x), Struct_1(3409i, 57738i, vec4<i32>(0i, -16971i, 0i, -2147483647i), -800f)), vec2<u32>(4294967295u, u_input.a.x), Struct_2(u_input.a.x), Struct_3(323f, vec2<f32>(1324f, var_2.x), Struct_1(2147483647i, -2147483647i, vec4<i32>(-39281i, 16087i, 75931i, -2147483647i), var_2.x)), vec2<bool>(false, false)), Struct_3(1793f, vec2<f32>(-385f, -173f), Struct_1(4996i, -3653i, vec4<i32>(1i, 0i, -23203i, -8626i), 232f)))).c.c, func_1(Struct_4(Struct_3(1471f, vec2<f32>(-1000f, -1237f), Struct_1(20254i, -1i, vec4<i32>(-34741i, -5898i, -1i, 29071i), var_2.x)), firstTrailingBit(u_input.a.zy), func_4(Struct_1(-63995i, 0i, vec4<i32>(-14436i, 1i, -1i, -2147483647i), 111f), Struct_4(Struct_3(var_2.x, vec2<f32>(var_2.x, var_2.x), Struct_1(-56849i, 14735i, vec4<i32>(22267i, 1i, 1554i, 0i), var_2.x)), u_input.a.xy, Struct_2(0u), Struct_3(-1179f, vec2<f32>(var_2.x, -393f), Struct_1(1i, 0i, vec4<i32>(0i, 0i, 0i, 2147483647i), 125f)), vec2<bool>(true, false)), vec4<bool>(true, false, false, true)), Struct_3(468f, vec2<f32>(1913f, -758f), Struct_1(-13742i, 0i, vec4<i32>(-23514i, -26460i, 1i, -2147483647i), var_2.x)), vec2<bool>(true, true)), Struct_3(_wgslsmith_f_op_f32(var_2.x * 2508f), func_1(Struct_4(Struct_3(-179f, vec2<f32>(1008f, var_2.x), Struct_1(1i, 6719i, vec4<i32>(-2147483647i, -4193i, 11788i, 21624i), var_2.x)), u_input.a.xy, Struct_2(98996u), Struct_3(var_2.x, vec2<f32>(var_2.x, var_2.x), Struct_1(2147483647i, -1i, vec4<i32>(-1i, 26944i, 1i, 0i), var_2.x)), vec2<bool>(false, true)), Struct_3(var_2.x, vec2<f32>(-696f, var_2.x), Struct_1(41650i, -66327i, vec4<i32>(0i, -14175i, 15498i, -2147483647i), 678f))).b, func_1(Struct_4(Struct_3(-671f, vec2<f32>(-738f, -198f), Struct_1(1i, -2147483647i, vec4<i32>(26823i, -1i, -36099i, 47409i), -160f)), vec2<u32>(4294967295u, 4294967295u), Struct_2(u_input.a.x), Struct_3(var_2.x, vec2<f32>(var_2.x, -387f), Struct_1(0i, -13701i, vec4<i32>(-1i, -2147483647i, 42352i, -1i), var_2.x)), vec2<bool>(false, false)), Struct_3(188f, vec2<f32>(var_2.x, var_2.x), Struct_1(26192i, 20567i, vec4<i32>(11563i, 43544i, -55328i, 20112i), -1000f))).c)).c.c));
}

