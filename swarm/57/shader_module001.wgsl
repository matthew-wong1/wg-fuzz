struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: array<vec3<u32>, 28>;

var<private> global2: array<vec3<bool>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = vec2<bool>(true, false);
    global0 = array<Struct_4, 7>();
    global1 = array<vec3<u32>, 28>();
    var_0 = select(select(!(!vec2<bool>(var_0.x, var_0.x)), select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), false), vec2<bool>(var_0.x, all(vec2<bool>(var_0.x, var_0.x))), !vec2<bool>(false, var_0.x)), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), !var_0.x), !select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(true, var_0.x)), _wgslsmith_mod_u32(arg_3.a, arg_3.a) == arg_2.x)), vec2<bool>(true, true), var_0.x & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(select(1853f, arg_1, false))) == 964f));
    let var_1 = arg_3;
    return select(select(select(vec2<bool>(false, var_0.x & var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x)), !(u_input.c > -145958i)), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec4<bool>(true, true, var_0.x, true))), false), select(select(vec2<bool>(arg_1 <= -599f, true), vec2<bool>(any(vec3<bool>(false, var_0.x, true)), !var_0.x), select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(true, true), any(vec3<bool>(true, true, var_0.x)))), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), !all(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), !vec2<bool>(var_0.x, true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<u32> {
    global0 = array<Struct_4, 7>();
    var var_0 = countOneBits(u_input.a.yw);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.d.x * arg_1.c.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c * arg_1.c))))));
    let var_2 = arg_0.x;
    let var_3 = Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(true, arg_2.x, false), select(global2[_wgslsmith_index_u32(arg_0.x, 30u)], vec3<bool>(arg_2.x, arg_2.x, arg_2.x), global2[_wgslsmith_index_u32(var_2, 30u)])), select(vec3<bool>(true, true, false), select(global2[_wgslsmith_index_u32(var_2, 30u)], global2[_wgslsmith_index_u32(38618u, 30u)], global2[_wgslsmith_index_u32(33759u, 30u)]), vec3<bool>(true, arg_2.x, arg_2.x))), select(select(global2[_wgslsmith_index_u32(arg_0.x, 30u)], select(global2[_wgslsmith_index_u32(54704u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(9316u, 30u)]), global2[_wgslsmith_index_u32(57137u, 30u)]), global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(~arg_0.x, 30u)]), -1i >= ~select(55749i, var_0.x, arg_2.x)), Struct_2(~(~var_2)), vec4<bool>(32392i == min(abs(0i), var_0.x), var_0.x >= -2147483647i, arg_2.x, all(select(global2[_wgslsmith_index_u32(arg_1.b.x, 30u)], !global2[_wgslsmith_index_u32(1u, 30u)], !vec3<bool>(arg_2.x, false, false)))), ~(~global1[_wgslsmith_index_u32(arg_1.b.x, 28u)]));
    return ~arg_1.b.zx;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_div_vec2_u32(arg_0.d.zy, _wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(arg_0.b.a, arg_0.b.a)), select(arg_0.d.yx ^ vec2<u32>(5524u, arg_0.b.a), vec2<u32>(1u, 26267u), any(global2[_wgslsmith_index_u32(arg_0.d.x, 30u)])))), Struct_1(9563u, _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(1u, 28u)], vec3<u32>(arg_0.b.a, 7992u, 4294967295u)), global1[_wgslsmith_index_u32(~arg_0.b.a, 28u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, arg_1.x)) * _wgslsmith_f_op_vec2_f32(max(arg_1.zx, arg_1.xy))) + _wgslsmith_f_op_vec2_f32(select(arg_1.xz, vec2<f32>(arg_1.x, arg_1.x), func_3(9155i, -2041f, vec2<u32>(26509u, 27862u), arg_0.b)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1585f), 110f)))), arg_0.a.zz);
    var var_1 = vec2<i32>(-1i) * -firstTrailingBit(-vec2<i32>(2147483647i, u_input.b.x));
    let var_2 = vec3<u32>(func_4(arg_0.d.xx >> (arg_0.d.zy % vec2<u32>(32u)), Struct_1(~select(var_0.x, 3624u, arg_0.c.x), arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), arg_1.xz), arg_0.a.zx).x, 4294967295u, 53246u);
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_2.x >> (0u % 32u)), var_0.x, var_0.x), firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_2, global1[_wgslsmith_index_u32(var_0.x, 28u)] >> (vec3<u32>(arg_0.d.x, 39688u, var_0.x) % vec3<u32>(32u)), ~global1[_wgslsmith_index_u32(1u, 28u)]) << (vec3<u32>(_wgslsmith_mult_u32(33193u, 74667u), 1u, ~65451u) % vec3<u32>(32u))));
    let var_4 = -_wgslsmith_clamp_i32(~(u_input.b.x >> (abs(var_3.x) % 32u)), i32(-1i) * -1424i, -var_1.x);
    return Struct_3(select(!arg_0.c.zwy, !select(vec3<bool>(false, arg_0.c.x, true), global2[_wgslsmith_index_u32(2436u, 30u)], arg_0.c.x), vec3<bool>(true, true, all(!arg_0.c.wy))), arg_0.b, select(!vec4<bool>(all(arg_0.a.zy), arg_0.c.x, true, all(vec3<bool>(arg_0.c.x, arg_0.c.x, true))), select(arg_0.c, vec4<bool>(true, any(vec3<bool>(true, arg_0.c.x, arg_0.a.x)), false, true), true || (false || arg_0.a.x)), !(!select(vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c, arg_0.a.x))), vec3<u32>(4294967295u, 1u, var_2.x));
}

