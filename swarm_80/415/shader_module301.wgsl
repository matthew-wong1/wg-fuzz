struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(1i, 41117i, 1i), vec3<i32>(-1i, 37431i, 1i), vec3<i32>(-56852i, 49797i, i32(-2147483648)), vec3<i32>(0i, 2895i, -49100i), vec3<i32>(-3467i, 1i, 2147483647i), vec3<i32>(-43353i, -17291i, 12821i), vec3<i32>(2147483647i, i32(-2147483648), -12695i), vec3<i32>(-16316i, 1i, 1i), vec3<i32>(1i, 15357i, 43358i), vec3<i32>(2147483647i, -2750i, 1i), vec3<i32>(i32(-2147483648), 1i, -15544i), vec3<i32>(-1i, 1i, -11388i), vec3<i32>(81723i, 1i, -28411i), vec3<i32>(i32(-2147483648), -1i, -21799i), vec3<i32>(1i, -41302i, 3604i), vec3<i32>(2147483647i, -59031i, 40213i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(32736i, -66848i, 2147483647i), vec3<i32>(8952i, 0i, 0i), vec3<i32>(0i, 40838i, 8747i), vec3<i32>(-18957i, i32(-2147483648), -22779i), vec3<i32>(-8375i, i32(-2147483648), i32(-2147483648)));

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 53526u) << (~(~arg_0.xy) % vec2<u32>(32u)), arg_0.xx) ^ (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 69264u), vec2<u32>(94780u, arg_2.b.c)), vec2<u32>(4294967295u, arg_2.b.c)), vec2<u32>(0u, ~37374u)) >> (_wgslsmith_add_u32(~firstLeadingBit(arg_2.b.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, arg_3), ~arg_2.b.c)) % 32u));
    let var_1 = ~(~firstTrailingBit(arg_0));
    var var_2 = abs(~_wgslsmith_add_vec4_u32(select(vec4<u32>(var_0, 45281u, var_1.x, arg_2.b.c), vec4<u32>(58871u, var_0, 4757u, 1u), arg_2.b.a) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 4294967295u, arg_3, arg_2.b.c), vec4<u32>(var_1.x, u_input.a, u_input.c, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 10986u, var_1.x, 58681u), vec4<u32>(1u, arg_2.b.c, u_input.b, arg_0.x))));
    let var_3 = arg_2.a.a.x & (false || arg_1.a.x);
    global0 = array<i32, 12>();
    return arg_1.a.x || true;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.c;
    global2 = array<vec2<u32>, 5>();
    let var_1 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1818f), _wgslsmith_f_op_f32(-766f - -874f), func_3(vec3<u32>(var_0, 33544u, var_0), Struct_2(vec2<bool>(false, true)), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_1(true, vec2<f32>(-713f, -216f), 57103u, 594f, 1i)), var_0))) + _wgslsmith_f_op_f32(round(-1121f))), -741f), countOneBits(min(u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 38035u, 11166u), vec3<u32>(0u, u_input.b, u_input.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(866f - -1439f), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2166f)), _wgslsmith_f_op_f32(select(-357f, -329f, false))))), 1790f, true)), reverseBits(0i));
    let var_2 = -vec4<i32>(abs(global0[_wgslsmith_index_u32(0u, 12u)]), -(~(~19377i)), ~(-59266i) << ((_wgslsmith_div_u32(47170u, u_input.c) | ~14257u) % 32u), _wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(~4294967295u, 22u)], global1[_wgslsmith_index_u32(~var_0, 22u)])));
    var var_3 = !select(select(vec3<bool>(var_1.a, any(vec2<bool>(false, false)), 1i != u_input.e.x), vec3<bool>(false, global0[_wgslsmith_index_u32(66623u, 12u)] >= 1i, true), !select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a)), select(vec3<bool>(func_3(vec3<u32>(4294967295u, 12327u, 96212u), Struct_2(vec2<bool>(false, false)), Struct_3(Struct_2(vec2<bool>(var_1.a, true)), var_1), 1u), true, var_1.a), !vec3<bool>(false, var_1.a, var_1.a), !(u_input.d != var_1.e)), !select(!vec3<bool>(true, var_1.a, var_1.a), !vec3<bool>(var_1.a, var_1.a, true), var_1.a || var_1.a));
    return Struct_2(select(select(!select(var_3.yz, var_3.yy, var_1.a), vec2<bool>(true, true), !var_3.x), var_3.zy, var_3.zz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(arg_0.b.e, arg_0.b.e) | _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(~global0[_wgslsmith_index_u32(arg_0.b.c, 12u)]), firstLeadingBit(u_input.e.x)), vec2<i32>(u_input.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(8455i, -39487i), u_input.d)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, 655f, -1212f, arg_2.d) * vec4<f32>(arg_0.b.d, -841f, 1000f, arg_2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, -734f, -138f, arg_2.d)))), vec4<f32>(-317f, _wgslsmith_f_op_f32(arg_0.b.b.x - -1075f), arg_0.b.b.x, _wgslsmith_f_op_f32(755f * 112f)), !select(vec4<bool>(false, false, true, arg_2.a), vec4<bool>(false, arg_3.x, false, false), vec4<bool>(arg_3.x, true, false, true))))));
    return arg_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    let var_0 = 4294967295u;
    var var_1 = abs(~(~(vec2<u32>(u_input.a, u_input.b) << (global2[_wgslsmith_index_u32(u_input.b, 5u)] % vec2<u32>(32u))) & countOneBits(global2[_wgslsmith_index_u32(firstTrailingBit(arg_1.a.c), 5u)])));
    let var_2 = _wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, abs(64182u))), countOneBits(global2[_wgslsmith_index_u32(min(u_input.c, 24550u), 5u)]), vec2<u32>(_wgslsmith_mod_u32(~47239u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(var_1.x, 0u))), 13940u));
    var_1 = global2[_wgslsmith_index_u32(12331u, 5u)];
    global2 = array<vec2<u32>, 5>();
    return Struct_5(func_4(Struct_3(func_2(), Struct_1(arg_0.a, vec2<f32>(arg_1.a.b.x, -1913f), reverseBits(1u), -1431f, i32(-1i) * -1i)), func_2(), arg_0, vec3<bool>(any(!vec4<bool>(true, true, arg_2, arg_0.a)), true, func_3(select(vec3<u32>(u_input.c, var_1.x, 13837u), vec3<u32>(45613u, var_2.x, var_2.x), true), Struct_2(vec2<bool>(true, false)), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_1(true, arg_0.b, var_2.x, 350f, arg_1.a.e)), 1u))));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(func_5(Struct_1(func_4(Struct_3(Struct_2(vec2<bool>(arg_0.a.a, false)), Struct_1(false, vec2<f32>(-1181f, -1060f), arg_0.a.c, arg_0.a.d, global0[_wgslsmith_index_u32(98345u, 12u)])), func_2(), arg_0.a, select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.a.a, false, arg_0.a.a), true)).a, vec2<f32>(-766f, _wgslsmith_f_op_f32(min(arg_1.x, 1294f))), ~arg_0.a.c, 246f, -22637i), func_5(Struct_1(arg_0.a.a, _wgslsmith_f_op_vec2_f32(arg_1.yy + arg_0.a.b), abs(u_input.a), _wgslsmith_f_op_f32(arg_0.a.d - 412f), _wgslsmith_mod_i32(-12151i, arg_0.a.e)), Struct_5(Struct_1(arg_0.a.a, arg_0.a.b, u_input.c, -643f, 0i)), true), select(true, true, !arg_0.a.a)).a.c, 12u)], 4294967295u, false, Struct_2(!select(vec2<bool>(true, arg_0.a.a), func_2().a, func_2().a.x)), ~vec3<u32>(_wgslsmith_mod_u32(0u, u_input.a), 14116u, ~u_input.c) ^ _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, u_input.c, arg_0.a.c) >> (vec3<u32>(u_input.b, arg_0.a.c, 50289u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(arg_0.a.c, u_input.b), 4294967295u, 1u)));
    global0 = array<i32, 12>();
    var var_1 = 1i;
    let var_2 = var_0.d.a;
    var var_3 = select(!select(vec3<bool>(!var_0.c, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false)), any(vec3<bool>(var_2.x, var_0.c, true))), true), !vec3<bool>(all(vec2<bool>(var_0.c, false)), func_2().a.x, arg_1.x <= arg_0.a.d), func_3(vec3<u32>(firstLeadingBit(arg_0.a.c), 4294967295u, arg_0.a.c), Struct_2(!var_2), Struct_3(func_2(), func_5(arg_0.a, func_5(arg_0.a, Struct_5(Struct_1(true, arg_1.xx, 4294967295u, -929f, global0[_wgslsmith_index_u32(arg_0.a.c, 12u)])), arg_0.a.a), var_2.x != var_0.d.a.x).a), 0u));
    return var_0;
}

