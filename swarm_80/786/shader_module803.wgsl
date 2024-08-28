struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 47993i;

var<private> global1: array<u32, 9>;

var<private> global2: array<vec3<i32>, 23>;

var<private> global3: array<vec3<i32>, 14>;

var<private> global4: array<i32, 8> = array<i32, 8>(16694i, 13914i, -29155i, -45646i, 15585i, i32(-2147483648), 2147483647i, 35389i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global0 = -15422i;
    let var_0 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(0u, u_input.b.x) & firstTrailingBit(u_input.b.x), ~21926u, 1u, _wgslsmith_mod_u32(1u, 18899u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1163f * -439f))), 1262f))));
    var var_1 = Struct_2(var_0, vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(min(-29693i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 8u)]), _wgslsmith_mult_i32(2147483647i, u_input.a.x))), _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(~u_input.a, select(u_input.a, vec2<i32>(global4[_wgslsmith_index_u32(22891u, 8u)], global4[_wgslsmith_index_u32(var_0.a.x, 8u)]), vec2<bool>(true, false)))), _wgslsmith_mod_i32(~(i32(-1i) * -830i), i32(-1i) * -529i)), -countOneBits(vec2<i32>(~global4[_wgslsmith_index_u32(18496u, 8u)], abs(0i))), Struct_1(select(vec4<u32>(var_0.a.x, 1u, global1[_wgslsmith_index_u32(26792u, 9u)], var_0.a.x), ~vec4<u32>(global1[_wgslsmith_index_u32(42377u, 9u)], 1u, 30734u, 0u), false) & var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -648f), var_0.b.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 682f, _wgslsmith_f_op_f32(-var_1.d.b.x))));
    var var_3 = Struct_1(var_0.a >> (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, 47840u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, var_1.d.a.x, 8815u, 93704u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(23393u, 9u)], 0u, 9077u, 4294967295u), vec4<u32>(0u, 0u, var_1.d.a.x, u_input.b.x)))) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(ceil(var_0.b.x))));
    return reverseBits(reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_1.a.a.x) << (select(~4294967295u, 4152u, true) % 32u), 8u)]));
}

