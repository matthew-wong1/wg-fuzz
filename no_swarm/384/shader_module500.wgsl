struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-1i, -52759i, -7375i, -1154i), vec4<i32>(i32(-2147483648), 2147483647i, -48231i, -1i), vec4<i32>(i32(-2147483648), -71356i, 6347i, -1i), vec4<i32>(15052i, 1378i, -1i, 6489i), vec4<i32>(47307i, 23657i, -1i, 35030i), vec4<i32>(1i, -1i, -20657i, -15738i), vec4<i32>(0i, -39794i, 0i, 2147483647i), vec4<i32>(-1i, 1i, -28660i, -25300i), vec4<i32>(14007i, 1i, 2147483647i, 1i), vec4<i32>(3926i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -6235i, 20858i, 22523i), vec4<i32>(2147483647i, 2147483647i, -149i, i32(-2147483648)), vec4<i32>(-20110i, 1i, 1i, i32(-2147483648)), vec4<i32>(505i, 0i, -82054i, -21922i), vec4<i32>(-1i, 13534i, -38798i, -1i), vec4<i32>(-1i, 9823i, 1i, -1i), vec4<i32>(i32(-2147483648), 23282i, -13580i, 40221i), vec4<i32>(25184i, i32(-2147483648), -28120i, -24381i), vec4<i32>(20367i, 1i, 2147483647i, 1i), vec4<i32>(-1i, 43595i, 15114i, -16935i), vec4<i32>(i32(-2147483648), 0i, 2994i, 10267i), vec4<i32>(-6518i, 42752i, i32(-2147483648), 1i), vec4<i32>(6669i, 27530i, 16440i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 13924i), vec4<i32>(i32(-2147483648), -53843i, 16198i, 10597i), vec4<i32>(1i, -21681i, -5705i, 2147483647i), vec4<i32>(-30139i, 2147483647i, 3720i, -1i), vec4<i32>(1i, 702i, 89098i, -1i));

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = 0u;
    let var_1 = vec3<i32>(select(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(76598i, 0i, u_input.a, u_input.c), global0[_wgslsmith_index_u32(4470u, 29u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26638u, 19335u, 66225u), vec3<u32>(4294967295u, 60978u, 1324u)), 29u)]), u_input.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -6073i, u_input.b), vec3<i32>(u_input.b, u_input.a, 13022i)) > (-12112i << (1u % 32u))), u_input.b, abs(_wgslsmith_mod_i32(u_input.b, select(u_input.b, -40026i, true)) >> (_wgslsmith_mod_u32(21514u, 4294967295u) % 32u)));
    let var_2 = true;
    var var_3 = vec2<u32>((1u | firstTrailingBit(0u)) & ~_wgslsmith_sub_u32(7452u, 0u), min(43530u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(32404u, 11169u), vec2<u32>(1u, 0u)))) | vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62120u, 44656u), vec2<u32>(16824u, 65655u)), _wgslsmith_div_u32(4294967295u, 1u)), ~_wgslsmith_add_u32(1u, ~19331u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(126f, global1.x, global1.x, -549f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -413f, global1.x) * vec4<f32>(-447f, -2294f, global1.x, global1.x))) + vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(1413f - 1169f), _wgslsmith_f_op_f32(max(global1.x, 1632f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1295f)), var_2, -1132f);
    return 0i ^ var_1.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> vec2<f32> {
    let var_0 = true;
    let var_1 = -vec3<i32>(reverseBits(_wgslsmith_add_i32(-1i, -u_input.b)), abs(-73417i), arg_1);
    var var_2 = -17184i;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(560f, global1.x), global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * global1.x))) < global1.x));
    var var_4 = _wgslsmith_f_op_f32(-var_3) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-875f))));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-306f * 962f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(840f, _wgslsmith_f_op_f32(-751f + var_3)) + _wgslsmith_div_f32(global1.x, global1.x))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>) -> bool {
    var var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b.a.wwz)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2101f, 1245f)), 1278f)), -1069f, -783f, arg_0.b.d) * vec4<f32>(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-405f))), _wgslsmith_f_op_f32(-global1.x), 362f));
    var var_2 = arg_0;
    var_0 = Struct_2(!select(vec2<bool>(false, var_2.b.c), select(!var_0.a, !var_2.a, vec2<bool>(arg_0.c.c, false)), vec2<bool>(true, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x + var_2.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-759f * var_1.x) + _wgslsmith_div_f32(var_2.c.d, var_0.c.d)), arg_0.c.b.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(57713u, 38904u, 0u), vec3<u32>(10421u, 4294967295u, 4294967295u))), func_3())), _wgslsmith_f_op_f32(-var_0.b.b.x) > 274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 1f)), arg_0.b);
    return any(vec2<bool>(!arg_0.b.c, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = vec3<bool>(true, any(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, func_2(Struct_2(vec2<bool>(false, true), Struct_1(vec4<f32>(global1.x, global1.x, global1.x, 1000f), global1.xx, true, global1.x), Struct_1(vec4<f32>(1325f, global1.x, -1000f, 1277f), vec2<f32>(global1.x, global1.x), true, global1.x)), vec4<bool>(true, true, true, false), vec3<i32>(-59026i, u_input.a, u_input.c)), true))), any(vec3<bool>(select(all(vec4<bool>(true, false, true, false)), true, any(vec2<bool>(false, false))), !(16550u < arg_0.x), true)));
    return ~(~_wgslsmith_div_u32(countOneBits(6695u & arg_1), abs(arg_1 ^ 26481u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_1 {
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_2(select(!select(select(vec2<bool>(true, false), vec2<bool>(arg_1.c, false), arg_1.c), vec2<bool>(true, true), arg_1.c || arg_1.c), vec2<bool>(arg_1.c, func_5(func_5(arg_1, arg_1.d, 14965u, arg_0.x), arg_0.x, firstLeadingBit(20403u), func_5(Struct_1(vec4<f32>(-1301f, arg_0.x, arg_0.x, 1139f), vec2<f32>(arg_0.x, 438f), arg_1.c, 1225f), global1.x, 43775u, -1840f).a.x).c), !vec2<bool>(arg_1.c, any(vec4<bool>(false, true, arg_1.c, false)))), Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(abs(vec3<u32>(1u, 1u, 343u)), _wgslsmith_dot_vec3_i32(arg_2.zyw, arg_2.xwx))) + func_5(func_5(Struct_1(vec4<f32>(arg_1.b.x, 1954f, -156f, -713f), arg_1.a.zw, false, 1564f), arg_0.x, 5605u, arg_1.b.x), arg_1.b.x, 4294967295u, _wgslsmith_f_op_f32(-1167f - arg_1.a.x)).a.ww), any(!select(vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(false, true, arg_1.c), vec3<bool>(arg_1.c, true, true))), -185f), func_5(arg_1, 594f, 1u, 109f));
    let var_1 = u_input.d >> (~vec2<u32>(~1u, firstLeadingBit(func_1(vec3<u32>(1u, 0u, 44478u), 0u, 0u))) % vec2<u32>(32u));
    var var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(-var_0.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))));
    let var_3 = firstTrailingBit(arg_2.zxy);
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x))), _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_div_f32(-936f, _wgslsmith_f_op_f32(ceil(-162f))))), arg_1.b.x, -2206f);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!(global1.x > _wgslsmith_div_f32(global1.x, global1.x)), func_6(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-498f, global1.x))))), func_5(Struct_1(vec4<f32>(-1691f, 1096f, -657f, 207f), global1.zy, false, 170f), _wgslsmith_f_op_f32(f32(-1f) * -737f), func_1(vec3<u32>(0u, 30750u, 0u), 18412u, 24394u), _wgslsmith_div_f32(-1391f, 160f)), global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(0u, 1u)), 29u)]), false, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), all(vec4<bool>(false, false, true, false))))), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false))), !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, u_input.a == u_input.d.x, -103f < global1.x), u_input.c > ~u_input.b));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 116f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(select(-998f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1045f, global1.x))), _wgslsmith_mod_i32(u_input.a, -1i) < u_input.a))));
    let var_1 = _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(func_1(~vec3<u32>(54369u, 53500u, 20713u), ~43674u, _wgslsmith_clamp_u32(0u, 37118u, 4294967295u)), ~_wgslsmith_sub_u32(1u, 1u), 4294967295u, ~56769u), abs(max(select(vec4<u32>(4294967295u, 1u, 1u, 13931u), vec4<u32>(4294967295u, 122562u, 4851u, 0u), false), ~vec4<u32>(1u, 4294967295u, 4294967295u, 20487u))), vec4<bool>(true, var_0.x, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, 1u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u))), firstLeadingBit(~5736u), 66518u), ~(vec4<u32>(1u, 1u, 1u, 1u) << (firstLeadingBit(vec4<u32>(1u, 42798u, 27860u, 19669u)) % vec4<u32>(32u)))));
    global0 = array<vec4<i32>, 29>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f + -575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) * global1.x))) + global1.x), 769f);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(func_5(Struct_1(vec4<f32>(1000f, -1066f, -368f, -1459f), global1.yy, var_0.x, global1.x), global1.x, 4294967295u, global1.x).b.x, -752f, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(select(global1.x, -1375f, true))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1000f, global1.x, global1.x) * vec4<f32>(1517f, -401f, -133f, -206f))))))), (_wgslsmith_add_u32(26609u, func_1(var_1.wyz, var_1.x, var_1.x)) & max(_wgslsmith_mod_u32(4294967295u, var_1.x), _wgslsmith_mod_u32(0u, 1u))) & ~_wgslsmith_mult_u32(firstLeadingBit(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 55101u, var_1.x), vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x))), 0u, 41784u, _wgslsmith_f_op_f32(-global1.x));
}

