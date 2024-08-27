struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(1u, -1510f, vec2<i32>(1i, -25261i)), 211f, vec4<u32>(46534u, 37731u, 1u, 1u), vec4<u32>(0u, 41173u, 0u, 0u)), vec4<f32>(-889f, 1000f, -1992f, 589f), vec4<u32>(4294967295u, 4294967295u, 31808u, 75544u)), Struct_3(Struct_2(Struct_1(22895u, -2035f, vec2<i32>(0i, 4799i)), 533f, vec4<u32>(44295u, 18173u, 9362u, 13496u), vec4<u32>(2192u, 26986u, 46098u, 0u)), vec4<f32>(190f, 1338f, 1491f, 666f), vec4<u32>(18339u, 1u, 48420u, 1u)), Struct_3(Struct_2(Struct_1(20311u, -152f, vec2<i32>(i32(-2147483648), 32853i)), 998f, vec4<u32>(0u, 11813u, 13713u, 35322u), vec4<u32>(34608u, 68961u, 28702u, 39190u)), vec4<f32>(-469f, -551f, 1697f, 637f), vec4<u32>(0u, 7100u, 56127u, 39760u)), Struct_3(Struct_2(Struct_1(7317u, 867f, vec2<i32>(1i, -28342i)), -567f, vec4<u32>(3274u, 46162u, 120775u, 17811u), vec4<u32>(4294967295u, 14006u, 0u, 9568u)), vec4<f32>(457f, -167f, -254f, -293f), vec4<u32>(51448u, 8987u, 47943u, 1u)), Struct_3(Struct_2(Struct_1(21525u, -342f, vec2<i32>(-1i, 33767i)), 1214f, vec4<u32>(8694u, 4294967295u, 0u, 0u), vec4<u32>(72878u, 1u, 8280u, 0u)), vec4<f32>(2554f, 1649f, -1042f, -276f), vec4<u32>(4294967295u, 0u, 0u, 49962u)), Struct_3(Struct_2(Struct_1(0u, -2240f, vec2<i32>(i32(-2147483648), 48657i)), 146f, vec4<u32>(4294967295u, 10778u, 4078u, 60626u), vec4<u32>(4294967295u, 6119u, 0u, 1u)), vec4<f32>(-553f, 556f, -2041f, 1000f), vec4<u32>(4294967295u, 7747u, 4294967295u, 28705u)), Struct_3(Struct_2(Struct_1(1u, 531f, vec2<i32>(-31561i, 17220i)), 706f, vec4<u32>(1u, 65249u, 11129u, 19904u), vec4<u32>(4294967295u, 4294967295u, 81204u, 0u)), vec4<f32>(-1379f, -1239f, 584f, -599f), vec4<u32>(42000u, 1u, 59931u, 84749u)), Struct_3(Struct_2(Struct_1(1u, -550f, vec2<i32>(13128i, -1i)), -2469f, vec4<u32>(120908u, 4294967295u, 1u, 40214u), vec4<u32>(64606u, 4294967295u, 5902u, 1u)), vec4<f32>(-583f, -1000f, -790f, -513f), vec4<u32>(0u, 515u, 55235u, 0u)), Struct_3(Struct_2(Struct_1(17577u, -559f, vec2<i32>(i32(-2147483648), 0i)), -257f, vec4<u32>(96315u, 0u, 1u, 0u), vec4<u32>(12972u, 4294967295u, 99291u, 0u)), vec4<f32>(647f, -496f, 108f, -1810f), vec4<u32>(18078u, 1u, 93244u, 51763u)), Struct_3(Struct_2(Struct_1(64724u, -397f, vec2<i32>(-29525i, 51118i)), 1732f, vec4<u32>(0u, 1u, 53655u, 45634u), vec4<u32>(57609u, 42188u, 1697u, 53119u)), vec4<f32>(-1047f, -1000f, -256f, 257f), vec4<u32>(41331u, 0u, 0u, 1u)), Struct_3(Struct_2(Struct_1(27576u, -130f, vec2<i32>(1i, -28549i)), -1233f, vec4<u32>(4294967295u, 24797u, 14621u, 41984u), vec4<u32>(0u, 0u, 29480u, 39532u)), vec4<f32>(-1482f, 496f, 1148f, 1000f), vec4<u32>(30775u, 17814u, 29207u, 6512u)), Struct_3(Struct_2(Struct_1(62743u, -726f, vec2<i32>(-1i, 1758i)), 218f, vec4<u32>(8928u, 9826u, 56546u, 39753u), vec4<u32>(114704u, 4294967295u, 20064u, 4294967295u)), vec4<f32>(-319f, -211f, -399f, 1134f), vec4<u32>(1263u, 26621u, 0u, 40618u)), Struct_3(Struct_2(Struct_1(2137u, 1174f, vec2<i32>(15689i, -7317i)), -1431f, vec4<u32>(165872u, 4294967295u, 0u, 62764u), vec4<u32>(10248u, 29624u, 54438u, 56759u)), vec4<f32>(963f, -1115f, -640f, -1000f), vec4<u32>(0u, 22767u, 35607u, 1u)), Struct_3(Struct_2(Struct_1(143965u, 701f, vec2<i32>(9828i, 2147483647i)), -850f, vec4<u32>(14386u, 43754u, 0u, 44320u), vec4<u32>(61617u, 37179u, 0u, 0u)), vec4<f32>(-3200f, -1000f, -919f, -229f), vec4<u32>(0u, 61121u, 13029u, 1u)), Struct_3(Struct_2(Struct_1(0u, 834f, vec2<i32>(77695i, 1i)), 128f, vec4<u32>(4294967295u, 14835u, 6968u, 0u), vec4<u32>(2241u, 0u, 1u, 23459u)), vec4<f32>(-2539f, -710f, -754f, -1103f), vec4<u32>(37014u, 23413u, 44173u, 17269u)), Struct_3(Struct_2(Struct_1(54397u, -350f, vec2<i32>(-3369i, i32(-2147483648))), 1064f, vec4<u32>(1u, 15595u, 3782u, 16237u), vec4<u32>(49693u, 4294967295u, 66311u, 25811u)), vec4<f32>(-465f, -1539f, -669f, -1651f), vec4<u32>(12526u, 1u, 19924u, 7943u)));

