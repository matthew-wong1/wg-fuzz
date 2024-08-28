struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(323u, false, 1u, vec4<bool>(false, false, true, true), 26646i), vec2<i32>(0i, 6271i), Struct_1(4294967295u, false, 1u, vec4<bool>(true, true, true, false), -12940i)), Struct_2(Struct_1(4294967295u, true, 42193u, vec4<bool>(false, true, false, true), 5015i), vec2<i32>(-1i, 63101i), Struct_1(32338u, false, 64318u, vec4<bool>(true, false, false, false), 1i)), Struct_2(Struct_1(0u, true, 0u, vec4<bool>(true, false, false, false), -6437i), vec2<i32>(8577i, -4014i), Struct_1(0u, true, 1u, vec4<bool>(true, false, true, true), -1i)), Struct_2(Struct_1(4294967295u, true, 55399u, vec4<bool>(true, false, true, true), 1i), vec2<i32>(-26941i, 2147483647i), Struct_1(0u, false, 4294967295u, vec4<bool>(false, false, true, true), 8435i)), Struct_2(Struct_1(33416u, false, 1u, vec4<bool>(false, false, true, false), -1i), vec2<i32>(1i, 20626i), Struct_1(0u, true, 38905u, vec4<bool>(false, true, false, false), -36872i)), Struct_2(Struct_1(51598u, true, 4294967295u, vec4<bool>(false, false, true, true), 0i), vec2<i32>(0i, 2147483647i), Struct_1(0u, false, 61986u, vec4<bool>(true, true, false, true), -16759i)), Struct_2(Struct_1(24413u, false, 2853u, vec4<bool>(true, false, true, true), 1i), vec2<i32>(-1i, -1i), Struct_1(37731u, false, 1u, vec4<bool>(true, false, false, true), -55885i)), Struct_2(Struct_1(15141u, true, 5306u, vec4<bool>(false, false, false, false), 2147483647i), vec2<i32>(-3866i, 11733i), Struct_1(4294967295u, true, 4294967295u, vec4<bool>(true, false, true, true), -39075i)), Struct_2(Struct_1(12510u, false, 0u, vec4<bool>(false, false, false, false), 1i), vec2<i32>(-7697i, i32(-2147483648)), Struct_1(1u, true, 4294967295u, vec4<bool>(true, true, false, false), -9478i)), Struct_2(Struct_1(4294967295u, false, 1u, vec4<bool>(true, false, true, false), 0i), vec2<i32>(1i, -29705i), Struct_1(0u, true, 4294967295u, vec4<bool>(true, false, true, true), 5919i)), Struct_2(Struct_1(0u, false, 4294967295u, vec4<bool>(false, true, false, false), -14414i), vec2<i32>(-54455i, 1i), Struct_1(46563u, true, 0u, vec4<bool>(true, true, false, false), 33978i)), Struct_2(Struct_1(45u, false, 0u, vec4<bool>(true, false, false, true), 0i), vec2<i32>(-11036i, 0i), Struct_1(1198u, true, 113460u, vec4<bool>(false, true, true, true), 0i)), Struct_2(Struct_1(35498u, true, 25029u, vec4<bool>(true, false, true, false), -22596i), vec2<i32>(-1i, -33116i), Struct_1(4294967295u, true, 21147u, vec4<bool>(true, false, false, true), -31409i)), Struct_2(Struct_1(0u, true, 12444u, vec4<bool>(true, false, false, true), i32(-2147483648)), vec2<i32>(-35813i, 9826i), Struct_1(74809u, true, 16023u, vec4<bool>(false, false, true, false), 2147483647i)), Struct_2(Struct_1(10480u, true, 4294967295u, vec4<bool>(true, true, false, true), 1i), vec2<i32>(0i, -93246i), Struct_1(0u, true, 16848u, vec4<bool>(true, true, false, false), -35442i)), Struct_2(Struct_1(19641u, false, 21150u, vec4<bool>(false, false, false, false), 51824i), vec2<i32>(-7749i, 0i), Struct_1(19956u, true, 27074u, vec4<bool>(true, false, false, false), 1i)), Struct_2(Struct_1(11901u, true, 1631u, vec4<bool>(false, true, false, true), 2147483647i), vec2<i32>(0i, -1i), Struct_1(86263u, false, 92390u, vec4<bool>(true, false, true, true), -22666i)), Struct_2(Struct_1(55359u, false, 1u, vec4<bool>(true, true, true, false), i32(-2147483648)), vec2<i32>(0i, -20596i), Struct_1(1u, true, 41701u, vec4<bool>(true, true, false, false), -21755i)), Struct_2(Struct_1(9872u, false, 15725u, vec4<bool>(false, true, false, true), 0i), vec2<i32>(2147483647i, 34126i), Struct_1(1u, false, 4294967295u, vec4<bool>(false, false, true, true), -23924i)), Struct_2(Struct_1(47682u, false, 4294967295u, vec4<bool>(true, true, true, true), 24353i), vec2<i32>(1i, -13574i), Struct_1(23714u, false, 4294967295u, vec4<bool>(false, true, false, false), -40881i)), Struct_2(Struct_1(66290u, true, 2160u, vec4<bool>(true, false, false, false), 2147483647i), vec2<i32>(-4419i, -10847i), Struct_1(52864u, true, 0u, vec4<bool>(false, false, false, false), i32(-2147483648))), Struct_2(Struct_1(21128u, true, 4294967295u, vec4<bool>(true, true, false, false), 1i), vec2<i32>(i32(-2147483648), 13172i), Struct_1(24904u, false, 118292u, vec4<bool>(false, true, false, true), 15297i)), Struct_2(Struct_1(1u, true, 13347u, vec4<bool>(false, false, true, false), 11714i), vec2<i32>(-22639i, -1i), Struct_1(28538u, false, 0u, vec4<bool>(true, true, true, true), 2147483647i)), Struct_2(Struct_1(1u, true, 55078u, vec4<bool>(false, false, true, true), 1i), vec2<i32>(2147483647i, -3970i), Struct_1(1u, true, 21709u, vec4<bool>(true, false, false, false), 10688i)), Struct_2(Struct_1(4294967295u, false, 0u, vec4<bool>(true, true, true, true), 7610i), vec2<i32>(-2565i, -1i), Struct_1(1u, true, 4294967295u, vec4<bool>(true, false, false, true), 54574i)), Struct_2(Struct_1(42985u, true, 0u, vec4<bool>(true, true, false, true), 1i), vec2<i32>(2147483647i, 67696i), Struct_1(91487u, false, 24153u, vec4<bool>(true, true, true, true), 2147483647i)), Struct_2(Struct_1(0u, false, 22439u, vec4<bool>(true, false, true, false), 1i), vec2<i32>(-26221i, 1i), Struct_1(32725u, true, 17511u, vec4<bool>(true, true, false, true), -1i)), Struct_2(Struct_1(18002u, false, 8860u, vec4<bool>(false, true, false, true), -1i), vec2<i32>(20002i, 12437i), Struct_1(16606u, true, 4294967295u, vec4<bool>(true, false, true, true), -1i)), Struct_2(Struct_1(76399u, false, 99663u, vec4<bool>(false, false, false, false), 0i), vec2<i32>(1i, 0i), Struct_1(61752u, false, 4294967295u, vec4<bool>(true, true, false, false), -1i)));

