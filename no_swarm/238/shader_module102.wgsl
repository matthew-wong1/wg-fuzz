struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_4,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(810f, 247f, -303f), vec3<f32>(903f, -287f, -1922f), vec3<f32>(1000f, -546f, -1568f), vec3<f32>(1686f, -1401f, 963f), vec3<f32>(-366f, 463f, -1325f), vec3<f32>(1084f, 1906f, -1146f), vec3<f32>(202f, -144f, 1000f), vec3<f32>(-230f, 1871f, 251f), vec3<f32>(-500f, -1000f, -987f), vec3<f32>(-2393f, -401f, -560f), vec3<f32>(-820f, 541f, 1025f), vec3<f32>(924f, -2378f, 2155f), vec3<f32>(966f, 1038f, -1710f), vec3<f32>(949f, -1924f, 310f), vec3<f32>(-738f, 1000f, 656f), vec3<f32>(727f, 1699f, 156f), vec3<f32>(828f, -778f, -806f), vec3<f32>(-1061f, 1031f, -2043f), vec3<f32>(-619f, -324f, -631f), vec3<f32>(-873f, -1867f, -485f), vec3<f32>(278f, -1425f, 1000f), vec3<f32>(768f, -116f, 255f), vec3<f32>(495f, 144f, -1479f), vec3<f32>(-340f, -1200f, 1249f), vec3<f32>(-132f, -1354f, 1000f), vec3<f32>(781f, -507f, 733f), vec3<f32>(-716f, -854f, 621f), vec3<f32>(-206f, -1117f, -1193f), vec3<f32>(1330f, 1481f, 153f));

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<f32>(-1168f, -824f, 889f)), Struct_1(vec3<f32>(1839f, 844f, 888f)), Struct_2(false), vec4<u32>(1u, 1u, 1023u, 56750u), false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(~4294967295u, ~1u);
    global2 = Struct_4(Struct_1(global1[_wgslsmith_index_u32(6446u, 29u)]), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0, 20014u), 18u)], Struct_2(global2.c.a), global2.d, true);
    let var_1 = Struct_4(Struct_1(vec3<f32>(global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-317f, arg_0.x))), _wgslsmith_f_op_f32(ceil(-921f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), -511f, 524f)), Struct_2(false), ~global2.d, global2.d.x >= firstLeadingBit(max(firstLeadingBit(4294967295u), 50793u)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2849f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.a.x))))), _wgslsmith_f_op_f32(ceil(1f))));
    var var_3 = var_1;
    return ~var_1.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_5(vec2<bool>(false, arg_2.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2360f, 556f) + global2.a.a.xz))))), Struct_4(arg_2.b, arg_2.b, global2.c, vec4<u32>(1u, select(1u, ~global2.d.x, arg_2.c.a | arg_2.e), _wgslsmith_mod_u32(~global2.d.x, min(16990u, arg_2.d.x)), arg_2.d.x), ~4294967295u < global2.d.x), _wgslsmith_div_vec2_f32(global2.b.a.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.x, arg_2.b.a.x)))));
    var var_1 = u_input.a;
    return var_0.a.x;
}

