struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 28661i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    var var_0 = arg_0.c.x;
    let var_1 = vec3<i32>(reverseBits(countOneBits(arg_0.a.a)), -select(arg_0.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_0.a.a, arg_0.a.a) << (u_input.e % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.a, 1i, arg_0.a.a), vec3<i32>(arg_0.a.a, 0i, -37008i))), true), max(_wgslsmith_mult_i32(1i, abs(-u_input.c)), -max(0i, ~(-2147483647i))));
    var var_2 = firstTrailingBit(1u) >> (arg_1 % 32u);
    let var_3 = Struct_1(arg_0.a.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-176f)));
    return !vec4<bool>(-979f == arg_0.b.x, min(abs(0u), ~48894u) < abs(select(49958u, arg_1, true)), all(vec4<bool>(true, true, true, true)), true);
}

fn func_4(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_mod_i32(u_input.c, u_input.c);
    var var_1 = vec3<bool>(false, !arg_0.x, !any(!vec3<bool>(arg_0.x, arg_0.x, false)));
    global0 = -7533i;
    global0 = 17859i;
    let var_2 = all(select(arg_0.zx, !arg_0.yy, arg_0.wy));
    return (_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0, var_0), vec2<i32>(var_0, u_input.c), var_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.c) >> (vec2<u32>(u_input.d.x, u_input.b.x) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(u_input.c, var_0)))) ^ vec2<i32>(31678i, u_input.c)) << (~(reverseBits(~vec2<u32>(u_input.b.x, u_input.a)) << (u_input.e.zy % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = 1000f;
    let var_1 = Struct_1(u_input.c);
    global0 = -u_input.c;
    var var_2 = func_4(select(!vec4<bool>(true, true, true, all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), func_3(Struct_2(Struct_1(-2147483647i), vec2<f32>(-1522f, var_0), vec4<f32>(var_0, var_0, var_0, var_0)), u_input.e.x), func_3(Struct_2(var_1, vec2<f32>(-313f, -134f), vec4<f32>(var_0, -953f, -1006f, var_0)), u_input.d.x).x)));
    var var_3 = Struct_5(Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_2.x, 3283i), ~vec3<i32>(var_1.a, -31341i, 28310i)), _wgslsmith_clamp_i32(u_input.c, 1i, u_input.c) ^ ~0i)), var_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(204f, _wgslsmith_f_op_f32(-593f - 170f), _wgslsmith_f_op_f32(sign(-836f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, 712f, -1081f)))))))), vec2<bool>(func_3(Struct_2(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, var_0) - vec2<f32>(-1081f, -860f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, var_0, 554f, -1000f))), 76473u).x, any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true))));
    return Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-var_3.c.yx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_3.c.x, 187f, var_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1125f, var_3.b, -201f, -1000f) - vec4<f32>(var_3.c.x, 331f, 1548f, 527f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 803f, -3024f, var_0)))))))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = 8676u;
    let var_1 = Struct_5(arg_2.d.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1285f - -1019f)) - _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(arg_3.x + -1119f))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, -1154f, arg_2.c)), 1000f, arg_0), vec2<bool>(arg_2.c, arg_2.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(arg_2.d.c));
    let var_3 = vec3<f32>(491f, -483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2.d.c.x)))))));
    var var_4 = func_4(vec4<bool>((arg_1.x | 0u) >= u_input.d.x, all(vec3<bool>(true, all(vec4<bool>(var_1.d.x, arg_2.c, true, false)), any(vec3<bool>(arg_2.c, false, false)))), true, select(false, var_1.d.x, !var_1.d.x))).x;
    return func_2().a;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: i32) -> Struct_5 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(25450u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 0u) | u_input.d, vec4<u32>(1u, ~u_input.b.x, ~49760u, u_input.b.x >> (1u % 32u)))), _wgslsmith_add_u32(0u, ~(reverseBits(28309u) << ((u_input.e.x & 74170u) % 32u))));
    let var_2 = Struct_4(-(~(-reverseBits(0i))), arg_1.e.ywz | (vec3<i32>(func_4(vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x)).x, arg_1.c, u_input.c) & vec3<i32>(_wgslsmith_mult_i32(arg_0.a.a, 2147483647i), 1i, -60114i)), !select(func_3(func_2(), _wgslsmith_mult_u32(var_0.x, 45178u)).x, all(!vec4<bool>(arg_0.d.x, false, false, arg_0.d.x)), false), func_2());
    let var_3 = max(arg_1.e.zzz, var_2.b);
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global0 = u_input.c;
    let var_0 = func_6(Struct_5(func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-436f)))), u_input.d, Struct_4(u_input.c, vec3<i32>(u_input.c, u_input.c, u_input.c), true, func_2()), vec3<f32>(1404f, _wgslsmith_f_op_f32(-255f + -695f), _wgslsmith_f_op_f32(-1116f + -190f))), _wgslsmith_f_op_f32(abs(172f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(219f, 831f, 179f))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), func_3(Struct_2(Struct_1(u_input.c), vec2<f32>(-471f, 232f), vec4<f32>(-1175f, 1765f, -384f, -1000f)), arg_0.x).wz), select(vec2<bool>(true, true), func_3(Struct_2(Struct_1(u_input.c), vec2<f32>(-893f, -286f), vec4<f32>(-640f, 1455f, -806f, 1000f)), arg_0.x).yw, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), Struct_3(~firstLeadingBit(vec2<u32>(arg_0.x, arg_0.x)), func_5(-153f, _wgslsmith_add_vec4_u32(vec4<u32>(90489u, u_input.d.x, arg_0.x, 69783u), vec4<u32>(82802u, 0u, arg_0.x, 62391u) >> (vec4<u32>(1u, 1u, u_input.b.x, 29228u) % vec4<u32>(32u))), Struct_4(u_input.c, vec3<i32>(-35150i, u_input.c, 1i), all(vec4<bool>(true, false, false, false)), func_2()), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-689f, -289f, -226f))))), u_input.c, ~reverseBits(max(u_input.b.x, 1u)), _wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.c, 59037i, -32596i, -11944i) << (vec4<u32>(arg_0.x, arg_0.x, u_input.e.x, arg_0.x) % vec4<u32>(32u))), ~(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), u_input.c << (0u % 32u));
    var var_1 = vec4<u32>(u_input.d.x, countOneBits(u_input.a), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(34109u, _wgslsmith_mod_u32(abs(arg_0.x), 26294u))), 4294967295u);
    global0 = 2147483647i;
    let var_2 = var_0.c.zx;
    return Struct_4(-10299i, firstLeadingBit(countOneBits(~(~vec3<i32>(1i, var_0.a.a, u_input.c)))), true, Struct_2(var_0.a, var_2, vec4<f32>(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(min(var_2.x, 577f)), true)), _wgslsmith_div_f32(-323f, func_6(Struct_5(var_0.a, var_2.x, var_0.c, var_0.d), Struct_3(vec2<u32>(arg_0.x, 0u), Struct_1(-1i), 2147483647i, arg_0.x, vec4<i32>(u_input.c, -1i, u_input.c, u_input.c)), var_0.a.a).b), var_0.b, _wgslsmith_f_op_f32(floor(-154f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(30337u, 0u, 17504u, 4294967295u), u_input.d, false), vec4<u32>(u_input.d.x, u_input.e.x, 57427u, 204u)), ~(u_input.d | u_input.d)), u_input.d) >> (vec4<u32>(~4294967295u, ~(~_wgslsmith_add_u32(46753u, 11683u)), u_input.d.x, u_input.e.x ^ ~u_input.b.x) % vec4<u32>(32u));
    var var_1 = 4294967295u;
    var_1 = var_0.x;
    var var_2 = func_1(~u_input.e.zz);
    var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d.b.x + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f * _wgslsmith_f_op_f32(sign(-103f))))), _wgslsmith_mod_i32(func_6(func_6(Struct_5(Struct_1(58151i), 396f, var_2.d.c.xxx, vec2<bool>(false, var_2.c)), Struct_3(var_0.yz, var_2.d.a, 0i, 15795u, vec4<i32>(28823i, 1i, var_2.a, 8020i)), u_input.c), Struct_3(var_0.zx, func_6(Struct_5(Struct_1(0i), -1420f, vec3<f32>(-1801f, var_2.d.b.x, var_2.d.c.x), vec2<bool>(false, var_2.c)), Struct_3(u_input.d.wy, var_2.d.a, 0i, u_input.d.x, vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), u_input.c).a, ~u_input.c, 11671u ^ var_0.x, vec4<i32>(-40624i, var_2.a, var_2.d.a.a, 28585i)), 2147483647i).a.a, u_input.c));
}