var<private> global1: array<vec4<u32>, 12>;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -firstTrailingBit(-vec2<i32>(u_input.b.x, arg_0.a.e)), -vec2<i32>((31378i & u_input.b.x) | u_input.b.x, _wgslsmith_sub_i32(reverseBits(arg_0.a.e), 10190i)));
    let var_0 = arg_0.a;
    let var_1 = vec2<f32>(-499f, -400f);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(floor(-1719f)));
    var var_3 = Struct_1(~var_0.c, var_0.b, 38986u, !select(vec4<bool>(true, var_0.b, var_0.d.x, arg_0.c.b | var_0.b), select(select(arg_0.a.d, vec4<bool>(true, true, true, arg_0.c.b), false), vec4<bool>(var_0.b, true, true, var_0.d.x), true), all(select(arg_0.c.d, vec4<bool>(true, false, false, var_0.d.x), var_0.d))), -arg_0.b.x);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a, 4294967295u, _wgslsmith_clamp_u32(arg_0.c.c, u_input.c.x, arg_0.c.c)), _wgslsmith_div_u32(firstTrailingBit(0u), u_input.c.x)), ~0u, _wgslsmith_sub_u32(19925u | var_3.c, 4294967295u >> (1u % 32u)) << (var_0.c % 32u), ~36147u), (global1[_wgslsmith_index_u32(firstLeadingBit(var_3.a) | (var_0.c & var_3.a), 12u)] ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, var_0.c, var_3.c), global1[_wgslsmith_index_u32(var_0.c, 12u)]), global1[_wgslsmith_index_u32(4294967295u, 12u)], all(var_0.d))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(6693u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)] & vec4<u32>(9862u, var_0.a, var_0.a, arg_0.c.c)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1927u, var_3.a, arg_0.c.a, arg_0.c.a), vec4<u32>(var_0.c, u_input.a.x, var_0.c, var_0.a)), ~global1[_wgslsmith_index_u32(111609u, 12u)] | select(global1[_wgslsmith_index_u32(arg_0.a.c, 12u)], vec4<u32>(arg_0.a.a, 0u, var_3.c, 4294967295u), arg_0.a.d)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    global0 = array<Struct_2, 29>();
    var var_0 = global0[_wgslsmith_index_u32(11222u, 29u)];
    global2 = -2147483647i;
    let var_1 = ~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.a.x, arg_1, var_0.a.c, arg_1), vec4<u32>(11733u, var_0.a.a, arg_1, u_input.c.x) & global1[_wgslsmith_index_u32(var_0.c.c, 12u)]), max(vec4<u32>(u_input.a.x, ~65077u, 4294967295u, ~0u), func_3(global0[_wgslsmith_index_u32(abs(1u), 29u)])));
    var var_2 = ~50541i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_f32(f32(-1f) * -300f), !arg_3.b))) >= _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(vec3<i32>(1i, arg_3.e, arg_1)), u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, -144f, 1214f) * vec3<f32>(-100f, -1023f, 618f)))) + -1376f));
    let var_2 = var_0.d;
    var_1 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, 801f, 1000f, 1201f) * vec4<f32>(-886f, 249f, -598f, 1466f))) + vec4<f32>(_wgslsmith_div_f32(731f, -1000f), -636f, _wgslsmith_f_op_f32(-2547f * -504f), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-470f, 821f, -1498f, -1033f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, -566f, 385f, -1512f) + vec4<f32>(733f, 293f, 133f, -423f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -895f, 306f, 1000f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-663f, 352f, 796f, 1000f), vec4<f32>(-1000f, 1300f, -517f, 826f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, -1000f, 171f, 1089f) * vec4<f32>(-992f, -813f, -163f, 165f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1841f, -1448f, -1615f, 552f), vec4<f32>(288f, 1556f, -948f, -1055f), false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1207f, 1577f, -532f, 1000f)))), !var_0.d));
    return select(firstLeadingBit(vec2<u32>(28269u, ~44826u)), arg_0.yz, select(!select(vec2<bool>(arg_3.d.x, var_0.b), var_0.d.wy, arg_2.x), vec2<bool>(arg_3.d.x, !var_0.d.x), select(arg_3.d.zx, arg_2, arg_2.x && false))) << (~arg_0.yx % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1833f)));
    var var_1 = global0[_wgslsmith_index_u32(~38148u, 29u)];
    let var_2 = select(func_1(abs(vec3<u32>(var_1.a.c, abs(4294967295u), 4294967295u)), u_input.b.x, !vec2<bool>(true, 0u > u_input.c.x), Struct_1(u_input.a.x, true, firstTrailingBit(~u_input.a.x), !select(var_1.c.d, vec4<bool>(false, true, var_1.a.b, var_1.c.b), false), u_input.b.x)), ~u_input.a, vec2<bool>(!(~var_1.a.c == u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_1.a.c, 0u) << (vec2<u32>(u_input.a.x, var_1.a.c) % vec2<u32>(32u))) == 1u));
    global2 = select(~4095i, -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_1.a.e, 2147483647i), -1i), vec2<i32>(var_1.a.e, _wgslsmith_clamp_i32(-9459i, var_1.a.e, 0i))), -2147483647i < u_input.b.x);
    var var_3 = var_1.c.d;
    global1 = array<vec4<u32>, 12>();
    var_1 = global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(func_3(Struct_2(var_1.c, ~var_1.b, var_1.c)).x, 29u)]).x, 29u)];
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-281f, -789f) * _wgslsmith_f_op_f32(f32(-1f) * -245f))));
    global1 = array<vec4<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - -1231f)))), ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 43272u, 1u), vec3<u32>(111389u, var_1.c.c, u_input.c.x) >> (vec3<u32>(4294967295u, 46516u, 24913u) % vec3<u32>(32u)))), vec3<u32>(42468u, var_1.a.a, ~func_3(Struct_2(var_1.a, vec2<i32>(-1i, -1i), var_1.c)).x), ~_wgslsmith_div_u32(var_1.a.a, _wgslsmith_sub_u32(var_2.x, 18243u)) << (1u % 32u), vec3<u32>(_wgslsmith_div_u32(func_1(func_3(global0[_wgslsmith_index_u32(var_2.x, 29u)]).wyw, 1i, var_3.zw, var_1.a).x, min(var_1.a.c, var_2.x)), 1u, 1u));
}