fn func_2() -> Struct_5 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = 0u;
    let var_1 = global2.e & false;
    global2 = Struct_4(global2.a, Struct_1(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~global2.d.x, 29u)] - _wgslsmith_div_vec3_f32(global2.a.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(771f, global2.a.a.x, 200f)))))), global2.c, ~(~vec4<u32>(~42718u, ~var_0, 0u, ~4294967295u)), !select(func_4(func_3(vec4<f32>(-376f, 310f, -509f, -233f)), vec2<i32>(0i, 17077i), Struct_4(global2.a, Struct_1(vec3<f32>(global2.a.a.x, global2.b.a.x, 944f)), Struct_2(global2.c.a), global2.d, true)), var_1, false));
    global2 = Struct_4(global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.b.a)))), Struct_2(all(vec2<bool>(true, all(vec2<bool>(global2.e, false))))), reverseBits(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, global2.a.a.x, global2.b.a.x, -1398f) + vec4<f32>(global2.b.a.x, global2.b.a.x, 652f, -1539f))))), true);
    return Struct_5(select(!vec2<bool>(select(false, var_1, global2.e), select(var_1, global2.c.a, global2.c.a)), !(!(!vec2<bool>(global2.e, global2.c.a))), all(!(!vec4<bool>(var_1, var_1, var_1, global2.e)))), _wgslsmith_f_op_vec2_f32(select(global2.a.a.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.a.zy + global2.a.a.zx) + _wgslsmith_f_op_vec2_f32(global2.b.a.xy + global2.a.a.xx)), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -2395f) <= global2.a.a.x)), vec2<bool>(true, true))), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2780f, global2.b.a.x, -139f))))), global0[_wgslsmith_index_u32(abs(global2.d.x), 18u)], Struct_2(false), global2.d, false), _wgslsmith_f_op_vec2_f32(global2.a.a.yz * global2.b.a.zx));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(50531i, -49004i, 0i, 0i), vec4<i32>(-30763i, 23848i, -1i, -40449i)), ~(~vec4<i32>(-11751i, 0i, -9571i, 7287i))), -abs(~(-1i))));
    let var_1 = _wgslsmith_mult_u32(max(~(global2.d.x & 82992u) ^ ((4294967295u << (u_input.b % 32u)) ^ ~4294967295u), 0u), _wgslsmith_mod_u32(~17202u, 4294967295u));
    var var_2 = !vec4<bool>(any(vec4<bool>(true, true, true, true)), !(~global2.d.x > ~var_1), any(!vec3<bool>(arg_1.a, arg_1.a, global2.e)), select(true, false, !(!global2.e)));
    let var_3 = func_2();
    let var_4 = var_3.c.b.a.x;
    return global0[_wgslsmith_index_u32(var_3.c.d.x, 18u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32) -> vec2<f32> {
    global2 = Struct_4(Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 1u, arg_0.d.x, global2.d.x), arg_0.d), 29u)]), Struct_1(_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(arg_0.d.x, 29u)]))), Struct_2(arg_1.x), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(global2.d, max(vec4<u32>(global2.d.x, arg_0.d.x, 0u, arg_0.d.x), vec4<u32>(1u, 4294967295u, 19298u, 32935u))), firstLeadingBit(~global2.d)), false);
    var var_0 = _wgslsmith_mult_i32(arg_2, -_wgslsmith_dot_vec2_i32(~(~vec2<i32>(arg_2, arg_2)), select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_2, 4775i), !arg_1.zy)));
    let var_1 = Struct_4(func_1(!arg_1.x, Struct_3(all(vec4<bool>(false, arg_1.x, false, global2.e)))), arg_0.a, arg_0.c, reverseBits(global2.d), !arg_1.x);
    return _wgslsmith_f_op_vec2_f32(var_1.a.a.zy - global2.b.a.zx);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b.a.x)));
    var var_1 = select(!(!(!vec3<bool>(arg_1.a, false, false))), vec3<bool>(global2.c.a, global2.c.a, any(select(!vec4<bool>(global2.e, true, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, global2.c.a, global2.e), select(vec4<bool>(false, false, true, arg_1.a), vec4<bool>(true, arg_1.a, true, arg_1.a), vec4<bool>(true, arg_1.a, true, global2.c.a))))), select(vec3<bool>(true, func_4(~vec4<u32>(49640u, u_input.b, u_input.a, u_input.b), ~vec2<i32>(45095i, -12678i), Struct_4(Struct_1(global1[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(24718u, 18u)], Struct_2(global2.c.a), global2.d, true)), arg_1.a), vec3<bool>(global2.c.a, func_4(_wgslsmith_add_vec4_u32(global2.d, global2.d), ~vec2<i32>(0i, 1i), func_2().c), !(!arg_1.a)), select(!vec3<bool>(arg_1.a, false, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, global2.e, global2.e), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    global2 = Struct_4(global2.b, global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~4294967295u, 42177u, ~1u)), 18u)], Struct_2(true), vec4<u32>(min(~global2.d.x, ~(~4294967295u)), ~firstLeadingBit(4294967295u), 1u, max(1u, 0u)), arg_1.a);
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global2.d.x, (0u ^ _wgslsmith_mult_u32(u_input.a, global2.d.x)) << (~abs(global2.d.x) % 32u)), 18u)], global0[_wgslsmith_index_u32(71951u, 18u)], func_2().c.c, global2.d, !(!global2.c.a));
    var var_3 = abs(-(~1i));
    return global0[_wgslsmith_index_u32(global2.d.x, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(func_6(_wgslsmith_f_op_vec2_f32(func_5(Struct_4(func_1(global2.e, Struct_3(global2.c.a)), Struct_1(vec3<f32>(global2.b.a.x, global2.b.a.x, global2.b.a.x)), global2.c, ~vec4<u32>(33302u, 4294967295u, global2.d.x, global2.d.x), true), vec3<bool>(true, true, any(vec3<bool>(false, false, global2.e))), 1i)), Struct_3(!global2.c.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.a.a.x), global2.b.a.x, _wgslsmith_f_op_f32(-global2.b.a.x)))), func_2().c.c, _wgslsmith_clamp_vec4_u32(~(global2.d << ((vec4<u32>(3357u, global2.d.x, 2040u, 4294967295u) << (vec4<u32>(0u, 106639u, 21645u, 53410u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~(vec4<u32>(global2.d.x, 99088u, 52349u, 0u) >> (global2.d % vec4<u32>(32u))), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.a.x, -1421f, -1220f, global2.b.a.x), vec4<f32>(-630f, global2.a.a.x, global2.a.a.x, global2.a.a.x), global2.c.a)))), reverseBits(global2.d)), true);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.a.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.a.x, global2.b.a.x, global2.e)) - _wgslsmith_f_op_f32(-global2.a.a.x))));
    var var_1 = Struct_3(all(func_2().a));
    var var_2 = global2.c;
    var var_3 = Struct_5(select(vec2<bool>(true, !var_2.a | all(vec3<bool>(false, false, global2.e))), vec2<bool>(!all(vec2<bool>(var_2.a, false)), var_0.a), !(!select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false), vec2<bool>(true, var_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1145f, global2.a.a.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.a.a.yz), _wgslsmith_f_op_vec2_f32(trunc(global2.b.a.zz)))), !vec2<bool>(global2.c.a, true)))), func_2().c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.b.a.zx))) * global2.b.a.zx))));
    var_2 = func_2().c.c;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_add_i32(~(-1i), 65085i)), 48934u, global2.d.x, vec3<f32>(851f, 155f, 419f));
}