fn func_5(arg_0: Struct_3) -> bool {
    let var_0 = func_2(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, 339f, 579f) + vec3<f32>(725f, 493f, -1485f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(652f)), _wgslsmith_f_op_f32(f32(-1f) * -914f), -231f)) * vec3<f32>(_wgslsmith_f_op_f32(select(856f, _wgslsmith_f_op_f32(ceil(638f)), func_3(2147483647i, 789f, arg_0.d.zx, Struct_2(68635u)).x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-433f, 1802f)))))).b;
    global2 = array<vec3<bool>, 30>();
    return func_3(u_input.c, 174f, arg_0.d.yz, var_0).x | func_3(17785i, _wgslsmith_f_op_f32(trunc(2436f)), vec2<u32>(_wgslsmith_sub_u32(1u, ~var_0.a), ~_wgslsmith_sub_u32(arg_0.d.x, 1u)), func_2(func_2(func_2(Struct_3(global2[_wgslsmith_index_u32(var_0.a, 30u)], Struct_2(0u), vec4<bool>(true, true, arg_0.c.x, true), vec3<u32>(65161u, 12159u, 0u)), vec3<f32>(-587f, 834f, -1594f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(112f, -680f, -435f)))), vec3<f32>(-174f, 1147f, -1141f)).b).x;
}

fn func_6(arg_0: bool) -> vec3<bool> {
    global2 = array<vec3<bool>, 30>();
    let var_0 = Struct_2(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_clamp_u32(20677u, 1u, 1u)), 28u)], _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 28u)], vec3<u32>(4294967295u, 4294967295u, 13323u)), 28u)] | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50314u, 26639u), vec2<u32>(18639u, 56856u)), 28u)], max(vec3<u32>(4294967295u, 78550u, 24429u) << (global1[_wgslsmith_index_u32(47274u, 28u)] % vec3<u32>(32u)), ~vec3<u32>(42092u, 0u, 7944u)), ~vec3<u32>(4294967295u, 1u, 36694u))));
    var var_1 = Struct_4(select(select(global2[_wgslsmith_index_u32(2456u, 30u)], vec3<bool>(true, true, all(vec4<bool>(false, true, arg_0, false))), arg_0), !global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(var_0.a, 30u)]));
    var var_2 = !var_1.a.xz;
    global0 = array<Struct_4, 7>();
    return !vec3<bool>(var_2.x, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -909f), var_1.a.x && arg_0)) > 519f, var_2.x);
}

