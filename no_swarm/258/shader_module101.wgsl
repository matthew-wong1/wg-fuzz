struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = ~(u_input.a.yx >> (u_input.a.yz % vec2<u32>(32u)));
    return false;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~u_input.a.x, ~(~(~0u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.www, vec3<f32>(-718f, 572f, 105f)), arg_2.zzz)));
    let var_2 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, var_0, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, u_input.a.x, 94004u), vec4<u32>(var_0, var_0, var_0, 1u))), 54176u, ~4294967295u) & u_input.a, vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_0), 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, 0u, 5695u), arg_1.yxw), firstTrailingBit(u_input.a)), select(arg_1.ywz, vec3<u32>(20589u, 49035u, 33726u), vec3<bool>(true, true, true))), _wgslsmith_sub_u32(0u, u_input.a.x)), !all(vec4<bool>(func_3(u_input.a.x), func_3(0u), true, true)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.x));
    var var_4 = all(vec2<bool>(any(vec4<bool>(true, true, true, true)), firstTrailingBit(0u) < reverseBits(u_input.a.x)));
    return Struct_2(_wgslsmith_f_op_f32(min(var_1.x, 456f)), Struct_1(1396f), firstTrailingBit(_wgslsmith_dot_vec3_u32(~(vec3<u32>(7211u, 1u, 0u) ^ vec3<u32>(var_2.x, var_2.x, var_0)), var_2)), Struct_1(170f), true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = all(!(!vec2<bool>(all(vec4<bool>(false, false, false, false)), true)));
    let var_1 = Struct_4(-(u_input.b.x | reverseBits(i32(-1i) * -45108i)));
    var_0 = false;
    var_0 = arg_0.c <= 46640u;
    let var_2 = vec3<i32>(-max(6937i, -2147483647i << ((u_input.a.x & 0u) % 32u)), -1i, 2147483647i);
    return Struct_1(-983f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = firstTrailingBit(arg_2);
    var var_1 = u_input.a;
    var var_2 = -(-(u_input.b.x ^ select(u_input.b.x, u_input.b.x, arg_1.x)) << (~(62134u | ~var_1.x) % 32u));
    var_1 = ~select(vec3<u32>(max(arg_2, var_1.x << (4294967295u % 32u)), 53746u, _wgslsmith_dot_vec3_u32(u_input.a >> (vec3<u32>(1020u, u_input.a.x, var_0) % vec3<u32>(32u)), vec3<u32>(36031u, 0u, 59049u))), vec3<u32>(1u, func_2(Struct_4(u_input.b.x), min(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<u32>(arg_2, 46798u, 0u, u_input.a.x)), vec4<f32>(831f, -788f, arg_0.a, arg_0.a)).c, arg_2), arg_1.x);
    var_1 = u_input.a;
    return false;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = -1880f;
    let var_1 = ~vec3<i32>(55307i, -(~(-u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(17716i, -2147483647i, -16389i, u_input.b.x), vec4<i32>(u_input.b.x, -28394i, u_input.b.x, u_input.b.x))), _wgslsmith_sub_i32(-32410i, -843i)));
    var var_2 = Struct_4(-(~_wgslsmith_mult_i32(u_input.b.x, var_1.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1706f * arg_0.b.a), arg_0.d.a)), 1013f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.b.a * _wgslsmith_f_op_f32(arg_0.d.a * var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, arg_0.b.a, var_0, 1653f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.a, var_0, var_0, 2248f)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(round(460f)), _wgslsmith_f_op_f32(floor(arg_0.d.a)), 851f))), -(0i & var_2.a) < var_2.a)));
    var var_4 = Struct_4(-_wgslsmith_div_i32(~_wgslsmith_add_i32(var_2.a, var_1.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(3776i, var_2.a, -2147483647i), vec3<i32>(5724i, var_2.a, u_input.b.x)), _wgslsmith_dot_vec3_i32(var_1, var_1))));
    return Struct_3(var_1.x >> (arg_0.c % 32u), var_1.yx);
}

fn func_1() -> Struct_3 {
    return func_6(Struct_2(-263f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1874f)), u_input.a.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-586f * -1556f), _wgslsmith_f_op_f32(-1427f - -1465f))), true), func_5(func_4(func_2(Struct_4(-1i), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1499f, -1249f, -445f, -1224f))), Struct_1(-1345f)), !vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec2<bool>(true, false))), 0u | min(countOneBits(u_input.a.x), 0u), false), (u_input.b.x & ~0i) >= 0i);
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    return func_6(func_2(Struct_4(~firstLeadingBit(2147483647i)), select(vec4<u32>(~1u, ~8951u, firstLeadingBit(u_input.a.x), 1u >> (1u % 32u)), reverseBits(vec4<u32>(1u, 4294967295u, 1u, u_input.a.x)), arg_3.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(573f - arg_2), 320f, arg_2, _wgslsmith_div_f32(arg_2, -1467f))))), arg_3.x, false);
}

