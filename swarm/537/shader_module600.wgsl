struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<u32>(124061u, 4294967295u, 16917u), vec3<f32>(1597f, 1425f, -717f), 2147483647i), Struct_2(vec3<u32>(4294967295u, 12209u, 35941u), vec3<f32>(1000f, 344f, 1004f), -36622i), Struct_2(vec3<u32>(4294967295u, 1u, 75443u), vec3<f32>(-1000f, -559f, -1068f), 19307i), Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-1028f, -310f, -486f), -1i), Struct_2(vec3<u32>(1u, 1u, 1u), vec3<f32>(1000f, -1552f, 526f), 0i), Struct_2(vec3<u32>(4294967295u, 6248u, 0u), vec3<f32>(-380f, -252f, -2557f), 2147483647i), Struct_2(vec3<u32>(0u, 47784u, 35657u), vec3<f32>(259f, -466f, 506f), -35999i), Struct_2(vec3<u32>(4294967295u, 10635u, 1u), vec3<f32>(2644f, 735f, -958f), 2147483647i), Struct_2(vec3<u32>(0u, 1u, 0u), vec3<f32>(-310f, -862f, 432f), 30949i), Struct_2(vec3<u32>(4294967295u, 1u, 7242u), vec3<f32>(-201f, -600f, -1000f), -10273i), Struct_2(vec3<u32>(1u, 91307u, 60638u), vec3<f32>(1697f, -138f, 1192f), 2147483647i), Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec3<f32>(-187f, -638f, -387f), -1i), Struct_2(vec3<u32>(1u, 24126u, 1179u), vec3<f32>(827f, 1193f, -558f), 50728i), Struct_2(vec3<u32>(0u, 0u, 0u), vec3<f32>(286f, -225f, 711f), 2147483647i), Struct_2(vec3<u32>(1u, 73870u, 92422u), vec3<f32>(115f, 301f, 1129f), -1i), Struct_2(vec3<u32>(0u, 0u, 3598u), vec3<f32>(1000f, -1910f, -665f), -1i), Struct_2(vec3<u32>(1u, 1u, 8105u), vec3<f32>(-1174f, -2098f, -1296f), 18852i), Struct_2(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-840f, -2340f, 808f), 1i), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(-906f, 1517f, 1780f), -33870i), Struct_2(vec3<u32>(1u, 36603u, 58103u), vec3<f32>(425f, 651f, -906f), -41993i), Struct_2(vec3<u32>(0u, 1u, 1u), vec3<f32>(-384f, -1149f, -1000f), i32(-2147483648)), Struct_2(vec3<u32>(5210u, 0u, 40220u), vec3<f32>(905f, 644f, 819f), -1i), Struct_2(vec3<u32>(79011u, 42727u, 0u), vec3<f32>(2155f, -1000f, -147f), -12601i), Struct_2(vec3<u32>(1u, 83191u, 4294967295u), vec3<f32>(-421f, 175f, -845f), -1325i));

var<private> global2: array<vec3<bool>, 19>;