fn func_1() -> Struct_4 {
    let var_0 = select(u_input.c, u_input.a, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = array<i32, 12>();
    return func_6(func_5(func_4(Struct_3(func_2(), Struct_1(false, vec2<f32>(-246f, 305f), 1u, 1279f, -69404i)), func_2(), Struct_1(all(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1742f, -1195f) * vec2<f32>(864f, -848f)), 55633u, _wgslsmith_f_op_f32(trunc(400f)), select(u_input.d, u_input.e.x, false)), vec3<bool>(true, true, true)), Struct_5(Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, -451f)), select(4294967295u, var_0, true), _wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(global0[_wgslsmith_index_u32(1u, 12u)], 2147483647i)))), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2072f, -308f, _wgslsmith_f_op_f32(floor(-171f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, -611f, 929f) * vec3<f32>(-2370f, -1000f, -1079f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(265f, -2159f, 1998f) - vec3<f32>(448f, -1000f, -930f))), vec3<bool>(true, any(vec2<bool>(true, true)), true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), -859f, 1833f))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_4) -> Struct_3 {
    global2 = array<vec2<u32>, 5>();
    let var_0 = _wgslsmith_mod_vec2_i32(~(-(select(vec2<i32>(global0[_wgslsmith_index_u32(21031u, 12u)], arg_3.a), u_input.e.xz, false) ^ u_input.e.xy)), u_input.e.xy);
    var var_1 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.c, arg_2.a.c), _wgslsmith_div_u32(~countOneBits(26310u), firstLeadingBit(arg_3.e.x)), 4294967295u) << (_wgslsmith_mod_u32(func_1().b, arg_3.b) % 32u);
    var var_2 = true;
    let var_3 = Struct_4(arg_0.a, func_1().e.x, any(select(select(!vec3<bool>(true, arg_3.c, true), !vec3<bool>(false, arg_0.c, arg_1.a.x), !arg_3.c), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, true, true), select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_2.a.a, false, arg_3.c), vec3<bool>(true, false, true))))), Struct_2(!func_1().d.a), arg_3.e);
    return Struct_3(arg_0.d, arg_2.a);
}

