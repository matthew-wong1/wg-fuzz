struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> Struct_4 {
    global0 = array<f32, 28>();
    return Struct_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] * 213f), u_input.e.x, arg_0.a.b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_0 = ~55787u;
    var_0 = ~arg_0.c.b.x;
    var_0 = u_input.d.x;
    return !vec2<bool>(arg_0.c.c.x, arg_0.c.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = !select(vec2<bool>(false, true), select(vec2<bool>(-34687i != u_input.a, any(vec3<bool>(false, false, false))), vec2<bool>(any(vec3<bool>(false, true, false)), 1014f != global0[_wgslsmith_index_u32(0u, 28u)]), true), func_3(func_2(Struct_3(Struct_2(Struct_1(-2147483647i, vec2<u32>(u_input.d.x, u_input.b.x), vec3<bool>(true, false, false), vec2<i32>(u_input.e.x, u_input.e.x)), Struct_1(-2147483647i, u_input.c.zy, vec3<bool>(false, false, false), u_input.e), Struct_1(37357i, vec2<u32>(1203u, 1u), vec3<bool>(true, true, false), vec2<i32>(u_input.a, 12057i)), Struct_1(46706i, vec2<u32>(u_input.d.x, u_input.b.x), vec3<bool>(true, false, false), u_input.e), 1i), vec2<f32>(1027f, -562f), vec4<f32>(1687f, -2301f, 1980f, 1177f), 90658u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.a), abs(u_input.e) >> (_wgslsmith_mult_vec2_u32(u_input.d, u_input.d) % vec2<u32>(32u)), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], func_2(Struct_3(Struct_2(Struct_1(-31830i, vec2<u32>(u_input.b.x, 4294967295u), vec3<bool>(true, false, false), vec2<i32>(u_input.a, u_input.a)), Struct_1(u_input.e.x, vec2<u32>(u_input.d.x, u_input.b.x), vec3<bool>(true, false, false), u_input.e), Struct_1(u_input.e.x, vec2<u32>(u_input.d.x, 0u), vec3<bool>(false, true, false), u_input.e), Struct_1(u_input.e.x, u_input.d, vec3<bool>(true, true, false), vec2<i32>(0i, -27772i)), 1i), vec2<f32>(-722f, -2059f), vec4<f32>(1959f, global0[_wgslsmith_index_u32(52483u, 28u)], 809f, 558f), 1u), u_input.c.x, 5431i).a, global0[_wgslsmith_index_u32(~64621u, 28u)])));
    let var_1 = _wgslsmith_div_vec2_u32(max(select(u_input.b.xy << (abs(u_input.c.zx) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, 21133u & u_input.b.x), var_0), ~(~vec2<u32>(50057u, u_input.d.x))), firstTrailingBit(~vec2<u32>(1u, ~u_input.d.x)));
    let var_2 = var_0.x && ((func_2(Struct_3(Struct_2(Struct_1(u_input.e.x, var_1, vec3<bool>(var_0.x, true, true), vec2<i32>(8406i, u_input.a)), Struct_1(u_input.a, var_1, vec3<bool>(var_0.x, true, var_0.x), u_input.e), Struct_1(-37705i, u_input.b.zx, vec3<bool>(var_0.x, true, true), vec2<i32>(2147483647i, -18254i)), Struct_1(2147483647i, u_input.b.yz, vec3<bool>(false, false, true), u_input.e), u_input.a), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(var_1.x, 28u)]), vec4<f32>(-984f, -1842f, global0[_wgslsmith_index_u32(var_1.x, 28u)], 832f), 0u), firstLeadingBit(var_1.x), _wgslsmith_div_i32(-1i, 2147483647i)).c.d.x == 1i) || !func_3(func_2(Struct_3(Struct_2(Struct_1(u_input.e.x, var_1, vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.e), Struct_1(u_input.a, u_input.d, vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<i32>(0i, u_input.a)), Struct_1(2147483647i, vec2<u32>(1u, 76727u), vec3<bool>(var_0.x, true, false), u_input.e), Struct_1(0i, var_1, vec3<bool>(var_0.x, false, var_0.x), vec2<i32>(u_input.a, u_input.e.x)), 15085i), vec2<f32>(-518f, global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], -596f, -385f), 4294967295u), 15702u, u_input.a), -u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(5702u, 28u)], -762f, global0[_wgslsmith_index_u32(1u, 28u)]))).x);
    var var_3 = func_2(Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(-2147483647i, u_input.b.yy, vec3<bool>(false, false, var_0.x), u_input.e), Struct_1(-2147483647i, var_1, vec3<bool>(true, false, var_0.x), u_input.e), Struct_1(u_input.e.x, u_input.d, vec3<bool>(var_2, false, false), u_input.e), Struct_1(0i, vec2<u32>(57966u, 84336u), vec3<bool>(false, var_2, var_0.x), u_input.e), u_input.e.x), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 1404f), vec4<f32>(142f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 301f, 263f), 36179u), countOneBits(1u), 0i).c, Struct_1(-2147483647i, ~vec2<u32>(48139u, var_1.x), vec3<bool>(false, true, var_0.x), -vec2<i32>(-19556i, 1i)), func_2(Struct_3(Struct_2(Struct_1(u_input.a, vec2<u32>(u_input.d.x, u_input.c.x), vec3<bool>(true, var_2, var_2), vec2<i32>(u_input.a, u_input.e.x)), Struct_1(u_input.e.x, u_input.b.xy, vec3<bool>(var_2, true, true), u_input.e), Struct_1(1i, vec2<u32>(var_1.x, 11035u), vec3<bool>(var_0.x, var_0.x, false), u_input.e), Struct_1(u_input.a, vec2<u32>(1u, 0u), vec3<bool>(var_2, false, var_0.x), vec2<i32>(-15451i, 2147483647i)), u_input.e.x), vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(97588u, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), 1u), 1u, u_input.e.x).c, func_2(Struct_3(Struct_2(Struct_1(0i, var_1, vec3<bool>(var_0.x, true, true), u_input.e), Struct_1(28142i, vec2<u32>(var_1.x, var_1.x), vec3<bool>(var_2, false, var_0.x), u_input.e), Struct_1(-2147483647i, var_1, vec3<bool>(var_2, var_2, var_2), u_input.e), Struct_1(-22340i, vec2<u32>(27046u, 0u), vec3<bool>(true, var_0.x, false), vec2<i32>(u_input.a, -42893i)), u_input.e.x), vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 28u)], -2606f), vec4<f32>(global0[_wgslsmith_index_u32(1694u, 28u)], -643f, global0[_wgslsmith_index_u32(51987u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), 40960u), _wgslsmith_mult_u32(var_1.x, var_1.x), u_input.e.x).c, -19830i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2178f, global0[_wgslsmith_index_u32(1u, 28u)]))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1159f)), _wgslsmith_f_op_f32(ceil(1463f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] * -1532f), func_2(Struct_3(Struct_2(Struct_1(68192i, vec2<u32>(25224u, 1u), vec3<bool>(false, false, var_0.x), u_input.e), Struct_1(-2147483647i, u_input.d, vec3<bool>(true, var_2, false), vec2<i32>(u_input.a, u_input.e.x)), Struct_1(u_input.a, u_input.d, vec3<bool>(false, var_0.x, true), vec2<i32>(-19364i, u_input.e.x)), Struct_1(u_input.a, vec2<u32>(26481u, 9568u), vec3<bool>(true, true, true), u_input.e), -14432i), vec2<f32>(557f, -1000f), vec4<f32>(global0[_wgslsmith_index_u32(19342u, 28u)], -1022f, global0[_wgslsmith_index_u32(66888u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.c.x), 3578u, 0i).a) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 1893f, global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 1308f, global0[_wgslsmith_index_u32(70392u, 28u)], 955f)), var_2))), var_1.x), firstTrailingBit(_wgslsmith_mod_u32(func_2(Struct_3(Struct_2(Struct_1(u_input.a, vec2<u32>(u_input.c.x, var_1.x), vec3<bool>(var_2, false, true), u_input.e), Struct_1(0i, vec2<u32>(1u, u_input.c.x), vec3<bool>(var_2, var_2, var_2), vec2<i32>(22248i, 1i)), Struct_1(u_input.e.x, var_1, vec3<bool>(true, var_0.x, var_0.x), vec2<i32>(-2147483647i, u_input.e.x)), Struct_1(u_input.e.x, vec2<u32>(30534u, 52349u), vec3<bool>(var_2, true, true), u_input.e), 2147483647i), vec2<f32>(356f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec4<f32>(114f, global0[_wgslsmith_index_u32(94079u, 28u)], 1000f, global0[_wgslsmith_index_u32(63583u, 28u)]), var_1.x), 1u, u_input.a).c.b.x, 31152u) | var_1.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.e.x, 0i, -26929i, u_input.e.x) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(0i, u_input.e.x, u_input.e.x, u_input.a) ^ countOneBits(vec4<i32>(u_input.a, 0i, u_input.e.x, -808i))) << (~(u_input.c.x << (countOneBits(5392u) % 32u)) % 32u)).c;
    var_3 = Struct_1(-3253i << (u_input.d.x % 32u), vec2<u32>(u_input.b.x, 1u), vec3<bool>(true, all(func_2(Struct_3(Struct_2(Struct_1(58819i, vec2<u32>(var_1.x, 4294967295u), vec3<bool>(var_0.x, true, var_2), u_input.e), Struct_1(u_input.e.x, var_3.b, var_3.c, var_3.d), Struct_1(-1209i, var_3.b, vec3<bool>(true, var_0.x, false), vec2<i32>(39100i, u_input.a)), Struct_1(var_3.a, vec2<u32>(var_1.x, 21970u), var_3.c, vec2<i32>(u_input.a, var_3.a)), -14327i), vec2<f32>(1422f, global0[_wgslsmith_index_u32(var_3.b.x, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(2528u, 28u)], 296f, 1007f, 695f), u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 13127u), vec2<u32>(var_1.x, 0u)), var_3.d.x | var_3.d.x).c.c), !(!var_3.c.x) & true), vec2<i32>(-1i) * -vec2<i32>(0i, ~(-1i)));
    return Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.e.x), vec2<i32>(-13982i, var_3.a)), firstTrailingBit(var_3.d)), vec2<u32>(u_input.b.x, ~((38219u & u_input.b.x) >> (var_1.x % 32u))), vec3<bool>(!var_3.c.x, var_3.b.x >= (1u << (var_1.x % 32u)), false), abs(u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2206f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 28u)])))))), 10160i, func_1());
    global0 = array<f32, 28>();
    var var_1 = Struct_2(var_0.c, Struct_1(~(-2147483647i), select(func_2(Struct_3(Struct_2(var_0.c, Struct_1(-26157i, u_input.b.zx, var_0.c.c, var_0.c.d), Struct_1(u_input.e.x, vec2<u32>(43902u, u_input.c.x), var_0.c.c, vec2<i32>(-31976i, 0i)), Struct_1(var_0.b, vec2<u32>(u_input.b.x, 4716u), var_0.c.c, vec2<i32>(35090i, var_0.b)), var_0.b), vec2<f32>(var_0.a, global0[_wgslsmith_index_u32(24774u, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_0.c.b.x, 28u)], var_0.a, global0[_wgslsmith_index_u32(4294967295u, 28u)], -1328f), u_input.d.x), ~var_0.c.b.x, 2147483647i).c.b, min(abs(u_input.b.xx), var_0.c.b), var_0.c.c.xx), vec3<bool>(!(370f > var_0.a), var_0.c.c.x, _wgslsmith_dot_vec2_u32(var_0.c.b, var_0.c.b) < 64216u), vec2<i32>(func_1().d.x, -2147483647i)), var_0.c, Struct_1(_wgslsmith_mod_i32(~(~35943i), _wgslsmith_clamp_i32(~u_input.a, -2147483647i, 0i)), _wgslsmith_add_vec2_u32(var_0.c.b, vec2<u32>(var_0.c.b.x, u_input.d.x)) & ~(vec2<u32>(4294967295u, var_0.c.b.x) ^ vec2<u32>(u_input.d.x, u_input.b.x)), select(var_0.c.c, !select(var_0.c.c, var_0.c.c, true), !(!vec3<bool>(var_0.c.c.x, true, var_0.c.c.x))), reverseBits(vec2<i32>(26544i, u_input.a))), -var_0.c.a);
    global0 = array<f32, 28>();
    let var_2 = 1u;
    var_1 = Struct_2(func_2(Struct_3(Struct_2(Struct_1(var_0.b, var_1.a.b, var_1.a.c, var_0.c.d), func_2(Struct_3(Struct_2(var_1.d, var_1.c, Struct_1(u_input.e.x, var_0.c.b, vec3<bool>(var_0.c.c.x, false, var_0.c.c.x), var_0.c.d), Struct_1(-38993i, u_input.d, vec3<bool>(true, true, var_0.c.c.x), var_1.b.d), var_0.c.a), vec2<f32>(global0[_wgslsmith_index_u32(11867u, 28u)], -1391f), vec4<f32>(-1179f, -578f, -1700f, 465f), var_2), var_1.b.b.x, u_input.a).c, var_1.c, func_2(Struct_3(Struct_2(Struct_1(u_input.a, var_0.c.b, vec3<bool>(var_0.c.c.x, false, false), vec2<i32>(u_input.a, -2147483647i)), var_0.c, var_1.a, Struct_1(var_0.b, vec2<u32>(9569u, 1u), vec3<bool>(true, var_0.c.c.x, false), var_1.d.d), u_input.a), vec2<f32>(475f, -629f), vec4<f32>(var_0.a, 1000f, var_0.a, var_0.a), 19649u), 27457u, var_1.a.d.x).c, _wgslsmith_clamp_i32(var_0.b, 2147483647i, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-498f, global0[_wgslsmith_index_u32(var_0.c.b.x, 28u)]) + vec2<f32>(var_0.a, 1838f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, global0[_wgslsmith_index_u32(29198u, 28u)], -1000f, var_0.a)))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(0u, 67595u, 4294967295u), u_input.c.yzz), vec3<u32>(var_2, var_0.c.b.x, 13004u))), var_2, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.a.a, var_0.b, 59618i), reverseBits(vec4<i32>(u_input.e.x, var_0.b, var_1.a.d.x, var_1.b.d.x))))).c, var_1.a, Struct_1(~var_0.b, var_1.a.b, vec3<bool>(var_0.c.c.x, true, false), -func_1().d), var_1.d, max(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.e.x, var_1.a.d.x, 14047i), 10282i), ~18075i));
    var var_3 = ~(~(~_wgslsmith_add_u32(u_input.c.x, var_1.b.b.x)) | 1u);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.e, -28050i, 4310i) << (u_input.c.zww % vec3<u32>(32u)), max(vec3<i32>(var_0.c.d.x, u_input.a, var_1.d.a), vec3<i32>(u_input.e.x, 2147483647i, var_0.c.a))) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 57315u, 89258u), u_input.c.wxx), u_input.c.zwx, vec3<u32>(0u, 4294967295u, var_0.c.b.x)) % vec3<u32>(32u)), ~(-abs(vec3<i32>(-1i, var_1.c.d.x, -1i))), var_0.c.c), u_input.c, func_1().b);
}

