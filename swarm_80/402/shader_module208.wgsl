struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: Struct_3;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(1i, Struct_1(vec3<bool>(false, true, true), 0i), vec3<f32>(-482f, 1000f, 1000f), vec2<f32>(-545f, -719f)), Struct_2(-24921i, Struct_1(vec3<bool>(false, true, false), -1i), vec3<f32>(-186f, 298f, 502f), vec2<f32>(1000f, -1000f)), Struct_2(2147483647i, Struct_1(vec3<bool>(false, true, true), -16532i), vec3<f32>(525f, 686f, -2042f), vec2<f32>(-1042f, -1511f)), Struct_2(6934i, Struct_1(vec3<bool>(false, false, false), -78392i), vec3<f32>(-595f, 222f, 955f), vec2<f32>(493f, 169f)), Struct_2(-16293i, Struct_1(vec3<bool>(false, true, false), -1i), vec3<f32>(-843f, -495f, -2044f), vec2<f32>(-241f, -100f)), Struct_2(-27840i, Struct_1(vec3<bool>(false, false, true), 1i), vec3<f32>(-725f, -2129f, 281f), vec2<f32>(760f, -911f)), Struct_2(2147483647i, Struct_1(vec3<bool>(true, true, true), 7667i), vec3<f32>(1068f, -1364f, -118f), vec2<f32>(341f, -313f)), Struct_2(0i, Struct_1(vec3<bool>(false, true, false), -1i), vec3<f32>(425f, 1222f, -926f), vec2<f32>(-1710f, -1171f)), Struct_2(-1i, Struct_1(vec3<bool>(true, true, true), -1i), vec3<f32>(-865f, -1956f, -384f), vec2<f32>(-1778f, 1449f)), Struct_2(26230i, Struct_1(vec3<bool>(false, false, false), -1i), vec3<f32>(321f, -1450f, 854f), vec2<f32>(131f, -1256f)), Struct_2(0i, Struct_1(vec3<bool>(true, false, true), 2147483647i), vec3<f32>(-364f, -1000f, -397f), vec2<f32>(1000f, 2012f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    global0 = array<u32, 3>();
    global1 = Struct_3(15337i, all(!vec2<bool>(all(vec4<bool>(global1.d.a.x, global2.x, global1.b, true)), false | global1.d.a.x)), abs(global1.c), global1.d, global1.e);
    global3 = array<Struct_2, 11>();
    return global1.e.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    global3 = array<Struct_2, 11>();
    var var_0 = false;
    global1 = Struct_3(0i, all(!vec4<bool>(false, all(arg_2.d.a.zz), global1.b, all(vec4<bool>(arg_2.b, true, arg_2.d.a.x, global1.b)))), global1.e.x >> (func_3() % 32u), global1.d, countOneBits(abs(~(~vec4<u32>(global0[_wgslsmith_index_u32(arg_2.e.x, 3u)], 1u, 100594u, 1582u)))));
    var var_1 = vec4<bool>(all(!vec4<bool>(!arg_2.d.a.x, true, global1.d.a.x && global2.x, global1.d.a.x)), all(global1.d.a.yy), true, global2.x);
    global3 = array<Struct_2, 11>();
    return Struct_1(!global1.d.a, _wgslsmith_sub_i32(arg_1 >> (~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.c, 3u)], 3u)]) % 32u), u_input.b.x));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(-582i, all(vec4<bool>(false, any(vec2<bool>(global2.x, false)), arg_0.a.x, true && global2.x)) | true, ~41505u, arg_0, vec4<u32>(min(4620u, _wgslsmith_clamp_u32(global1.c, 63794u, 48289u)), ~(global1.c ^ 0u), 134967u, 21208u) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(10613u, global1.e.x, global1.c, global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<u32>(global0[_wgslsmith_index_u32(14559u, 3u)], 29321u, 1u, global0[_wgslsmith_index_u32(7953u, 3u)]) | global1.e), firstLeadingBit(abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(75215u, 3u)], global1.e.x, global0[_wgslsmith_index_u32(1u, 3u)])))) % vec4<u32>(32u)));
    var var_1 = 2147483647i ^ (max(var_0.d.b, -3207i) << (var_0.c % 32u));
    let var_2 = Struct_1(!global1.d.a, _wgslsmith_sub_i32(~(-(i32(-1i) * -13032i)), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(45956i >> (var_0.c % 32u), var_0.a))));
    let var_3 = func_2(-2147483647i, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.b.yx), _wgslsmith_mod_i32(arg_0.b, _wgslsmith_dot_vec3_i32(u_input.b.wzw, u_input.b.xzx))), Struct_3(-2147483647i, all(func_2(_wgslsmith_dot_vec3_i32(u_input.b.zwz, u_input.b.yyz), -global1.a, Struct_3(0i, false, global0[_wgslsmith_index_u32(8186u, 3u)], Struct_1(arg_0.a, 69269i), vec4<u32>(global1.e.x, 0u, 5778u, 3481u))).a), _wgslsmith_mult_u32(countOneBits(select(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.e.x, 3u)], 3u)], true)), 0u), func_2(_wgslsmith_dot_vec3_i32(u_input.b.zzz, countOneBits(u_input.c)), u_input.c.x, Struct_3(-var_2.b, -14099i > var_0.d.b, global1.c, func_2(global1.d.b, 1i, Struct_3(u_input.c.x, global1.d.a.x, 52087u, var_0.d, global1.e)), vec4<u32>(23157u, 7502u, global1.c, global0[_wgslsmith_index_u32(4294967295u, 3u)]))), global1.e));
    var var_4 = global3[_wgslsmith_index_u32(var_0.c, 11u)];
    return _wgslsmith_add_u32(1u, ~global1.e.x);
}