fn func_8(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = i32(-1i) * -(~(-(~(-2147483647i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1013f, arg_0, arg_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-416f * arg_1.b.b.x) * _wgslsmith_f_op_f32(-arg_1.b.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)) + arg_1.b.b.x), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x - -1829f) + _wgslsmith_f_op_f32(arg_1.b.d * 214f)), -693f), _wgslsmith_f_op_f32(max(797f, arg_1.b.d))));
    let var_2 = true;
    let var_3 = func_6(func_5(Struct_1(!(var_2 & var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, -1215f)), abs(33235u), arg_0, 19761i), Struct_5(Struct_1(true, vec2<f32>(-1266f, 485f), 1u, 964f, ~u_input.d)), !(any(vec4<bool>(arg_1.a.a.x, var_2, arg_1.b.a, true)) == (1526f > arg_0))), _wgslsmith_f_op_vec3_f32(exp2(var_1.yzx)));
    var var_4 = var_3.a;
    return func_5(Struct_1(!func_1().d.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, 524f, var_2)), var_1.x) * func_5(arg_1.b, func_5(Struct_1(true, var_1.xw, var_3.e.x, arg_1.b.b.x, global0[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_5(Struct_1(arg_1.b.a, vec2<f32>(var_1.x, -720f), arg_1.b.c, -525f, var_0)), false), var_2).a.b), ~_wgslsmith_mult_u32(arg_1.b.c, 4294967295u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(167f, arg_1.b.d), 1337f), _wgslsmith_f_op_f32(-func_4(arg_1, Struct_2(arg_1.a.a), Struct_1(var_3.c, arg_1.b.b, var_3.e.x, -1000f, u_input.e.x), vec3<bool>(var_3.d.a.x, arg_1.b.a, var_3.c)).b.x)), u_input.e.x), func_5(arg_1.b, func_5(Struct_1(var_3.c, _wgslsmith_f_op_vec2_f32(abs(arg_1.b.b)), arg_1.b.c, _wgslsmith_f_op_f32(var_1.x * 1317f), i32(-1i) * -1i), Struct_5(Struct_1(false, vec2<f32>(arg_0, arg_1.b.b.x), 9226u, 170f, arg_1.b.e)), arg_1.b.a), !(!(!arg_1.a.a.x))), !(!(all(vec3<bool>(true, true, false)) | var_3.d.a.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1321f)))), 990f, !select(false, true, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1859f))) + 927f)), func_7(func_1(), Struct_2(vec2<bool>(true, all(vec4<bool>(true, true, false, true)))), Struct_5(func_4(Struct_3(Struct_2(vec2<bool>(false, true)), Struct_1(true, vec2<f32>(1876f, -737f), u_input.c, 1540f, 23302i)), func_6(Struct_5(Struct_1(true, vec2<f32>(191f, -946f), 1u, 671f, u_input.e.x)), vec3<f32>(-1373f, 399f, 1000f)).d, Struct_1(true, vec2<f32>(-1165f, -1008f), u_input.a, 445f, -2147483647i), vec3<bool>(true, true, true))), Struct_4(1i, ~22216u, all(vec3<bool>(false, false, true)), func_6(func_5(Struct_1(false, vec2<f32>(1152f, -489f), u_input.b, -2115f, -3205i), Struct_5(Struct_1(false, vec2<f32>(-1000f, -2258f), u_input.b, 119f, global0[_wgslsmith_index_u32(1u, 12u)])), false), vec3<f32>(898f, -197f, 363f)).d, min(vec3<u32>(u_input.b, 4294967295u, 33714u) >> (vec3<u32>(u_input.c, u_input.a, u_input.c) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, u_input.c)))));
    let var_1 = ~1i;
    let var_2 = var_0.a;
    let var_3 = -50251i;
    var var_4 = func_1();
    let var_5 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(13938i, var_3, 2147483647i, ~var_0.e));
}