fn func_2() -> Struct_2 {
    global3 = array<vec3<i32>, 14>();
    var var_0 = Struct_3(-1000f, true, Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)]) | abs(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55422u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-398f, 1396f) - vec2<f32>(605f, 627f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-991f, -1378f)))), vec3<i32>(u_input.a.x, global4[_wgslsmith_index_u32(~4294967295u, 8u)], max(func_3(), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b.x), 8u)])), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), u_input.a), -global4[_wgslsmith_index_u32(0u, 8u)] << (u_input.b.x % 32u)), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 12314u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 9u)], 718u)), 1u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), select(0u, u_input.b.x, false)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1169f, -1282f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f - -2838f)), Struct_2(Struct_1(vec4<u32>(min(0u, 1u), ~global1[_wgslsmith_index_u32(4294967295u, 9u)], 47081u, global1[_wgslsmith_index_u32(107421u, 9u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(242f, -1300f), vec2<f32>(-205f, 221f)))), vec3<i32>(~global4[_wgslsmith_index_u32(1u, 8u)], abs(3243i), _wgslsmith_mod_i32(u_input.a.x, global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(83557u, 9u)], 8u)])), ~u_input.a, Struct_1(vec4<u32>(u_input.b.x, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), 1u, 0u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(421f, 239f)))))));
    global1 = array<u32, 9>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f * 807f)))));
    return Struct_2(var_0.e.d, ~vec3<i32>(-(i32(-1i) * -1i), func_3() ^ min(-1i, global4[_wgslsmith_index_u32(4294967295u, 8u)]), global4[_wgslsmith_index_u32(u_input.b.x, 8u)] & u_input.a.x), min(~_wgslsmith_mult_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 8u)], global4[_wgslsmith_index_u32(1u, 8u)]) >> (vec2<u32>(var_0.e.d.a.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(var_0.c.c, var_0.c.b.yy, vec2<i32>(-2147483647i, -1i))), select(vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 8u)]) << (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)]) % vec2<u32>(32u)), -(~u_input.a), select(vec2<bool>(false, true), select(vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b)), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.b)))), Struct_1(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)], 0u, var_0.e.d.a.x, 0u) | var_0.e.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(124f, -1776f), vec2<f32>(-598f, -1418f), var_0.b))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.a.b.x;
    var var_1 = Struct_1(arg_0.a.a, arg_0.d.b);
    var var_2 = func_2().a;
    global0 = -2147483647i;
    global0 = -33168i;
    return Struct_1((~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.x, 9u)], 9u)], 4294967295u, 1u, arg_0.a.a.x) >> ((~var_1.a | select(arg_0.d.a, vec4<u32>(global1[_wgslsmith_index_u32(var_2.a.x, 9u)], 1u, var_1.a.x, var_2.a.x), false)) % vec4<u32>(32u))) | vec4<u32>(4294967295u, 85294u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 52238u), ~arg_0.d.a.xz), ~7835u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 190f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.b.x)) + _wgslsmith_f_op_f32(round(243f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-1585f - var_1.b.x), any(vec2<bool>(true, true)))) * 1330f)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global4 = array<i32, 8>();
    var var_0 = func_4(func_2(), arg_0.e.b);
    var_0 = Struct_1(vec4<u32>(var_0.a.x, ~arg_0.c.d.a.x, ~reverseBits(select(var_0.a.x, 4294967295u, true)), _wgslsmith_div_u32(arg_0.c.a.a.x, ~34149u)), var_0.b);
    let var_1 = Struct_4(_wgslsmith_mod_vec2_u32(arg_0.c.a.a.zz, ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.xz, vec2<u32>(69756u, 8492u)), u_input.b.zz << (vec2<u32>(38301u, arg_0.c.d.a.x) % vec2<u32>(32u)))));
    global0 = _wgslsmith_sub_i32(-4061i, arg_0.e.b.x) | ~_wgslsmith_sub_i32(arg_0.c.b.x, 0i);
    return -615f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    global2 = array<vec3<i32>, 23>();
    let var_0 = 38405i;
    global2 = array<vec3<i32>, 23>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(-466f, true, Struct_2(Struct_1(vec4<u32>(12109u, u_input.b.x, u_input.b.x, 22727u), vec2<f32>(979f, 762f)), vec3<i32>(-28423i, global4[_wgslsmith_index_u32(4294967295u, 8u)], 21353i), vec2<i32>(u_input.a.x, -9599i), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 1u, 36074u, 31491u), vec2<f32>(400f, -698f))), 1737f, Struct_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(24376u, 9u)], 0u, 0u, 4294967295u), vec2<f32>(-724f, 1018f)), vec3<i32>(1i, var_0, 8744i), vec2<i32>(-21622i, u_input.a.x), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 15883u, u_input.b.x, 1u), vec2<f32>(-219f, -190f)))))) * -380f), _wgslsmith_f_op_f32(min(910f, -1268f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1534f))) * -548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_f32(sign(-224f)), true, Struct_2(Struct_1(vec4<u32>(82962u, 36815u, 43509u, 56530u), vec2<f32>(-905f, 1689f)), global3[_wgslsmith_index_u32(69846u, 14u)], vec2<i32>(2147483647i, -2147483647i), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 1u, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.b.x), vec2<f32>(-948f, 1162f))), _wgslsmith_f_op_f32(min(-313f, 905f)), Struct_2(Struct_1(vec4<u32>(1u, 6342u, global1[_wgslsmith_index_u32(0u, 9u)], 1u), vec2<f32>(1000f, -1600f)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 23u)], u_input.a, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec2<f32>(339f, 953f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(~_wgslsmith_div_i32(33687i, -39577i), u_input.a.x), _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(var_0, u_input.a.x, var_0)), countOneBits(~global3[_wgslsmith_index_u32(0u, 14u)]))), firstLeadingBit(max(vec2<i32>(-1i, u_input.a.x), -u_input.a)), ~(vec2<u32>(~1u, 4294967295u) | (u_input.b.zy | ~u_input.b.yz)));
}

