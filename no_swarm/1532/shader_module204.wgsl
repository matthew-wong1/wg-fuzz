struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1769f, -1087f, 849f, -1160f), vec4<f32>(1672f, -1511f, -1000f, -1189f), vec4<f32>(-2340f, -1666f, 1258f, 314f), vec4<f32>(466f, -1677f, -2413f, 570f), vec4<f32>(-999f, -290f, 1000f, -1020f), vec4<f32>(-1033f, 946f, 1224f, -933f), vec4<f32>(-419f, 1213f, -499f, 1000f), vec4<f32>(-1093f, -1470f, -1333f, -539f), vec4<f32>(-1006f, 251f, -936f, -1060f), vec4<f32>(2912f, 1000f, 883f, 827f), vec4<f32>(2432f, -1091f, 630f, 132f), vec4<f32>(-1346f, -2387f, -557f, 247f), vec4<f32>(461f, -2219f, 338f, 1000f), vec4<f32>(1301f, -1311f, -673f, -106f), vec4<f32>(-170f, 259f, 1274f, -900f), vec4<f32>(-252f, -1017f, -1241f, -1652f), vec4<f32>(1004f, 649f, 586f, -1000f), vec4<f32>(-115f, 1025f, 800f, 171f), vec4<f32>(789f, -560f, 822f, 564f), vec4<f32>(1061f, -839f, -1640f, -193f), vec4<f32>(277f, -622f, 829f, -136f), vec4<f32>(678f, 240f, 435f, 1238f), vec4<f32>(781f, -1131f, -427f, -1204f));

var<private> global1: array<bool, 13>;

var<private> global2: vec2<u32> = vec2<u32>(1119u, 1u);