fn func_1() -> u32 {
    let var_0 = Struct_3(func_6(func_5(func_2(Struct_3(vec3<bool>(true, false, true), Struct_2(4294967295u), vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(1467f, -113f, 399f) + vec3<f32>(531f, -241f, 220f))))), func_2(func_2(Struct_3(select(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), func_2(Struct_3(vec3<bool>(true, true, false), Struct_2(21539u), vec4<bool>(false, false, false, false), global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<f32>(-590f, -893f, -348f)).b, vec4<bool>(true, true, true, true), reverseBits(global1[_wgslsmith_index_u32(58872u, 28u)])), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(1213f - -1000f), 1121f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))))).b, vec4<bool>(true, true, true, true), reverseBits(global1[_wgslsmith_index_u32(39152u, 28u)]));
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.d.zz, ~vec2<u32>(47268u, var_0.b.a)), abs(_wgslsmith_sub_u32(var_0.b.a, var_0.b.a))), 1u));
    var var_2 = all(select(vec4<bool>(false, u_input.c > ~u_input.b.x, var_0.c.x, !any(var_0.c.yx)), select(var_0.c, select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.c.x, var_0.a.x), vec4<bool>(var_0.c.x, false, true, var_0.c.x), func_2(Struct_3(vec3<bool>(true, true, var_0.c.x), var_0.b, vec4<bool>(true, true, false, true), vec3<u32>(0u, var_1.a, var_0.d.x)), vec3<f32>(-190f, -886f, -1323f)).c), vec4<bool>(false, all(vec4<bool>(true, var_0.a.x, var_0.c.x, var_0.a.x)), true, false)), var_0.c));
    global0 = array<Struct_4, 7>();
    return ~_wgslsmith_mod_u32(14327u, 98171u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 28u)], ~global1[_wgslsmith_index_u32(select(412u, func_1(), any(vec2<bool>(true, false))), 28u)]) & _wgslsmith_clamp_u32(func_2(func_2(Struct_3(vec3<bool>(true, true, false), Struct_2(1u), vec4<bool>(false, false, false, true), vec3<u32>(18337u, 61963u, 49930u)), vec3<f32>(-768f, -588f, -1148f)), vec3<f32>(-846f, -1350f, -1028f)).d.x | ~1u, 98818u, 34044u);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(606f, 1764f)), _wgslsmith_f_op_f32(-2004f * _wgslsmith_f_op_f32(select(271f, -249f, false)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1275f, -337f), vec2<f32>(451f, -682f))), vec2<f32>(938f, 1216f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(649f, -961f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(682f, -849f)))))));
    let var_2 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), all(vec4<bool>(false, false, true, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(var_0 < var_0, true, true, true), vec4<bool>(true, func_3(i32(-1i) * -69180i, _wgslsmith_f_op_f32(step(var_1.x, -1410f)), vec2<u32>(1u, 1u), Struct_2(25580u)).x || true, true, true & (_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_0, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]) > 52966u)));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(~46997u, max(var_0, ~(~var_0)), var_0, var_0), countOneBits(vec4<u32>(~_wgslsmith_mod_u32(var_0, var_0), var_0, 4294967295u, 63639u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), -1138f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 514f, -455f) * vec3<f32>(var_1.x, var_1.x, -1736f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-713f, 541f, var_1.x)))))));
    global2 = array<vec3<bool>, 30>();
    var var_5 = var_4.yz;
    let x = u_input.a;
    s_output = StorageBuffer(0u | var_3.x, var_0, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1668f - _wgslsmith_f_op_f32(min(1468f, var_5.x))))), _wgslsmith_f_op_f32(269f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2193f + -1000f))), _wgslsmith_f_op_f32(-1f)), vec2<u32>(_wgslsmith_dot_vec4_u32(~reverseBits(var_3), vec4<u32>(var_0, 1u, ~var_0, max(var_3.x, var_3.x))), var_0));
}

