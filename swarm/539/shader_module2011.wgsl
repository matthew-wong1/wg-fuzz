struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(58419u, -903f, vec3<i32>(1i, i32(-2147483648), -1i), 1066f, true), Struct_1(0u, -185f, vec3<i32>(0i, i32(-2147483648), 22233i), -551f, false), Struct_1(1u, -1214f, vec3<i32>(i32(-2147483648), i32(-2147483648), 32788i), -218f, true), Struct_1(22881u, 1261f, vec3<i32>(-22499i, i32(-2147483648), 60720i), -1254f, false));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(52244u, 494f, vec3<i32>(0i, 18036i, 0i), -887f, true), Struct_1(40280u, 2018f, vec3<i32>(2323i, 1i, 2147483647i), -2172f, true), Struct_1(0u, -327f, vec3<i32>(-1i, 2147483647i, 3501i), -1627f, false), Struct_1(1u, 2081f, vec3<i32>(-35658i, 0i, 17665i), 1602f, false), Struct_1(13605u, 2403f, vec3<i32>(1i, 19609i, 5557i), 725f, false), Struct_1(56255u, 1362f, vec3<i32>(0i, -41283i, 5345i), -475f, false), Struct_1(0u, 650f, vec3<i32>(1i, 17463i, i32(-2147483648)), 640f, false), Struct_1(0u, 853f, vec3<i32>(i32(-2147483648), -3457i, -1i), -1650f, false), Struct_1(80800u, -1340f, vec3<i32>(2147483647i, -1i, 0i), 1279f, true), Struct_1(4294967295u, -1980f, vec3<i32>(0i, 1748i, 1i), -1354f, true), Struct_1(4294967295u, 432f, vec3<i32>(62356i, 5527i, i32(-2147483648)), 508f, true), Struct_1(9724u, -1311f, vec3<i32>(i32(-2147483648), 0i, 23075i), -1002f, false), Struct_1(35100u, 120f, vec3<i32>(0i, 1i, -1i), 1519f, true), Struct_1(0u, -1612f, vec3<i32>(32750i, -1i, 1i), 182f, false), Struct_1(0u, 402f, vec3<i32>(-51637i, 1i, 17006i), 107f, true), Struct_1(0u, 242f, vec3<i32>(0i, -1i, 2147483647i), 608f, false), Struct_1(1u, -159f, vec3<i32>(1i, 0i, 1785i), -598f, true), Struct_1(67398u, 1024f, vec3<i32>(17009i, 2147483647i, -28150i), 2826f, true), Struct_1(6420u, 1443f, vec3<i32>(-1788i, 1i, -28908i), 713f, true), Struct_1(43324u, 1266f, vec3<i32>(i32(-2147483648), -37555i, 1i), 731f, false), Struct_1(24591u, 464f, vec3<i32>(-65938i, 26112i, -1i), 1000f, true), Struct_1(17010u, 664f, vec3<i32>(-12874i, -8272i, -22342i), 1106f, true), Struct_1(17220u, 2143f, vec3<i32>(2147483647i, -48787i, 1i), -1759f, true), Struct_1(0u, 564f, vec3<i32>(-1i, i32(-2147483648), -17283i), 2175f, false), Struct_1(0u, -110f, vec3<i32>(-51358i, -1i, 1i), 1251f, false), Struct_1(82061u, 1935f, vec3<i32>(39141i, -3799i, -16029i), 1217f, false), Struct_1(1u, 181f, vec3<i32>(-44251i, 2147483647i, 0i), 464f, true), Struct_1(4294967295u, 1471f, vec3<i32>(32235i, 11497i, 2147483647i), -1290f, false), Struct_1(0u, -905f, vec3<i32>(5122i, -1i, 1i), -1000f, false), Struct_1(55556u, -201f, vec3<i32>(-1i, -1i, 0i), 1012f, false), Struct_1(9344u, 1380f, vec3<i32>(40427i, 1i, 5241i), -607f, true));