fn func_5(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(vec3<bool>(global1.a <= _wgslsmith_div_i32(abs(global1.a), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), !(firstLeadingBit(93u) != abs(global1.c)), all(select(select(global1.d.a.yx, global1.d.a.yz, global1.d.a.zx), func_2(global1.d.b, -77694i, Struct_3(-1i, global1.b, 13899u, Struct_1(vec3<bool>(false, global1.d.a.x, false), -78446i), vec4<u32>(1u, global0[_wgslsmith_index_u32(40948u, 3u)], arg_1, arg_1))).a.zz, global1.d.a.zx))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 25710i, -920i), vec3<i32>(-33834i, global1.d.b, -1i)), -abs(u_input.c)), min(max(u_input.c, u_input.b.ywz), _wgslsmith_div_vec3_i32(u_input.b.xyz ^ u_input.c, -vec3<i32>(u_input.a.x, u_input.c.x, -1i)))));
    global3 = array<Struct_2, 11>();
    let var_1 = select(vec2<bool>(!all(!var_0.a.xy), arg_0 <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0, arg_0))))), !var_0.a.zx, 4294967295u < _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(global1.d), global0[_wgslsmith_index_u32(arg_1 & 4294967295u, 3u)], _wgslsmith_mult_u32(13951u, global1.c), arg_1 << (global1.c % 32u)), ~abs(global1.e)));
    let var_2 = arg_0;
    var_0 = func_2(var_0.b, _wgslsmith_add_i32(-(2147483647i | global1.a) << (4294967295u % 32u), u_input.c.x), Struct_3(_wgslsmith_sub_i32(firstLeadingBit(-27332i), -2842i) >> (1u % 32u), !global2.x, _wgslsmith_mult_u32(1u, 1u), Struct_1(global1.d.a, min(~u_input.b.x, _wgslsmith_mod_i32(16940i, var_0.b))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 32849u, _wgslsmith_mult_u32(1u, arg_1), _wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, global0[_wgslsmith_index_u32(37113u, 3u)]), global1.e) & global1.e)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2, var_2), -1198f));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(-firstLeadingBit(global1.d.b), !(arg_2.b.a.x == !arg_2.b.a.x), 107767u, func_2(global1.a >> (global0[_wgslsmith_index_u32(1u, 3u)] % 32u), select(~(-arg_2.b.b), reverseBits(1i), arg_2.b.a.x), Struct_3(i32(-1i) * -30374i, all(global1.d.a), ~global0[_wgslsmith_index_u32(global1.e.x, 3u)], Struct_1(func_2(2147483647i, -33973i, Struct_3(56445i, false, 58364u, Struct_1(arg_2.b.a, -1i), global1.e)).a, func_2(17320i, 0i, Struct_3(-46481i, true, 4294967295u, global1.d, vec4<u32>(4294967295u, global1.c, 1u, 1u))).b), ~reverseBits(global1.e))), vec4<u32>(_wgslsmith_mult_u32(global1.c, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 3u)], 0u)) & ~countOneBits(1u), ~65233u, func_4(func_2(arg_1 & arg_2.a, firstLeadingBit(2147483647i), Struct_3(1i, global2.x, 1u, Struct_1(vec3<bool>(false, arg_2.b.a.x, global2.x), u_input.a.x), vec4<u32>(6896u, global1.c, global1.e.x, 1u)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global1.c, ~0u), ~global1.e), 3u)]));
    var var_1 = Struct_3(2147483647i, true, (_wgslsmith_dot_vec4_u32(~global1.e, _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(52702u, 3u)], 1u, global0[_wgslsmith_index_u32(global1.c, 3u)], global1.e.x), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], var_0.c, 0u, 4294967295u))) | global1.c) ^ ~(~53634u >> (global1.c % 32u)), Struct_1(global1.d.a, ~global1.a), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(global1.e, vec4<u32>(45411u, global1.c, 1u, 116110u), select(vec4<bool>(arg_2.b.a.x, global2.x, true, true), vec4<bool>(global1.d.a.x, true, global2.x, true), global1.d.a.x)), vec4<u32>(1u, 46830u, global1.c, ~54074u)), min(firstLeadingBit(vec4<u32>(46845u, global1.c, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.e.x, 3u)], global1.e.x, 18739u, global0[_wgslsmith_index_u32(var_0.e.x, 3u)]), global1.e))));
    var_0 = Struct_3(_wgslsmith_dot_vec4_i32(abs(u_input.b & firstLeadingBit(u_input.b)), vec4<i32>(-1i, u_input.a.x, 1i, ~firstTrailingBit(2147483647i))), false, ~9467u, global1.d, var_1.e << ((~global1.e ^ vec4<u32>(global0[_wgslsmith_index_u32(var_1.c, 3u)] << (0u % 32u), abs(10493u), 1u, 4294967295u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_add_i32(~reverseBits(var_1.a), -2147483647i);
    let var_3 = -vec3<i32>((arg_2.a ^ (i32(-1i) * -18848i)) >> (global1.c % 32u), max(_wgslsmith_mod_i32(-499i, arg_2.a), ~(~62243i)), -4661i << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(29338u, 3u)], 1u) % 32u));
    return Struct_2(1i, var_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1174f, 1803f, _wgslsmith_f_op_f32(trunc(-1970f))), _wgslsmith_f_op_vec3_f32(min(arg_2.c, _wgslsmith_f_op_vec3_f32(arg_2.c * arg_2.c))), 847f <= _wgslsmith_f_op_f32(-arg_2.c.x)))), arg_2.d);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    let var_0 = select(!vec3<bool>(global2.x, global1.b, true), select(!(!select(vec3<bool>(global1.d.a.x, false, global1.d.a.x), vec3<bool>(false, true, global1.b), vec3<bool>(arg_0.a.x, global1.b, false))), vec3<bool>(!arg_0.a.x, arg_0.a.x, arg_0.a.x), false), select(select(vec3<bool>(any(arg_0.a), true, true), select(!vec3<bool>(global1.b, global1.d.a.x, global2.x), vec3<bool>(false, global2.x, false), !vec3<bool>(global2.x, global2.x, true)), !arg_0.a.x), vec3<bool>(false, all(!vec3<bool>(false, true, arg_0.a.x)), global1.b), !global1.d.a));
    global0 = array<u32, 3>();
    var var_1 = min(global1.a, countOneBits(-2147483647i ^ -global1.d.b)) & _wgslsmith_clamp_i32(86343i, 2147483647i & u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-arg_0.b, _wgslsmith_mod_i32(-55318i, global1.d.b)), u_input.c.x, _wgslsmith_dot_vec3_i32(min(u_input.c, vec3<i32>(22769i, 16039i, arg_0.b)), ~vec3<i32>(global1.d.b, arg_0.b, global1.a))));
    var var_2 = func_6(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-arg_1), func_4(func_2(u_input.b.x, arg_0.b, Struct_3(arg_0.b, false, global1.e.x, arg_0, global1.e))) >> (global1.e.x % 32u))), -5532i, global3[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69792u, 3u)] & global0[_wgslsmith_index_u32(func_4(global1.d), 3u)], 3u)] << (~(~4979u) % 32u)), 11u)]);
    global1 = Struct_3(-_wgslsmith_mod_i32(-arg_0.b, var_2.a), !(!(!func_6(var_2.d.x, u_input.b.x, global3[_wgslsmith_index_u32(1u, 11u)]).b.a.x)), global0[_wgslsmith_index_u32(1u, 3u)], func_6(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -1000f) - _wgslsmith_div_f32(arg_1, 1000f))), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(var_2.b.b, u_input.b.x, global1.d.b))), u_input.b.wxz), Struct_2(var_2.b.b, func_6(-726f, 1i, func_6(var_2.d.x, arg_0.b, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.e.x, 3u)], 11u)])).b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c + var_2.c), vec3<f32>(arg_1, var_2.c.x, 292f)), _wgslsmith_f_op_vec2_f32(-var_2.d))).b, global1.e);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-597f - var_2.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e.xw;
    var var_1 = Struct_2(-u_input.c.x, Struct_1(!(!global1.d.a), abs(global1.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global1.d, 523f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1543f, 1477f, 596f), vec3<f32>(-241f, 244f, -1975f), global1.d.a))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<bool>(false, false, global1.b), 2147483647i), 634f)).x)))));
    let var_2 = select(false, all(!(!global1.d.a.yy)), ~(~_wgslsmith_div_u32(73168u, global1.c)) != 36974u);
    var var_3 = Struct_3(_wgslsmith_dot_vec3_i32(-u_input.b.xyx, ~(u_input.c << (global1.e.zzx % vec3<u32>(32u))) >> ((vec3<u32>(64638u, global0[_wgslsmith_index_u32(21061u, 3u)], 4294967295u) << (global1.e.xzx % vec3<u32>(32u))) % vec3<u32>(32u))), func_6(func_6(_wgslsmith_f_op_f32(-var_1.c.x), ~select(u_input.b.x, var_1.b.b, global1.d.a.x), Struct_2(countOneBits(2147483647i), Struct_1(var_1.b.a, 18745i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-466f, -306f, var_1.d.x))), _wgslsmith_f_op_vec2_f32(-var_1.c.xy))).d.x, func_2(firstTrailingBit(abs(u_input.a.x)), max(-5926i, ~41157i), Struct_3(~8039i, global1.b, firstTrailingBit(4294967295u), global1.d, vec4<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 4294967295u, var_0.x, var_0.x))).b, Struct_2(~2147483647i, Struct_1(!var_1.b.a, 1662i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(1930f, -1272f, 850f)), vec3<f32>(340f, var_1.d.x, 2016f), true)), _wgslsmith_f_op_vec2_f32(-var_1.c.yy))).b.a.x, 45538u, Struct_1(var_1.b.a, global1.a), ~global1.e);
    let var_4 = !any(select(vec3<bool>(true, global1.d.a.x, global2.x), vec3<bool>(any(vec4<bool>(true, false, true, var_1.b.a.x)), !var_1.b.a.x, var_3.b), var_1.b.a.x));
    var var_5 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-774f, -1459f, 500f, -207f), vec4<f32>(-1108f, 945f, -300f, -718f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, -1370f, 559f, 953f), vec4<f32>(var_1.c.x, var_1.d.x, 2044f, var_1.c.x), vec4<bool>(false, true, false, false)))) - vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(2004f - -1593f), _wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(-1000f, var_3.c)))), _wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(330f - var_1.c.x)), 1278f, var_1.d.x))));
    let var_6 = func_6(_wgslsmith_f_op_f32(f32(-1f) * -1780f), -(u_input.b.x << (var_3.e.x % 32u)), Struct_2(1i, var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_1.d.x, var_1.c.x, -697f)) + _wgslsmith_f_op_vec3_f32(var_1.c * vec3<f32>(var_1.d.x, -617f, var_5.x)))), _wgslsmith_f_op_vec3_f32(func_1(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -1275f))).yx));
    global0 = array<u32, 3>();
    let var_7 = Struct_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(-global1.d.b, -2956i | global1.d.b) | 1i, -2562i), Struct_1(vec3<bool>(true, 0u < (var_0.x >> (0u % 32u)), true), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_5.wxw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(120f - var_1.c.x) * var_6.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x - var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

