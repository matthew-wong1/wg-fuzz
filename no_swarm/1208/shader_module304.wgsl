struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(1752f, 0u, vec3<i32>(884i, -3160i, 6897i), vec4<f32>(1056f, 1208f, -834f, -388f), vec4<bool>(false, false, false, false))), Struct_2(Struct_1(-1588f, 1u, vec3<i32>(-1i, 2147483647i, 2310i), vec4<f32>(-1224f, -1526f, -959f, 278f), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-1000f, 1u, vec3<i32>(-1i, 1i, 0i), vec4<f32>(1000f, -1167f, -1000f, 1706f), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-616f, 33894u, vec3<i32>(i32(-2147483648), 2147483647i, 6398i), vec4<f32>(780f, -290f, -1298f, 1394f), vec4<bool>(false, false, true, false))), Struct_2(Struct_1(673f, 21650u, vec3<i32>(0i, -1i, -1i), vec4<f32>(1283f, 237f, -599f, 103f), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(1000f, 1u, vec3<i32>(0i, 2147483647i, -7013i), vec4<f32>(-276f, 2138f, 2170f, -525f), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(-584f, 86874u, vec3<i32>(-37726i, -22404i, 2147483647i), vec4<f32>(-500f, 1201f, -1367f, -1824f), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-239f, 1u, vec3<i32>(1i, 3263i, -44326i), vec4<f32>(-579f, 533f, 315f, 1000f), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(-484f, 39948u, vec3<i32>(16247i, -17239i, -30384i), vec4<f32>(733f, 820f, -511f, -687f), vec4<bool>(false, true, false, true))));

var<private> global3: array<bool, 26>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = Struct_5(arg_1, arg_1);
    let var_2 = vec3<u32>(0u, abs(~(var_0.b >> (arg_1.a.b % 32u)) << (4294967295u % 32u)), 52049u);
    let var_3 = -555f;
    let var_4 = !(!arg_1.a.e.zzy);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1467f), ~(~(~var_2.x)), ~(-countOneBits(-var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_1.b.a.d, _wgslsmith_div_vec4_f32(vec4<f32>(-1070f, -1237f, -365f, 701f), arg_1.a.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.d.x, 925f, var_0.d.x, 576f), vec4<f32>(1302f, var_1.a.a.d.x, var_0.a, 498f)))))), var_1.a.a.e);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    global4 = max(~_wgslsmith_mod_u32(arg_2.x, 15079u), ~(~(~arg_1.b.b)));
    global1 = arg_1.c.a;
    global3 = array<bool, 26>();
    global4 = arg_1.b.b;
    var var_0 = Struct_4(Struct_2(func_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(47701u, arg_1.c.a.b), 26u)], arg_1.c)));
    return var_0.a.a;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(global1.c, Struct_1(-830f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 33442u, 1u), ~vec3<u32>(global1.b, arg_1.b, 0u)), vec3<i32>(abs(arg_1.c.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.c.x, -93729i, 2147483647i, arg_1.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a, u_input.a), vec4<i32>(arg_1.c.x, -57310i, global1.c.x, -1i))), arg_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global1.d.x, -1888f, -768f)) - _wgslsmith_f_op_vec4_f32(floor(global1.d))) * arg_1.d), arg_1.e), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1871f + 326f) + _wgslsmith_f_op_f32(global1.d.x + -375f)), _wgslsmith_add_u32(func_2(true, Struct_2(arg_1)).b, _wgslsmith_clamp_u32(arg_1.b, arg_1.b, global1.b)), select(~global1.c, vec3<i32>(arg_1.c.x, u_input.a, -1i), func_2(false, Struct_2(arg_1)).e.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 147f, -198f, arg_1.a)), _wgslsmith_f_op_vec4_f32(-arg_1.d))), vec4<bool>(any(global1.e), false, true, !global1.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -426f));
    let var_1 = true;
    global2 = array<Struct_2, 9>();
    let var_2 = Struct_5(global2[_wgslsmith_index_u32(0u, 9u)], Struct_2(func_2(true, global2[_wgslsmith_index_u32(11796u, 9u)])));
    let var_3 = Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(var_2.a.a.a * var_2.b.a.d.x) < -407f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 26u)], 1u, vec3<i32>(global1.c.x, 36915i, -41453i), var_2.a.a.d, arg_1.e)))));
    return ~min(61097u, ~1u >> (0u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(arg_2 << (arg_1 % 32u), 9u)]);
    var var_1 = !(!func_1(578f, Struct_3(~vec3<i32>(arg_0.c.x, arg_0.c.x, 64870i), func_1(-1104f, Struct_3(vec3<i32>(global1.c.x, global1.c.x, 2147483647i), arg_0, Struct_2(arg_0), 405f), vec3<u32>(1u, 1u, arg_0.b)), Struct_2(Struct_1(102f, 75970u, var_0.a.a.c, vec4<f32>(-1392f, global1.a, var_0.a.a.a, -1539f), var_0.a.a.e)), func_2(global1.e.x, Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_2, 26u)], var_0.a.a.b, var_0.a.a.c, vec4<f32>(-1372f, -378f, global0[_wgslsmith_index_u32(0u, 26u)], var_0.a.a.d.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(79508u, 26u)], var_0.a.a.e.x)))).d.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 16674u), vec3<u32>(38386u, 51815u, var_0.a.a.b)), ~vec3<u32>(1u, 0u, 81229u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 1u, arg_0.b), vec3<u32>(arg_2, global1.b, arg_2), vec3<u32>(6718u, var_0.a.a.b, arg_2)))).e);
    let var_2 = Struct_5(Struct_2(var_0.a.a), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(arg_1, ~1u), countOneBits(~32118u)), 9u)]);
    let var_3 = 151586u;
    global0 = array<f32, 26>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 39451u;
    var var_1 = 0i;
    global3 = array<bool, 26>();
    var var_2 = vec4<i32>(-2147483647i, u_input.a, -func_4(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(28u, 1u), 26u)], ~1u, vec3<i32>(u_input.a, 1i, -1i) | global1.c, global1.d, !global1.e), 31228u, func_3(true & global1.e.x, func_1(global0[_wgslsmith_index_u32(var_0, 26u)], Struct_3(vec3<i32>(-1i, global1.c.x, global1.c.x), Struct_1(global1.a, 48291u, global1.c, global1.d, vec4<bool>(true, global1.e.x, global3[_wgslsmith_index_u32(global1.b, 26u)], global1.e.x)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0, 26u)], global1.b, vec3<i32>(global1.c.x, 2147483647i, 2147483647i), vec4<f32>(-363f, global1.d.x, 622f, global0[_wgslsmith_index_u32(22375u, 26u)]), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, true))), global0[_wgslsmith_index_u32(55037u, 26u)]), vec3<u32>(var_0, 57912u, 0u)))), max(-_wgslsmith_div_i32(global1.c.x, _wgslsmith_mod_i32(global1.c.x, global1.c.x)), ~(-15102i)));
    global1 = Struct_1(114f, var_0, min(_wgslsmith_div_vec3_i32(~var_2.wwz, -global1.c) & _wgslsmith_mod_vec3_i32(-global1.c, -vec3<i32>(var_2.x, u_input.a, u_input.a)), abs(firstLeadingBit(var_2.zyw) & func_1(-1665f, Struct_3(global1.c, Struct_1(global1.d.x, 0u, vec3<i32>(var_2.x, global1.c.x, 2147483647i), vec4<f32>(global0[_wgslsmith_index_u32(global1.b, 26u)], global0[_wgslsmith_index_u32(global1.b, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global1.b, 26u)]), vec4<bool>(true, global1.e.x, global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(69984u, 26u)])), Struct_2(Struct_1(global0[_wgslsmith_index_u32(71287u, 26u)], global1.b, var_2.xwx, global1.d, vec4<bool>(global1.e.x, global3[_wgslsmith_index_u32(var_0, 26u)], false, global3[_wgslsmith_index_u32(var_0, 26u)]))), global0[_wgslsmith_index_u32(global1.b, 26u)]), vec3<u32>(35639u, global1.b, 1u)).c)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36842u, 26u)]), 1139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * global1.d.x)), 353f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)])))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(14870u, 26u)])) * 1f), _wgslsmith_f_op_f32(-236f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0, 26u)] * _wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(18731u), 26u)] * _wgslsmith_f_op_f32(741f + global0[_wgslsmith_index_u32(global1.b, 26u)])))), global1.e);
    global0 = array<f32, 26>();
    global2 = array<Struct_2, 9>();
    var var_3 = _wgslsmith_f_op_f32(step(-945f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~global1.b, 26u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(996f + -657f))))), global1.a))));
    let var_4 = global3[_wgslsmith_index_u32(61288u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~func_1(513f, Struct_3(var_2.xyy, Struct_1(-450f, 1u, global1.c, vec4<f32>(global0[_wgslsmith_index_u32(var_0, 26u)], global0[_wgslsmith_index_u32(var_0, 26u)], global1.d.x, -1434f), vec4<bool>(global3[_wgslsmith_index_u32(global1.b, 26u)], global1.e.x, false, false)), global2[_wgslsmith_index_u32(global1.b, 9u)], global1.d.x), vec3<u32>(global1.b, var_0, 47575u)).b), 14151u, global1.b, 0u), ~vec3<u32>(39191u, func_2(func_1(global1.a, Struct_3(var_2.xwz, Struct_1(-1000f, var_0, vec3<i32>(var_2.x, -2147483647i, -22178i), global1.d, vec4<bool>(true, true, global1.e.x, true)), global2[_wgslsmith_index_u32(var_0, 9u)], global0[_wgslsmith_index_u32(42420u, 26u)]), vec3<u32>(global1.b, 0u, var_0)).e.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 0u), vec2<u32>(4294967295u, 88702u)), 9u)]).b, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20451u, 26u)] - global0[_wgslsmith_index_u32(var_0, 26u)]) * -285f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 26u)]) + _wgslsmith_f_op_f32(-122f + 107f)))), ~firstTrailingBit(~vec3<u32>(0u, 1u, global1.b) & (vec3<u32>(0u, global1.b, 10903u) | vec3<u32>(4294967295u, global1.b, 5919u))), vec3<f32>(global0[_wgslsmith_index_u32(global1.b, 26u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 26u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1882f - global1.d.x) - _wgslsmith_f_op_f32(global1.a * 745f)))));
}

