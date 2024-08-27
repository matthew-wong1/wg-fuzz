struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 11>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<u32>(4294967295u, 8283u, 27166u, 4103u), 134884u, Struct_1(38797i, vec3<u32>(5205u, 4294967295u, 16517u), vec3<u32>(44408u, 25350u, 60023u), 25127u, vec3<f32>(1000f, 472f, -427f)), Struct_1(-2420i, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(12759u, 1u, 101981u), 0u, vec3<f32>(372f, 1053f, -686f)), false), false, 1u, Struct_1(-5889i, vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 52929u, 5985u), 4294967295u, vec3<f32>(-1707f, 1325f, 204f)));

var<private> global3: array<i32, 11> = array<i32, 11>(25280i, 1i, i32(-2147483648), 12897i, 1i, -2644i, 1i, -1i, 2147483647i, -26495i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_4(~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.d.d, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 0u, 1u)), vec3<u32>(0u, global2.d.d, u_input.e.x))), 11u)], _wgslsmith_mod_vec4_u32(vec4<u32>(min(arg_0.d.a.x, 4294967295u & arg_0.c.d.b.x), 4294967295u, 1u, 1u >> (u_input.d % 32u)), countOneBits(_wgslsmith_clamp_vec4_u32(arg_0.b, ~arg_0.c.a.a, ~arg_0.c.a.a))), Struct_3(arg_0.c.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_0.d.d.b.x), firstTrailingBit(u_input.e.x)) == arg_0.d.c.d, _wgslsmith_div_u32(~19284u, _wgslsmith_mod_u32(arg_0.b.x, u_input.d) & ~global2.c), global2.d), arg_0.d);
    global0 = array<vec2<u32>, 11>();
    global3 = array<i32, 11>();
    var var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, global2.a.c.a, 2147483647i), vec3<i32>(u_input.b, u_input.a.x, global3[_wgslsmith_index_u32(23956u, 11u)]) | vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.e.x, 11u)], 0i), vec3<i32>(-34773i, arg_0.a, -1i) >> (vec3<u32>(global2.c, global2.d.b.x, u_input.e.x) % vec3<u32>(32u))), ~abs(vec3<i32>(989i, arg_0.a, global2.a.c.a))), min(_wgslsmith_dot_vec2_i32(u_input.a, select(u_input.a, u_input.a, vec2<bool>(var_0.c.a.e, arg_3.x))), arg_0.c.a.d.a)), select(~firstTrailingBit(2147483647i), _wgslsmith_div_i32(arg_0.d.d.a, -(i32(-1i) * -30577i)), all(select(!vec4<bool>(true, false, var_0.d.e, true), !vec4<bool>(true, true, arg_0.c.a.e, var_0.d.e), arg_1 | arg_1))));
    var var_2 = ~_wgslsmith_mod_i32(~var_1.x & countOneBits(0i), i32(-1i) * -1i) << (_wgslsmith_sub_u32(abs(firstTrailingBit(_wgslsmith_mult_u32(var_0.d.a.x, u_input.d))), global2.c) % 32u);
    return 1u;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global2 = Struct_3(Struct_2(vec4<u32>(global2.a.a.x, ~_wgslsmith_add_u32(14917u, global2.c), _wgslsmith_div_u32(~0u, u_input.e.x | u_input.d), global2.c), func_3(Struct_4(u_input.c, ~global2.a.a, Struct_3(Struct_2(global2.a.a, global2.c, global1[_wgslsmith_index_u32(29456u, 26u)], Struct_1(global2.a.d.a, vec3<u32>(u_input.d, 17965u, 31075u), vec3<u32>(32516u, u_input.d, u_input.d), 41566u, vec3<f32>(global2.d.e.x, global2.d.e.x, 741f)), arg_0), true, 38410u, global2.a.c), global2.a), !(global2.b || true), global2.d.e.xz, select(!vec2<bool>(arg_0, true), vec2<bool>(false, false), vec2<bool>(true, true))), Struct_1(-u_input.c, global2.a.a.xxw, vec3<u32>(_wgslsmith_mod_u32(40640u, u_input.d), 1u & global2.c, abs(39635u)), 0u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-210f, 2227f, -903f)))), global1[_wgslsmith_index_u32(~max(abs(u_input.d), u_input.e.x), 26u)], true), !(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2652i, -11529i, 0i), -2147483647i) <= firstTrailingBit(-2147483647i)), reverseBits(global2.d.b.x) << (firstTrailingBit(firstLeadingBit(_wgslsmith_add_u32(global2.c, 33460u))) % 32u), Struct_1(0i, ~global2.a.c.c, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.e.x, 47811u), vec3<u32>(0u, u_input.e.x, u_input.d)), _wgslsmith_mult_u32(func_3(Struct_4(-2147483647i, global2.a.a, Struct_3(Struct_2(vec4<u32>(global2.d.c.x, u_input.e.x, 21587u, u_input.e.x), 4294967295u, global2.a.c, Struct_1(-2147483647i, vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.e.x, global2.c, 4294967295u), u_input.e.x, vec3<f32>(global2.a.d.e.x, 1247f, global2.d.e.x)), global2.b), global2.b, u_input.e.x, Struct_1(2147483647i, vec3<u32>(0u, global2.d.d, 23020u), vec3<u32>(0u, u_input.e.x, 34265u), u_input.d, global2.d.e)), global2.a), global2.a.e, global2.a.d.e.zx, vec2<bool>(arg_0, true)), u_input.e.x), 1u), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1358f, global2.a.d.e.x, -1787f) * vec3<f32>(global2.a.d.e.x, 1617f, global2.d.e.x))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.a.c.e * global2.d.e))))));
    let var_0 = ~((_wgslsmith_clamp_i32(global2.a.d.a, -global2.a.d.a, abs(-31410i)) << (4294967295u % 32u)) << (_wgslsmith_div_u32(u_input.d, 0u) % 32u));
    global0 = array<vec2<u32>, 11>();
    let var_1 = 420f;
    var var_2 = vec3<u32>(~(~36411u), firstTrailingBit(~98942u), _wgslsmith_dot_vec3_u32(global2.d.c, global2.d.c));
    return ~(~vec4<u32>(25163u, var_2.x, global2.a.b, 0u) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(15850u, global2.c, global2.c, u_input.d) | global2.a.a, _wgslsmith_div_vec4_u32(global2.a.a, vec4<u32>(1u, u_input.d, global2.d.d, 0u))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_4 {
    global3 = array<i32, 11>();
    let var_0 = global2.a.a;
    global3 = array<i32, 11>();
    let var_1 = u_input.a;
    let var_2 = ~var_0.wx;
    return Struct_4(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0, -18262i, 0i) ^ ~2147483647i, countOneBits(var_1.x)), _wgslsmith_clamp_vec4_u32(func_2(true), vec4<u32>(~countOneBits(var_2.x), ~var_0.x ^ 25559u, u_input.e.x, ~4294967295u), ~vec4<u32>(firstLeadingBit(u_input.e.x), var_0.x, ~global2.d.b.x, 51489u)), Struct_3(Struct_2(~global2.a.a << ((vec4<u32>(0u, 0u, var_2.x, 32043u) & global2.a.a) % vec4<u32>(32u)), 4294967295u, global1[_wgslsmith_index_u32(~1u, 26u)], Struct_1(_wgslsmith_clamp_i32(global2.a.d.a, -29114i, u_input.c), vec3<u32>(var_0.x, var_2.x, u_input.d), var_0.yzz, 1u, _wgslsmith_f_op_vec3_f32(select(global2.a.c.e, vec3<f32>(320f, -838f, arg_1), true))), !(true & global2.b)), !any(vec3<bool>(global2.b, true, global2.b)), 1u, global2.a.c), global2.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    global3 = array<i32, 11>();
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.d.d.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-820f)) - 1570f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(-16819i, 1000f).c.d.e.x)))));
    let var_1 = arg_2;
    return Struct_3(Struct_2(_wgslsmith_sub_vec4_u32(~(~var_1.d.a), reverseBits(arg_2.b)), 1u, Struct_1(global2.a.d.a, var_1.b.zzz, vec3<u32>(~0u, ~38167u, countOneBits(arg_0.x)), _wgslsmith_mod_u32(func_3(Struct_4(-2082i, vec4<u32>(63873u, 21626u, 43228u, arg_2.b.x), Struct_3(Struct_2(var_1.b, arg_1.c.d, Struct_1(-10820i, vec3<u32>(global2.d.b.x, 1u, 120625u), vec3<u32>(36676u, 0u, u_input.d), 4294967295u, vec3<f32>(-407f, var_0, 2327f)), global2.a.c, true), var_1.c.b, 54221u, Struct_1(global2.a.d.a, arg_2.b.xyz, vec3<u32>(arg_2.c.d.d, global2.a.c.c.x, 0u), 4294967295u, arg_1.c.e)), var_1.c.a), global2.b, vec2<f32>(1261f, var_0), vec2<bool>(true, global2.b)), 46178u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.e.x, global2.d.e.x, var_1.d.d.e.x)) - vec3<f32>(-779f, -628f, -1192f))), Struct_1(var_1.d.d.a, _wgslsmith_clamp_vec3_u32(select(global2.a.c.b, global2.d.c, false), var_1.d.a.ywy, reverseBits(arg_2.b.zyx)), ~max(vec3<u32>(arg_1.d.c.x, 1253u, 44724u), arg_2.b.zwy), firstLeadingBit(_wgslsmith_mod_u32(arg_0.x, var_1.c.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.a.c.e) * var_1.d.d.e)), any(vec3<bool>(!arg_2.c.b, true, all(vec3<bool>(arg_2.d.e, global2.b, true))))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.e, true, false, true), true)), ~arg_0.x, func_1(2147483647i, arg_2.c.a.d.e.x).c.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a.a, max(_wgslsmith_sub_u32(u_input.e.x, min(u_input.e.x << (global2.c % 32u), 1u)), u_input.d), global2.d, Struct_1(reverseBits(global2.a.d.a & _wgslsmith_add_i32(-2147483647i, 2147483647i)), select(vec3<u32>(~u_input.e.x, 0u, ~37630u), global2.d.b, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global2.b), vec3<bool>(global2.b, true, true), vec3<bool>(global2.b, true, global2.b))), vec3<u32>(~(~59949u), u_input.d, 39671u), 38068u, _wgslsmith_f_op_vec3_f32(global2.d.e * _wgslsmith_f_op_vec3_f32(global2.d.e + vec3<f32>(-436f, -300f, -1494f)))), !all(vec3<bool>(global2.a.e, true, any(vec3<bool>(global2.b, global2.b, false)))));
    let var_1 = -4238i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.e.x), 264f));
    global0 = array<vec2<u32>, 11>();
    let var_3 = ~global2.a.a;
    var var_4 = ~(-_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, select(8807i, var_0.d.a, var_0.e)), _wgslsmith_mult_i32(global2.d.a, _wgslsmith_add_i32(var_0.d.a, global2.a.c.a))));
    var var_5 = func_4(firstLeadingBit(_wgslsmith_add_vec2_u32(~reverseBits(global0[_wgslsmith_index_u32(66089u, 11u)]), vec2<u32>(global2.a.b & 0u, var_3.x))), global2.a, func_1(~(-_wgslsmith_mod_i32(30804i, -38435i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f * _wgslsmith_f_op_f32(global2.d.e.x + -1000f)) + -520f)));
    var var_6 = u_input.a;
    let var_7 = !vec4<bool>(false, true, var_0.e, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_3.xz, Struct_2(firstTrailingBit(~global2.a.a), _wgslsmith_mod_u32(global2.a.b, 1u) ^ _wgslsmith_add_u32(var_5.a.d.b.x, u_input.e.x), var_0.c, func_1(u_input.c, _wgslsmith_f_op_f32(-global2.d.e.x)).c.a.d, select(true, true, var_0.e) & (1874f > var_5.d.e.x)), Struct_4(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(var_5.a.d.c.x, 11u)], -1591i) & _wgslsmith_clamp_i32(33478i, 0i, -1894i), ~vec4<u32>(26754u, 4294967295u, var_5.c, 133094u), Struct_3(Struct_2(var_5.a.a, var_3.x, Struct_1(var_5.d.a, vec3<u32>(u_input.d, var_0.a.x, 3926u), vec3<u32>(49261u, 0u, 4294967295u), 4294967295u, vec3<f32>(var_5.d.e.x, 1701f, global2.d.e.x)), Struct_1(-29329i, var_3.yzy, var_0.c.b, 0u, var_5.a.d.e), var_0.e), global2.a.e, 3808u, func_4(vec2<u32>(global2.c, 1u), Struct_2(var_0.a, 0u, global1[_wgslsmith_index_u32(global2.c, 26u)], var_5.a.d, true), Struct_4(2147483647i, vec4<u32>(var_3.x, 0u, 0u, global2.a.a.x), Struct_3(Struct_2(var_3, var_0.a.x, var_5.a.d, Struct_1(var_1, vec3<u32>(113026u, 0u, 39505u), var_5.a.d.b, 0u, global2.d.e), global2.b), var_5.a.e, 46565u, Struct_1(8976i, vec3<u32>(var_0.d.b.x, 0u, 1u), var_3.xwy, 4294967295u, var_0.c.e)), Struct_2(var_5.a.a, u_input.e.x, var_5.a.c, Struct_1(var_1, var_5.d.c, var_3.wzx, 4294967295u, global2.d.e), false))).d), func_1(~0i, global2.a.c.e.x).c.a)).a.d.a);
}