var<private> global2: array<vec3<i32>, 8>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<u32> {
    var var_0 = 0u;
    var var_1 = u_input.b;
    var var_2 = all(select(select(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, false, true, false), false)), select(!vec4<bool>(arg_0, true, arg_0, true), !select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, arg_0, false, true), vec4<bool>(true, arg_0, true, arg_0)), arg_0), all(!vec3<bool>(arg_0, arg_0, false))));
    let var_3 = arg_1;
    global1 = array<Struct_3, 16>();
    return vec2<u32>(min(1u, ~u_input.b.x), 0u);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_1(arg_0.x, -1768f, -(-u_input.c.xz << (_wgslsmith_mod_vec2_u32(func_3(true, 1233f), vec2<u32>(arg_0.x, 25615u)) % vec2<u32>(32u))));
    var var_1 = false;
    var_1 = false;
    let var_2 = u_input.c.xy;
    var var_3 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(min(0u, 0u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 1227f)), ~(max(u_input.a, vec4<u32>(u_input.b.x, arg_0.x, 147288u, u_input.a.x)) ^ ~u_input.a), ~(~u_input.a << (firstLeadingBit(u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 893f, -973f, 1155f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(554f, var_0.b, var_0.b, -2967f), vec4<f32>(-944f, 365f, 1670f, 365f)))) * vec4<f32>(1394f, _wgslsmith_f_op_f32(var_0.b * var_0.b), 282f, _wgslsmith_f_op_f32(f32(-1f) * -579f)))), firstTrailingBit(~u_input.a));
    return ~4294967295u;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(min(25560u | ~arg_0.c.x, arg_1.x), 16u)];
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b * var_0.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1000f, _wgslsmith_f_op_f32(-arg_0.a.a.b), arg_0.b.x)) + var_0.b));
    var var_2 = firstLeadingBit(11129u) ^ (func_2(_wgslsmith_sub_vec2_u32(~arg_1, arg_0.c.xy)) ^ arg_0.c.x);
    var_0 = Struct_3(Struct_2(Struct_1((arg_2.x ^ u_input.a.x) | ~var_0.c.x, _wgslsmith_f_op_f32(round(-716f)), _wgslsmith_add_vec2_i32(var_0.a.a.c, var_0.a.a.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-458f))))), ~vec4<u32>(~4265u, select(2403u, 4294967295u, false), 1u & var_0.c.x, select(47708u, var_0.a.d.x, false)), ~vec4<u32>(abs(1u), arg_0.a.c.x, u_input.a.x, _wgslsmith_add_u32(arg_2.x, 1u))), _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1008f, -923f, _wgslsmith_f_op_f32(var_0.a.a.b * var_1.x), _wgslsmith_f_op_f32(max(var_1.x, var_0.b.x)))))), vec4<u32>(12656u, ~(~4294967295u), ~(~(~1u)), ~select(~10909u, ~1u, true)));
    return Struct_2(Struct_1(65554u, _wgslsmith_f_op_f32(trunc(-323f)), -firstLeadingBit(vec2<i32>(-8073i, -2147483647i)) >> (~reverseBits(vec2<u32>(arg_0.c.x, var_0.a.c.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_1.x), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.x, arg_0.c.x), _wgslsmith_sub_u32(var_0.a.c.x, 1u), arg_0.c.x) ^ 12908u, 1u, reverseBits(38154u), arg_0.c.x), (firstTrailingBit(reverseBits(vec4<u32>(var_0.c.x, 1u, arg_1.x, 2233u))) | u_input.a) << (arg_0.c % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_1(~(~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0, arg_1.d.x), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)), u_input.c.xx);
    let var_1 = Struct_4(arg_1.a.b, Struct_3(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, u_input.a.x), ~vec2<u32>(var_0.a, 25295u)), 23u)], 1146f, u_input.a, arg_1.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.b, var_0.b, 876f, var_0.b))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_1.b, -589f, arg_1.b), vec4<f32>(var_0.b, -1094f, var_0.b, 185f), vec4<bool>(true, false, true, true)))))), _wgslsmith_sub_vec4_u32(arg_1.c, vec4<u32>(1u, 0u, func_2(arg_1.c.yz), arg_1.c.x))), var_0.c.x);
    var var_2 = _wgslsmith_clamp_u32(arg_0, select(4294967295u, firstTrailingBit(18168u), all(vec4<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, false))))), ~1u);
    let var_3 = Struct_3(Struct_2(Struct_1(1u, 1167f, _wgslsmith_sub_vec2_i32(-vec2<i32>(var_1.b.a.a.c.x, var_1.c), vec2<i32>(-2147483647i, 0i) ^ vec2<i32>(arg_1.a.c.x, -90092i))), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(abs(1196f)), true)), firstTrailingBit(u_input.a), ~(~(u_input.a << (arg_1.c % vec4<u32>(32u))))), var_1.b.b, func_1(var_1.b, arg_1.d.yz, reverseBits(arg_1.d)).c << ((vec4<u32>(firstLeadingBit(var_0.a), _wgslsmith_mult_u32(u_input.a.x, 35461u), u_input.b.x & 10324u, _wgslsmith_sub_u32(var_0.a, 29758u)) << (vec4<u32>(~arg_0, u_input.a.x, u_input.b.x, _wgslsmith_add_u32(arg_1.c.x, var_0.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = max(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_3.c.x, 9797u, 46877u)), ~max(abs(var_3.c.yzz), vec3<u32>(1u, 1u, 1u))), countOneBits(reverseBits(vec3<u32>(arg_0, var_1.b.a.c.x, 85114u) ^ ~u_input.a.wyy)));
    return var_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_3 {
    global2 = array<vec3<i32>, 8>();
    global1 = array<Struct_3, 16>();
    var var_0 = !arg_1;
    var_0 = select(!arg_1, select(vec4<bool>(select(true, arg_0.x, var_0.x), true, !var_0.x, _wgslsmith_div_u32(1u, u_input.a.x) <= reverseBits(u_input.a.x)), vec4<bool>(all(!vec4<bool>(arg_1.x, false, arg_0.x, false)), false, all(vec2<bool>(true, true)), var_0.x), arg_1), !arg_1);
    let var_1 = 1u;
    return Struct_3(func_4(1u, arg_2.b.a).b.a, vec4<f32>(-446f, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(max(-1233f, -799f))))), _wgslsmith_f_op_f32(-arg_2.a)), arg_2.b.a.d ^ select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.c.x, arg_2.b.c.x, u_input.b.x, 29575u), u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 43782u, 63779u), vec4<u32>(u_input.b.x, u_input.a.x, arg_2.b.a.a.a, u_input.a.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.c.x, 1u, 4294967295u, arg_2.b.a.a.a), arg_2.b.c), arg_2.b.c, u_input.a ^ vec4<u32>(2144u, 0u, 0u, u_input.a.x)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    let var_0 = Struct_4(556f, func_5(vec3<bool>(true, false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), false), true), func_4(40785u, func_1(global1[_wgslsmith_index_u32(0u, 16u)], u_input.b, vec4<u32>(u_input.a.x, u_input.b.x, 1u, 4294967295u)))), ~func_4(~(~28995u), func_1(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 23u)], -1363f, vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 1u, 28553u)), vec4<f32>(-536f, -168f, -1655f, -1000f), vec4<u32>(4294967295u, 0u, 0u, u_input.b.x)), ~vec2<u32>(u_input.a.x, 45591u), func_1(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 23u)], 879f, vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u), vec4<u32>(22666u, 4294967295u, u_input.a.x, u_input.a.x)), vec4<f32>(-1064f, 2277f, 1881f, -182f), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 24998u)), u_input.b, vec4<u32>(44511u, u_input.a.x, u_input.a.x, 77459u)).d)).c);
    global1 = array<Struct_3, 16>();
    global2 = array<vec3<i32>, 8>();
    var var_1 = vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) && true, (abs(_wgslsmith_add_i32(-1i, -5968i)) >> (var_0.b.c.x % 32u)) >= abs(54588i));
    var var_2 = var_0.b.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~(~var_2.a), func_1(func_5(vec3<bool>(false, false, false), vec4<bool>(var_1.x, false, false, var_1.x), Struct_4(207f, global1[_wgslsmith_index_u32(37392u, 16u)], 2147483647i)), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(4294967295u, u_input.a.x)), min(u_input.a, vec4<u32>(var_2.a, var_2.a, var_0.b.c.x, 0u))).d.x, ~var_2.a), ~(vec3<u32>(var_0.b.c.x, var_0.b.a.d.x, 79908u) | abs(vec3<u32>(u_input.b.x, var_0.b.c.x, u_input.b.x)))));
}