var<private> global2: vec2<bool>;

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> bool {
    global2 = !vec2<bool>(false, global2.x || true);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(ceil(-328f))) - _wgslsmith_f_op_f32(trunc(-1072f))) - _wgslsmith_f_op_f32(-127f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2093f), _wgslsmith_f_op_f32(round(590f))))), arg_0.xx, !select(select(select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, true), false), vec3<bool>(true, true, global2.x), vec3<bool>(false, false, global2.x)), !vec3<bool>(global2.x, true, false), global2.x));
    var var_1 = arg_1.x >> (u_input.b % 32u);
    var_1 = -2147483647i | (u_input.a >> (2596u % 32u));
    let var_2 = 3278i;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_0 = Struct_5(Struct_4(-716f, ~vec2<u32>(~u_input.b, ~u_input.b), select(vec3<bool>(true, -1i > u_input.a, global2.x), select(!vec3<bool>(true, global2.x, arg_2), vec3<bool>(true, true, true), func_3(vec3<u32>(1u, 22399u, 63591u), arg_0.ywz)), abs(u_input.b) >= u_input.b)), arg_0.xxz, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(951f))) * 599f), Struct_1(27201u, 2404f, vec3<i32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_i32(arg_0.zwz, vec3<i32>(arg_0.x, 2147483647i, -1i)), _wgslsmith_clamp_i32(0i, -1i, 44307i)), -516f, all(vec2<bool>(arg_2, global2.x))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-420f, -1000f)), _wgslsmith_f_op_f32(step(650f, -821f)), _wgslsmith_f_op_f32(abs(-706f)), _wgslsmith_f_op_f32(149f - -799f)) - vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(round(711f)), _wgslsmith_f_op_f32(round(737f)))), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 36533u), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(0u, 24743u) % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(countOneBits(1u) << (u_input.b % 32u), -173f, -abs(arg_1.wwz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-792f * -1033f) + 1f), arg_2), firstTrailingBit(_wgslsmith_sub_u32(u_input.b & u_input.b, ~4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1433f, -620f)), 1f, -1063f, _wgslsmith_f_op_f32(800f - -475f))), vec2<u32>(u_input.b, 0u)));
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_3(-27318i, _wgslsmith_add_i32(2147483647i, -2147483647i), vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-638f, var_0.a.a, false)) + _wgslsmith_f_op_f32(max(132f, var_0.d.a))))), _wgslsmith_f_op_f32(max(var_0.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2079f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, 204f))))), global1[_wgslsmith_index_u32(~0u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.b.x, var_0.d.b.a, 1u), vec3<u32>(58120u, u_input.b, 1u)), ~abs(u_input.b)) % 32u), 31u)], global0[_wgslsmith_index_u32(u_input.b, 4u)]);
    return ~(~firstTrailingBit(32386u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> i32 {
    global2 = !(!(!(!(!vec2<bool>(global2.x, false)))));
    var var_0 = true;
    var var_1 = ((57058u >> (abs(u_input.b) % 32u)) << (29339u % 32u)) << (69623u % 32u);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(38692u, arg_1, arg_1, u_input.b), vec4<u32>(arg_1, 21140u, 1u, 16273u)) >> (vec4<u32>(6431u, u_input.b, arg_1, arg_1) % vec4<u32>(32u)), ~vec4<u32>(arg_1, 36158u, 1u, arg_1) | select(vec4<u32>(arg_1, arg_1, 121821u, arg_1), vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1), true)), 40507u, max(func_2(select(vec4<i32>(-10008i, u_input.a, arg_2.x, 1i), vec4<i32>(-1i, arg_2.x, -2147483647i, u_input.a), vec4<bool>(true, true, false, global2.x)), -vec4<i32>(-5675i, arg_0, u_input.a, u_input.a), all(vec4<bool>(false, true, global2.x, true))), _wgslsmith_div_u32(~arg_1, ~69635u)), (arg_1 & u_input.b) << (~max(u_input.b, arg_1) % 32u)), vec4<u32>(1u, u_input.b, ~(~(~arg_1)), select(6942u, ~1u, false)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-540f, Struct_1(0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -252f))))), select(select(firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, 0i)), vec3<i32>(-1i, u_input.a, -1i), vec3<bool>(false, global2.x, true)), vec3<i32>(~52067i, u_input.a, func_1(u_input.a, 92049u, vec3<i32>(1i, u_input.a, u_input.a))), !select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, true), global2.x)), -1072f, global2.x), ~u_input.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, 1004f, -383f, -1000f) + vec4<f32>(165f, -727f, 833f, -698f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f - -1013f)), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(abs(-1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f - 758f))))), ~(~vec2<u32>(firstTrailingBit(u_input.b), u_input.b)));
    var var_1 = -1i;
    global1 = array<Struct_1, 31>();
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-368f)))), ~var_0.e, vec3<bool>(false, true, global2.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.c, var_0.b.c), -(-vec3<i32>(-2147483647i, -424i, -40516i) >> ((vec3<u32>(4150u, u_input.b, 14877u) | vec3<u32>(48678u, 1u, u_input.b)) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, var_0.d.x)) + _wgslsmith_f_op_f32(-var_0.b.d)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.d.x)))), global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(0u, var_0.e.x), ~u_input.b, false) & ~select(var_0.e.x, u_input.b, false), 4u)], ~var_0.b.a, _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d - var_0.d))), ~min(vec2<u32>(u_input.b, 1u), _wgslsmith_clamp_vec2_u32(var_0.e, var_0.e, var_0.e))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(487f, -885f), var_0.a)) + var_0.b.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(12668u, _wgslsmith_sub_u32(1u << (u_input.b % 32u), u_input.b)), 31u)], ~abs(_wgslsmith_div_u32(43747u, u_input.b)), vec4<f32>(1356f, _wgslsmith_div_f32(-695f, var_0.b.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, var_0.b.b)))), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.b), var_0.e.x), var_0.c)));
    global2 = !select(vec2<bool>(true, !(var_0.b.c.x >= 0i)), var_2.a.c.xx, !vec2<bool>(var_0.b.e, var_0.b.e));
    let var_3 = Struct_5(Struct_4(var_2.d.d.x, (~var_0.e | var_0.e) ^ var_2.c.e, vec3<bool>(false, true, func_2(vec4<i32>(-30561i, u_input.a, 0i, var_0.b.c.x), vec4<i32>(2147483647i, u_input.a, -26811i, 0i), global2.x) > var_2.a.b.x)), firstLeadingBit(~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, var_0.b.c.x, var_0.b.c.x), _wgslsmith_add_i32(var_0.b.c.x, u_input.a), ~u_input.a)), Struct_2(var_0.b.b, Struct_1(func_2(vec4<i32>(-11535i, u_input.a, 0i, u_input.a), vec4<i32>(0i, 2147483647i, -2147483647i, 81198i), var_2.c.b.e) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 6867u, var_0.c), vec3<u32>(0u, 25063u, u_input.b)), -544f, -select(var_2.c.b.c, var_0.b.c, var_2.a.c), _wgslsmith_f_op_f32(-var_2.c.d.x), any(var_2.a.c)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.d.e.x, var_0.e.x, var_2.d.c, 1u)), select(~vec4<u32>(var_0.b.a, var_0.c, u_input.b, 14284u), vec4<u32>(39375u, 70388u, 0u, 0u), select(vec4<bool>(true, global2.x, var_0.b.e, var_0.b.e), vec4<bool>(var_2.d.b.e, var_2.c.b.e, true, true), false))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.c.b.b, _wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(floor(var_2.a.a)), _wgslsmith_f_op_f32(var_2.a.a - var_2.d.d.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(var_0.b.b - 795f), _wgslsmith_f_op_f32(-var_2.c.b.b), 1232f))), vec2<u32>(~39885u, var_2.a.b.x)), var_2.c);
    global1 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, var_2.a.b.x >> (var_3.d.e.x % 32u)), firstLeadingBit(max(1u, 39388u))), ~_wgslsmith_add_u32(var_0.e.x, select(1u, 64060u, var_0.b.e))), ~var_2.d.c, ~min(~4294967295u << (~var_3.c.b.a % 32u), u_input.b));
}