fn func_8(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = -992f;
    var var_1 = Struct_4(7661i);
    var var_2 = Struct_3(select(-20601i, ~_wgslsmith_mod_i32(select(var_1.a, arg_0.a, false), -1390i), u_input.a.x < _wgslsmith_mult_u32(arg_2.x, _wgslsmith_clamp_u32(1u, 41394u, arg_2.x))), _wgslsmith_mult_vec2_i32(-func_6(func_2(Struct_4(u_input.b.x), vec4<u32>(u_input.a.x, arg_2.x, 0u, arg_2.x), vec4<f32>(arg_1, 351f, 1964f, -207f)), any(vec4<bool>(false, false, true, false)), true).b, ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 12901i), vec2<i32>(-5037i, 2147483647i)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(314f)) + arg_1);
    let var_3 = ~reverseBits(func_2(Struct_4(min(arg_0.b.x, u_input.b.x)), ~(~vec4<u32>(1613u, u_input.a.x, 11518u, 1u)), vec4<f32>(272f, _wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(arg_1 - arg_1), -1486f)).c);
    return Struct_4(func_7(_wgslsmith_mod_i32(func_6(Struct_2(arg_1, Struct_1(arg_1), u_input.a.x, Struct_1(-839f), false), true, false).b.x, ~(-12439i)), Struct_3(-666i >> (u_input.a.x % 32u), vec2<i32>(-1i, var_2.b.x)), arg_1, vec3<bool>(true, true, true)).a >> (7288u % 32u));
}

fn func_9(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = select(vec4<bool>(-1000f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1002f)), _wgslsmith_f_op_f32(-arg_3.x), -1i == arg_1.a)), func_2(Struct_4(_wgslsmith_add_i32(arg_2.x, 1i)), ~(vec4<u32>(1u, u_input.a.x, u_input.a.x, 825u) ^ vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.x, -1488f, arg_3.x, 869f)))).e, func_2(arg_0, vec4<u32>(~69482u, 10442u, ~39956u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), vec4<f32>(420f, -1161f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -869f))).e, (u_input.a.x ^ _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) < 0u), vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), true, true, true), vec4<bool>(false, true, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(arg_3.x + -497f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-467f + arg_3.x), arg_3.x)), true));
    var var_1 = (_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), 4294967295u) | u_input.a.x) <= (6946u & _wgslsmith_mod_u32(max(0u, u_input.a.x) << (66044u % 32u), 39006u));
    var_1 = var_0.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(round(693f))), Struct_1(arg_3.x), 1u, func_4(func_2(Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, arg_0.a), arg_2.wwx)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 38484u, 20162u) ^ vec4<u32>(0u, 1u, 103411u, 34376u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(arg_3))))), Struct_1(arg_3.x)), var_0.x);
    var_1 = func_2(func_8(Struct_3(1i, u_input.b ^ arg_2.zw), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.b.a)), arg_3.x), true)), _wgslsmith_div_vec3_u32(u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(select(vec4<u32>(~1u, 33715u, var_2.c, ~1u), vec4<u32>(~0u, max(0u, u_input.a.x), reverseBits(u_input.a.x), var_2.c), true), vec4<u32>(14608u, 49239u, min(14737u, 1u), ~u_input.a.x) | vec4<u32>(_wgslsmith_div_u32(var_2.c, var_2.c), ~var_2.c, _wgslsmith_sub_u32(0u, 0u), ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), 217f, _wgslsmith_f_op_f32(select(873f, _wgslsmith_f_op_f32(arg_3.x * 1541f), var_2.e == var_0.x)), 1f))).e;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -251f, u_input.a.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -888f), _wgslsmith_div_f32(756f, 155f))), func_9(func_8(func_7(countOneBits(u_input.b.x), func_1(), -646f, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)), select(min(u_input.a, u_input.a), select(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(38323u, u_input.a.x, 53934u), true), true)), Struct_4(min(_wgslsmith_sub_i32(5151i, 1i), i32(-1i) * -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i << (u_input.a.x % 32u), countOneBits(u_input.b.x), u_input.b.x | 2147483647i, -2147483647i), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -11202i, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1401f, -158f, 1045f, _wgslsmith_div_f32(131f, 251f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_div_f32(-255f, -1016f), _wgslsmith_f_op_f32(-1055f * 782f), _wgslsmith_f_op_f32(floor(-312f))))));
}