var<private> global3: array<u32, 26> = array<u32, 26>(1u, 0u, 91417u, 4294967295u, 59984u, 48185u, 41126u, 73547u, 21334u, 4294967295u, 491u, 4294967295u, 4294967295u, 76247u, 43731u, 1u, 4294967295u, 80744u, 1u, 4538u, 1u, 4294967295u, 49400u, 1u, 99038u, 15027u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = vec4<u32>(0u, 4294967295u, ~47893u, 16339u & u_input.c.x);
    global0 = array<vec4<f32>, 23>();
    let var_1 = u_input.d;
    var var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(~(~15870u), 13u)], _wgslsmith_div_u32(_wgslsmith_mult_u32(54070u, arg_0.b), 41794u) == ~(~4294967295u), !global1[_wgslsmith_index_u32(~global2.x, 13u)], true);
    return firstTrailingBit(~vec2<u32>(~global3[_wgslsmith_index_u32(arg_0.b, 26u)], ~63772u)) << (vec2<u32>(global3[_wgslsmith_index_u32(~var_0.x, 26u)], 0u) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    var var_0 = u_input.e.x;
    let var_1 = max(60792u, 1u);
    global2 = _wgslsmith_clamp_vec2_u32(~(~u_input.a), vec2<u32>(var_1, var_1), firstLeadingBit(~(~func_3(Struct_3(Struct_2(global2.x, u_input.a.x), u_input.a.x, u_input.e.x)))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 23u)];
    global2 = ~max(u_input.a, ~u_input.a);
    return 6955u;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(abs(22869u)), ~(u_input.a.x >> (u_input.c.x % 32u))), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)])), false)), u_input.a.x);
    global1 = array<bool, 13>();
    var var_1 = select(!select(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 13u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(65007u, 13u)], global1[_wgslsmith_index_u32(global2.x, 13u)], true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 13u)])), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.b, 13u)], all(vec2<bool>(true, false)), all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 13u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(global2.x, 13u)])), global1[_wgslsmith_index_u32(global2.x << (1u % 32u), 13u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(8717u, 13u)], true, false)), !select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32830u, 26u)], 13u)]), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(3857u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(60977u, 13u)]), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(51676u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.a, 13u)], global1[_wgslsmith_index_u32(10665u, 13u)], global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.x, 13u)], global1[_wgslsmith_index_u32(26983u, 13u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(global2.x, 13u)]), global1[_wgslsmith_index_u32(global2.x, 13u)]), !vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(var_0.b, 13u)]), false & global1[_wgslsmith_index_u32(67713u, 13u)]), vec4<bool>(!global1[_wgslsmith_index_u32(105283u, 13u)], true, global1[_wgslsmith_index_u32(var_0.b, 13u)] || true, global1[_wgslsmith_index_u32(111109u, 13u)])), global1[_wgslsmith_index_u32(global2.x | var_0.b, 13u)]);
    var var_2 = -(~u_input.e.zy);
    let var_3 = Struct_4(global2.x, ~(u_input.c >> (u_input.c % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-417f)) * _wgslsmith_f_op_f32(select(-100f, _wgslsmith_f_op_f32(select(1242f, _wgslsmith_f_op_f32(-467f - 1452f), (var_3.b.x >= global2.x) && (true & global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), global1[_wgslsmith_index_u32(global2.x, 13u)])));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(firstLeadingBit(36067u), countOneBits(global2.x));
    global0 = array<vec4<f32>, 23>();
    global2 = u_input.a;
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(3467i, u_input.e.x, arg_1.b)), vec3<i32>(-14378i, 1i, arg_1.b) | u_input.e), _wgslsmith_mult_i32(_wgslsmith_mod_i32(13339i, u_input.d), abs(arg_1.b)), u_input.d), vec4<i32>(u_input.e.x, _wgslsmith_sub_i32(-2147483647i, u_input.d), 13879i, _wgslsmith_div_i32(u_input.e.x, u_input.d)) & ~(-abs(vec4<i32>(-2147483647i, arg_1.b, u_input.d, arg_1.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(global2.x, u_input.a.x) | global2.x), 23u)] * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f)), arg_1.a)), _wgslsmith_f_op_f32(ceil(-172f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f), -542f))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(501f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(357f + -463f), _wgslsmith_f_op_f32(abs(580f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(625f, 276f, -1664f)))))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1005f, -1164f)))), ~u_input.e.x, !(!vec3<bool>(global1[_wgslsmith_index_u32(11241u, 13u)], true, true))), Struct_2(reverseBits(u_input.a.x), _wgslsmith_mod_u32(4294967295u, ~117059u)))), 2147483647i, vec3<bool>(true, global1[_wgslsmith_index_u32(global2.x >> (_wgslsmith_mod_u32(reverseBits(38692u), min(4294967295u, 1u)) % 32u), 13u)], global1[_wgslsmith_index_u32(~global2.x, 13u)]));
    var var_1 = vec4<i32>(u_input.d, ~u_input.e.x, var_0.b, ~(-3382i));
    var var_2 = Struct_4(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(4294967295u, 4294967295u, global2.x) & vec3<u32>(global2.x, u_input.c.x, 0u))), ~firstLeadingBit(abs(vec3<u32>(u_input.b, 0u, 0u)))), vec2<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_add_u32(~27035u, 1u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1261f, _wgslsmith_div_f32(1161f, 614f), var_0.a, -1762f), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(27767u, u_input.a.x), var_2.b) >> (113616u % 32u)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -529f, var_3) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, -120f, var_0.a), vec3<f32>(-1089f, var_0.a, 317f)))))), Struct_1(_wgslsmith_f_op_f32(-696f + _wgslsmith_f_op_f32(func_4(vec3<f32>(1283f, var_0.a, -1116f), Struct_1(var_3, var_1.x, var_0.c), Struct_2(var_2.a, u_input.b)))), ~u_input.d, select(var_0.c, var_0.c, any(vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.b.x, 13u)])))), Struct_2(_wgslsmith_div_u32(~1662u, 37066u), _wgslsmith_mult_u32(1u, ~4294967295u)))), -245f, max(reverseBits(vec4<i32>(-1i, var_0.b, u_input.d, var_1.x) ^ vec4<i32>(var_1.x, 5308i, 13241i, var_0.b)), reverseBits(vec4<i32>(53049i, 1579i, var_1.x, var_1.x))) << (reverseBits(abs(~vec4<u32>(0u, 21609u, global3[_wgslsmith_index_u32(global2.x, 26u)], 4294967295u))) % vec4<u32>(32u)));
}

