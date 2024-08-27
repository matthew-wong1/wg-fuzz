struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<f32>(1026f, -1135f), Struct_1(vec4<f32>(520f, -575f, -487f, 1334f), vec3<u32>(0u, 57377u, 2848u), vec2<f32>(-2015f, -1074f), 5780u, -1i), vec3<i32>(1i, 2443i, -42508i)), Struct_3(vec2<f32>(218f, 3114f), Struct_1(vec4<f32>(-554f, 1015f, 875f, 1031f), vec3<u32>(34264u, 0u, 4294967295u), vec2<f32>(1237f, -2546f), 1u, 0i), vec3<i32>(3063i, 49806i, 1i)), Struct_3(vec2<f32>(932f, 926f), Struct_1(vec4<f32>(-721f, 1000f, -1774f, -604f), vec3<u32>(62546u, 1u, 1u), vec2<f32>(-283f, -1482f), 3721u, 2147483647i), vec3<i32>(-20956i, i32(-2147483648), 1i)), Struct_3(vec2<f32>(796f, -1000f), Struct_1(vec4<f32>(-275f, 911f, 1929f, 141f), vec3<u32>(4294967295u, 1u, 15072u), vec2<f32>(-1694f, 387f), 1u, -1i), vec3<i32>(3003i, 2147483647i, i32(-2147483648))), Struct_3(vec2<f32>(1527f, -1177f), Struct_1(vec4<f32>(216f, -650f, -299f, 1644f), vec3<u32>(27611u, 33418u, 4294967295u), vec2<f32>(-268f, 901f), 64350u, 1i), vec3<i32>(1i, 2147483647i, 0i)), Struct_3(vec2<f32>(-1167f, -925f), Struct_1(vec4<f32>(-135f, 103f, -220f, 735f), vec3<u32>(42699u, 4819u, 4294967295u), vec2<f32>(1488f, -682f), 4378u, -118863i), vec3<i32>(2147483647i, -5707i, 2147483647i)), Struct_3(vec2<f32>(-1471f, -1000f), Struct_1(vec4<f32>(2494f, -895f, 863f, 1000f), vec3<u32>(1u, 0u, 92803u), vec2<f32>(1829f, -1628f), 0u, -7046i), vec3<i32>(-1i, -1i, 10749i)), Struct_3(vec2<f32>(1094f, 185f), Struct_1(vec4<f32>(-359f, -815f, -835f, 432f), vec3<u32>(0u, 1u, 0u), vec2<f32>(892f, 1138f), 5077u, 16136i), vec3<i32>(1i, 14408i, 13736i)), Struct_3(vec2<f32>(721f, 3594f), Struct_1(vec4<f32>(543f, 847f, -280f, 258f), vec3<u32>(1u, 0u, 67974u), vec2<f32>(1582f, 504f), 0u, 70297i), vec3<i32>(1i, 43225i, -21390i)), Struct_3(vec2<f32>(257f, -1873f), Struct_1(vec4<f32>(206f, -627f, 774f, -539f), vec3<u32>(0u, 0u, 1u), vec2<f32>(-707f, -612f), 48941u, -28233i), vec3<i32>(0i, -14187i, -4038i)), Struct_3(vec2<f32>(-714f, 566f), Struct_1(vec4<f32>(577f, 107f, -979f, 260f), vec3<u32>(4294967295u, 65728u, 4294967295u), vec2<f32>(1120f, -441f), 41750u, 2147483647i), vec3<i32>(-32734i, -75501i, -1i)), Struct_3(vec2<f32>(-1411f, 1102f), Struct_1(vec4<f32>(-1148f, 1578f, -329f, 1644f), vec3<u32>(22840u, 0u, 0u), vec2<f32>(-943f, 1000f), 35791u, 17055i), vec3<i32>(23676i, -3671i, 37773i)), Struct_3(vec2<f32>(345f, 494f), Struct_1(vec4<f32>(-1050f, 1312f, 382f, -914f), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(202f, 749f), 69856u, i32(-2147483648)), vec3<i32>(-49472i, 0i, 43738i)), Struct_3(vec2<f32>(723f, 196f), Struct_1(vec4<f32>(-467f, -261f, 456f, -437f), vec3<u32>(11252u, 4294967295u, 88567u), vec2<f32>(-796f, -2114f), 55923u, i32(-2147483648)), vec3<i32>(0i, -1i, -1i)), Struct_3(vec2<f32>(764f, 184f), Struct_1(vec4<f32>(-121f, -581f, 1365f, -1789f), vec3<u32>(9651u, 1u, 0u), vec2<f32>(348f, 1519f), 51416u, 0i), vec3<i32>(0i, 29240i, -1i)), Struct_3(vec2<f32>(626f, -766f), Struct_1(vec4<f32>(-420f, 974f, 425f, 1565f), vec3<u32>(23178u, 4294967295u, 27601u), vec2<f32>(1715f, -1000f), 5825u, 0i), vec3<i32>(-1i, 1i, 1i)), Struct_3(vec2<f32>(-1000f, 424f), Struct_1(vec4<f32>(432f, 1040f, 254f, -1101f), vec3<u32>(0u, 4294967295u, 0u), vec2<f32>(477f, 802f), 4294967295u, i32(-2147483648)), vec3<i32>(-50170i, i32(-2147483648), 13806i)), Struct_3(vec2<f32>(-117f, 1273f), Struct_1(vec4<f32>(-487f, -1487f, 1033f, -1000f), vec3<u32>(41250u, 18815u, 15867u), vec2<f32>(749f, 1588f), 1u, -20362i), vec3<i32>(-17077i, 2147483647i, 14184i)), Struct_3(vec2<f32>(-1311f, -1635f), Struct_1(vec4<f32>(-1110f, 546f, 377f, 1960f), vec3<u32>(39817u, 0u, 4294967295u), vec2<f32>(1416f, -1000f), 1u, -1i), vec3<i32>(24041i, i32(-2147483648), -20451i)), Struct_3(vec2<f32>(1000f, -2537f), Struct_1(vec4<f32>(440f, 221f, 1987f, -448f), vec3<u32>(1u, 89984u, 4294967295u), vec2<f32>(-889f, 968f), 1u, -13907i), vec3<i32>(-6586i, 51517i, 35089i)), Struct_3(vec2<f32>(171f, -603f), Struct_1(vec4<f32>(-342f, 1370f, 1346f, -195f), vec3<u32>(7994u, 1u, 4294967295u), vec2<f32>(1783f, 346f), 0u, i32(-2147483648)), vec3<i32>(4700i, -1i, 1i)), Struct_3(vec2<f32>(-469f, -136f), Struct_1(vec4<f32>(-120f, -1050f, -207f, -2023f), vec3<u32>(4294967295u, 58666u, 35264u), vec2<f32>(1489f, 702f), 0u, 2147483647i), vec3<i32>(-11903i, 12891i, i32(-2147483648))));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<bool> {
    global3 = array<i32, 5>();
    global1 = select(!vec3<bool>(true, !any(vec3<bool>(arg_1.x, arg_0.x, false)), !arg_0.x), arg_0, arg_0);
    var var_0 = Struct_2(4294967295u);
    let var_1 = ~(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, -2147483647i, -23873i), vec3<i32>(global2.e, global2.e, -18564i)), 8634i)) << (_wgslsmith_dot_vec2_u32(max(~arg_2.b.xx, global2.b.xy), vec2<u32>(global2.d, 0u) << ((_wgslsmith_add_vec2_u32(u_input.a.yz, global2.b.xy) << (_wgslsmith_mod_vec2_u32(vec2<u32>(7u, 29212u), arg_2.b.xz) % vec2<u32>(32u))) % vec2<u32>(32u))) % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.c.x, arg_2.a.x, global2.a.x, global2.c.x), vec4<f32>(arg_2.c.x, arg_2.a.x, -1291f, arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, 1137f, arg_2.c.x) * vec4<f32>(global2.c.x, arg_2.a.x, 740f, -781f))))), u_input.a, vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global2.a.x)), u_input.a.x, 56385i);
    return !arg_1.zzw;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    global1 = select(select(!func_3(select(vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, false, false)), vec4<bool>(true, true, arg_2, arg_2), Struct_1(vec4<f32>(global2.c.x, -1103f, global2.a.x, -1097f), vec3<u32>(4294967295u, 69656u, u_input.a.x), vec2<f32>(global2.a.x, global2.c.x), 0u, 2147483647i)), !(!func_3(vec3<bool>(global1.x, false, false), vec4<bool>(false, true, global1.x, global1.x), Struct_1(vec4<f32>(-812f, arg_1.x, -559f, 912f), vec3<u32>(global2.b.x, global2.d, 28933u), vec2<f32>(arg_1.x, global2.c.x), 4294967295u, global2.e))), false), vec3<bool>(any(vec2<bool>(any(vec3<bool>(global1.x, arg_2, arg_2)), !global1.x)), !all(vec4<bool>(true, false, arg_2, true)), true), vec3<bool>(arg_2, global1.x, true));
    let var_0 = 32131u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x)))) - arg_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.a.x)))));
    global0 = array<Struct_3, 22>();
    let var_2 = !vec4<bool>(_wgslsmith_div_f32(-1948f, _wgslsmith_f_op_f32(var_1.x + var_1.x)) < global2.a.x, select(true, any(select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, true, false), arg_2)), false), true & (!arg_2 & true), true);
    return Struct_2(~1u);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, abs(~global2.b)), 5u)], _wgslsmith_clamp_i32(-2147483647i ^ global2.e, -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, 2147483647i, global2.e, -2147483647i), vec4<i32>(-13790i, global3[_wgslsmith_index_u32(4294967295u, 5u)], global2.e, 42569i)), 1i & global3[_wgslsmith_index_u32(~global2.d, 5u)])), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.c.x, global2.c.x)))) > _wgslsmith_f_op_f32(select(global2.c.x, _wgslsmith_f_op_f32(global2.c.x * 379f), true)));
    global0 = array<Struct_3, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-global2.a.zzy);
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(1000f * -432f), _wgslsmith_f_op_f32(trunc(-189f))), var_0.a, ~global2.e);
    let var_2 = global1.x;
    return Struct_1(global2.a, global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.c.x - 476f))))), var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i >> (~u_input.a.x % 32u), -1i), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(1i, 1i) & vec2<i32>(global3[_wgslsmith_index_u32(24745u, 5u)], global3[_wgslsmith_index_u32(global2.d, 5u)])), abs(countOneBits(vec2<i32>(global3[_wgslsmith_index_u32(global2.b.x, 5u)], global3[_wgslsmith_index_u32(16265u, 5u)]))), -firstLeadingBit(vec2<i32>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(global2.d, 5u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = func_1();
    let var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~var_0.d, min(var_0.b.x, global2.d), ~var_0.d) >> (min(firstTrailingBit(global2.b) >> (global2.b % vec3<u32>(32u)), ~(~var_0.b)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 1u, ~(~(var_0.b.x << (var_0.b.x % 32u)))));
    global0 = array<Struct_3, 22>();
    var var_2 = func_2(global3[_wgslsmith_index_u32(func_1().b.x, 5u)], global2.a, any(!(!global1.zx)));
    global1 = select(func_3(vec3<bool>(select(!global1.x, -1074f <= var_0.a.x, true), global1.x, -354f != _wgslsmith_div_f32(var_0.a.x, -400f)), vec4<bool>(_wgslsmith_f_op_f32(var_0.c.x - 1006f) <= _wgslsmith_f_op_f32(-var_0.a.x), any(select(vec2<bool>(false, true), vec2<bool>(false, false), global1.yx)), true, global1.x), func_1()), !vec3<bool>(global1.x || (global2.c.x <= var_0.a.x), all(vec3<bool>(global1.x, true, false)), true), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(global2.b.x >> (global2.d % 32u), 4294967295u), countOneBits(~(vec2<u32>(var_1.x, 4294967295u) >> (vec2<u32>(global2.b.x, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c.x, -1059f), var_0.c.x, false)))), 134684u, abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, global2.d, 4294967295u), vec4<u32>(u_input.a.x, var_1.x, 1u, var_0.b.x)) >> (vec4<u32>(0u, 104583u, 1u, var_1.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~93542u, global2.b.x, _wgslsmith_add_u32(var_2.a, var_1.x)))));
}