var<private> global3: array<u32, 3> = array<u32, 3>(26521u, 21714u, 2688u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = 4294967295u;
    global3 = array<u32, 3>();
    global2 = array<vec3<bool>, 19>();
    let var_1 = _wgslsmith_div_f32(282f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, abs(arg_0.e.x)), 30u)]);
    global3 = array<u32, 3>();
    return !arg_0.c;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_f_op_f32(step(1718f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17514u, 30u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f) + -1516f), true))));
    global3 = array<u32, 3>();
    var var_1 = all(vec4<bool>(true, true, true, true));
    let var_2 = u_input.c;
    return Struct_1(~select(vec3<i32>(u_input.a, 22072i, 2147483647i), vec3<i32>(-764i, u_input.a, u_input.a), func_3(Struct_1(vec3<i32>(u_input.a, -40258i, u_input.a), 1012f, true, global0[_wgslsmith_index_u32(19959u, 30u)], vec2<u32>(10724u, u_input.b.x)))), global0[_wgslsmith_index_u32(~(~(firstLeadingBit(0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 23324u, var_2, 39429u), vec4<u32>(1u, u_input.b.x, 77858u, u_input.c)))), 30u)], !(countOneBits(7915u) > (global3[_wgslsmith_index_u32(u_input.d, 3u)] | 83440u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 3u)], 30u)]), ~vec2<u32>(var_2, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 3u)], 4294967295u, var_2, global3[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 3u)], 1u, u_input.b.x), vec4<u32>(8934u, var_2, global3[_wgslsmith_index_u32(41654u, 3u)], 0u)))));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_2, 24>();
    let var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(19612u, countOneBits(global3[_wgslsmith_index_u32(abs(60369u), 3u)]), reverseBits(min(global3[_wgslsmith_index_u32(~u_input.d, 3u)], _wgslsmith_dot_vec4_u32(vec4<u32>(71560u, global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(8181u, 3u)], u_input.c), vec4<u32>(u_input.b.x, u_input.c, u_input.d, 4294967295u))))), u_input.d, true), 30u)];
    let var_1 = 2147483647i;
    var var_2 = any(vec4<bool>(false, ~4294967295u <= ~firstTrailingBit(u_input.c), all(global2[_wgslsmith_index_u32(~0u, 19u)]), true));
    var var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u ^ abs(_wgslsmith_add_u32(35764u, u_input.b.x) & firstTrailingBit(2619u)), 30u)]);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global3 = array<u32, 3>();
    var var_0 = arg_0;
    var var_1 = ~arg_2.b.xxz;
    global0 = array<f32, 30>();
    return func_1();
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_2();
    var var_1 = ~42428u;
    var var_2 = Struct_3(!vec2<bool>(any(arg_0), false), firstLeadingBit(~vec4<u32>(~0u, 1u, 9787u, arg_1.a.x ^ u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d, arg_3.b, arg_1.b.x)))))), arg_3, !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, arg_3.c, var_0.c), vec4<bool>(false, arg_0.x, arg_0.x, false)), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_3.c), vec4<bool>(true, true, true, arg_3.c), vec4<bool>(arg_0.x, false, true, true)), select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, arg_0.x, var_0.c, true), false))));
    var_2 = Struct_3(var_2.e.yx, firstLeadingBit(~vec4<u32>(0u, 13698u, var_0.e.x, 1u)) & ~select(~var_2.b, max(var_2.b, var_2.b), !var_2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(792f, 858f, -379f), arg_1.b))))), func_1(), select(!(!var_2.e), var_2.e, _wgslsmith_f_op_f32(1232f * var_2.d.b) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1888f - -556f)))));
    var_2 = Struct_3(vec2<bool>(false, ~(u_input.d >> (arg_3.e.x % 32u)) > ~0u), vec4<u32>(~(1u ^ arg_3.e.x), func_2().e.x, 56231u, 1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1094f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().b + global0[_wgslsmith_index_u32(u_input.d, 30u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-465f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - 285f))))), var_0, !(!(!select(var_2.e, var_2.e, arg_3.c))));
    return var_2.b.x ^ 17230u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(39770u, func_5(global2[_wgslsmith_index_u32(~(~0u), 19u)], Struct_2(~u_input.b, _wgslsmith_div_vec3_f32(vec3<f32>(197f, -837f, 483f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 30u)], -162f, 507f)), 33542i), select(select(vec2<i32>(1i, 0i), vec2<i32>(1i, u_input.a), vec2<bool>(true, true)), -vec2<i32>(-32888i, -1i), all(vec4<bool>(true, false, false, false))), func_4(func_1(), func_1().e.x, Struct_3(vec2<bool>(true, true), vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4871u, 3u)], 3u)], 3u)], 27928u, global3[_wgslsmith_index_u32(17557u, 3u)]), vec3<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 3u)], 3u)], 30u)], 1000f, -110f), Struct_1(vec3<i32>(-2147483647i, -55122i, -2147483647i), 976f, false, global0[_wgslsmith_index_u32(0u, 30u)], vec2<u32>(1u, 0u)), vec4<bool>(false, true, false, false)))));
    let var_1 = -_wgslsmith_mod_vec2_i32(~func_1().a.zz >> (var_0 % vec2<u32>(32u)), firstLeadingBit(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 26048i), vec2<i32>(-1i, u_input.a)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -103f, 795f) - vec3<f32>(global0[_wgslsmith_index_u32(62882u, 30u)], 1139f, global0[_wgslsmith_index_u32(var_0.x, 30u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, global0[_wgslsmith_index_u32(var_0.x, 30u)], 1054f))))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, min(909u << (abs(1u) % 32u), u_input.b.x), firstLeadingBit(24968u)), 3u)];
    global2 = array<vec3<bool>, 19>();
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~(global3[_wgslsmith_index_u32(40152u, 3u)] >> (u_input.d % 32u))), _wgslsmith_mult_u32(4294967295u, 1u)), max(u_input.b.zx, _wgslsmith_mod_vec2_u32(func_4(func_1(), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 3u)], u_input.b.x), 3u)], Struct_3(vec2<bool>(false, true), vec4<u32>(18830u, var_0.x, global3[_wgslsmith_index_u32(var_0.x, 3u)], global3[_wgslsmith_index_u32(var_0.x, 3u)]), vec3<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 3u)], 30u)], 549f, 803f), Struct_1(vec3<i32>(-1i, var_1.x, -29576i), 636f, false, var_2.x, vec2<u32>(1u, 1u)), vec4<bool>(true, true, false, true))).e, min(u_input.b.xz, min(vec2<u32>(u_input.b.x, var_0.x), vec2<u32>(42730u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)]))))));
    var var_5 = global1[_wgslsmith_index_u32(1u, 24u)];
    var var_6 = Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, false))), vec2<bool>(true, true), !(var_5.a.x <= var_5.a.x))), abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_5.a.x, 19897u, u_input.c, 4294967295u)), ~min(vec4<u32>(var_5.a.x, 1u, 1381u, var_0.x), vec4<u32>(u_input.c, 61186u, 22974u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(774f, 1354f, var_5.b.x), var_5.b)), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(13153u, 30u)], var_5.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-726f, var_5.b.x, var_5.b.x) - var_5.b)))), func_4(Struct_1(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(16338i, -14593i, u_input.a)), vec3<i32>(u_input.a, var_5.c, 2147483647i) ^ vec3<i32>(u_input.a, var_1.x, u_input.a)), var_2.x, true, var_5.b.x, ~reverseBits(var_0)), 4733u, Struct_3(vec2<bool>(true, true), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, 67835u, var_4.x), vec4<u32>(global3[_wgslsmith_index_u32(53562u, 3u)], var_4.x, var_4.x, 7762u)), var_5.b, func_4(Struct_1(vec3<i32>(var_5.c, -2147483647i, u_input.a), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4510u, 3u)], 30u)], true, -1369f, var_0), 1u >> (u_input.d % 32u), Struct_3(vec2<bool>(false, true), vec4<u32>(var_5.a.x, 4294967295u, u_input.d, 4294967295u), var_5.b, Struct_1(vec3<i32>(-28843i, var_5.c, u_input.a), 613f, true, 703f, vec2<u32>(var_5.a.x, 25840u)), vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true))), select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), func_4(Struct_1(vec3<i32>(u_input.a, -1i, -2147483647i), global0[_wgslsmith_index_u32(57827u, 30u)], false, 162f, vec2<u32>(11724u, global3[_wgslsmith_index_u32(1u, 3u)])), 0u, Struct_3(vec2<bool>(false, true), vec4<u32>(var_4.x, 1u, global3[_wgslsmith_index_u32(var_0.x, 3u)], 35032u), vec3<f32>(var_5.b.x, var_5.b.x, var_2.x), Struct_1(vec3<i32>(u_input.a, var_1.x, u_input.a), 414f, false, var_2.x, var_0), vec4<bool>(true, true, false, true))).c)), vec4<bool>(true, global0[_wgslsmith_index_u32(var_5.a.x ^ 0u, 30u)] == var_5.b.x, true, 4294967295u == ~var_5.a.x), all(global2[_wgslsmith_index_u32(~0u, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f * global0[_wgslsmith_index_u32(2749u, 30u)])))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))))), ~vec3<u32>(36903u, _wgslsmith_clamp_u32(var_5.a.x ^ 4294967295u, ~49611u, max(0u, var_6.b.x)), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(40821u, 3u)] | 4294967295u, ~14308u)));
}

