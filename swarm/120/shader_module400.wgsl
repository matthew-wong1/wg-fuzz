struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<i32, 30>;

var<private> global2: u32 = 18628u;

var<private> global3: array<f32, 25> = array<f32, 25>(-1488f, 1000f, 1060f, -1195f, 322f, 1794f, 427f, 474f, -1187f, 449f, -963f, 294f, 784f, -233f, -673f, 1711f, -276f, 1743f, 521f, -292f, -292f, -421f, 747f, -1776f, 1239f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> bool {
    global0 = array<vec2<i32>, 25>();
    global1 = array<i32, 30>();
    let var_0 = Struct_1((_wgslsmith_clamp_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(27137u, 30u)], u_input.a), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(1u, 25u)], arg_0), -vec2<i32>(-1i, 21954i)) ^ arg_0) << (vec2<u32>(5224u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 105460u), 0u)) % vec2<u32>(32u)), !(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_add_i32(2147483647i, u_input.a)) == 1i), vec3<u32>(13119u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, 61844u), _wgslsmith_clamp_u32(abs(27080u), _wgslsmith_div_u32(50856u, 1u), abs(1089u))), 0u));
    global2 = _wgslsmith_div_u32(~var_0.c.x, 1u);
    let var_1 = 1u;
    return false;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> bool {
    global2 = countOneBits(arg_3.x);
    let var_0 = Struct_1(vec2<i32>(5880i, u_input.a), select(firstLeadingBit(~0i), i32(-1i) * -34861i, true) > abs(arg_2), arg_3);
    global3 = array<f32, 25>();
    var var_1 = Struct_1(var_0.a, false, firstLeadingBit(vec3<u32>(select(var_0.c.x, _wgslsmith_add_u32(54118u, var_0.c.x), any(vec3<bool>(var_0.b, var_0.b, true))), arg_3.x, ~var_0.c.x & _wgslsmith_mult_u32(arg_3.x, arg_3.x))));
    global2 = ~4294967295u;
    return var_0.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<i32, 30>();
    let var_0 = arg_2;
    let var_1 = vec4<u32>(~1u, arg_3.c.x, arg_1.c.x, ~24020u);
    let var_2 = vec4<bool>(false, func_3(vec4<i32>(~(~global1[_wgslsmith_index_u32(arg_1.c.x, 30u)]), -global1[_wgslsmith_index_u32(arg_2.c.x, 30u)], _wgslsmith_mult_i32(~8516i, _wgslsmith_mod_i32(-1i, arg_0)), 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-353f * _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(8866u, 25u)], -1991f, arg_2.b))), _wgslsmith_f_op_f32(f32(-1f) * -670f)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2.a.x, abs(-2147483647i), _wgslsmith_div_i32(arg_1.a.x, 24988i)), _wgslsmith_clamp_i32(select(2147483647i, 2147483647i, arg_2.b), 0i >> (arg_2.c.x % 32u), 39978i | var_0.a.x)), (~vec3<u32>(17356u, 0u, 10274u) >> (~arg_2.c % vec3<u32>(32u))) | min(~arg_1.c, vec3<u32>(arg_1.c.x, arg_3.c.x, 1u))), !arg_3.b, !(arg_1.b && true) && true);
    let var_3 = !(!select(vec4<bool>(all(vec3<bool>(var_2.x, false, arg_3.b)), arg_3.b, false, true), !var_2, arg_3.b));
    return arg_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.a, -u_input.a ^ -abs(select(0i, 2147483647i, arg_2.b)), min(-7277i, u_input.a), firstTrailingBit(32959i));
    let var_1 = arg_2.b;
    global3 = array<f32, 25>();
    var var_2 = max(_wgslsmith_mod_i32(~1i, -83500i), 6734i);
    var var_3 = func_2(0i, func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-var_0, firstLeadingBit(var_0)), -var_0), func_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -5481i), var_0.zxx), Struct_1(var_0.wz, true, arg_2.c ^ vec3<u32>(0u, arg_2.c.x, 1u)), arg_2, arg_2), func_2(min(-2147483647i << (arg_2.c.x % 32u), ~(-42977i)), func_2(0i, arg_2, Struct_1(var_0.xz, arg_0.x, arg_2.c), arg_2), Struct_1(vec2<i32>(u_input.a, u_input.a), 38338u <= arg_2.c.x, reverseBits(vec3<u32>(1u, arg_2.c.x, arg_2.c.x))), Struct_1(vec2<i32>(42410i, -19936i), arg_0.x, _wgslsmith_clamp_vec3_u32(arg_2.c, vec3<u32>(1u, arg_2.c.x, arg_2.c.x), arg_2.c))), arg_2), arg_2, arg_2);
    return Struct_1(vec2<i32>(arg_2.a.x, 2147483647i), false, vec3<u32>(~var_3.c.x >> (19595u % 32u), var_3.c.x, arg_2.c.x) & vec3<u32>(0u, 14813u, ~(~arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec2<bool>(!func_1(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -1i), 896f), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f * 134f)), true)), _wgslsmith_f_op_f32(floor(-3285f)))), func_2(1i, Struct_1(-vec2<i32>(16906i, -30365i), true, ~vec3<u32>(41489u, 53087u, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(~21469u, 25u)] & global0[_wgslsmith_index_u32(abs(0u), 25u)], true, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(1u, 11538u, 13796u)), vec3<u32>(1u, 1u, 1u))), Struct_1(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(~11811u, 30u)]), false, vec3<u32>(~0u, 1u, select(87133u, 20649u, false)))));
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)])), vec3<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], 334f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(128f, global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), vec3<f32>(-1000f, global3[_wgslsmith_index_u32(1u, 25u)], 1058f)), vec3<f32>(1314f, -1541f, global3[_wgslsmith_index_u32(28386u, 25u)]))), var_0.b)));
    var var_2 = Struct_1(vec2<i32>(-1i, u_input.a), !var_0.b != ((global3[_wgslsmith_index_u32(0u, 25u)] == -1309f) || !func_3(vec4<i32>(global1[_wgslsmith_index_u32(var_0.c.x, 30u)], -23699i, 8295i, 0i), -1000f, -6173i, vec3<u32>(7849u, 26764u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~var_0.c.x, ~var_0.c.x, ~1u), _wgslsmith_mult_u32(select(0u, var_0.c.x, var_0.b), var_0.c.x), abs(0u)), _wgslsmith_add_vec3_u32(vec3<u32>(~1u, _wgslsmith_div_u32(var_0.c.x, var_0.c.x), func_2(-22924i, Struct_1(vec2<i32>(2147483647i, var_0.a.x), var_0.b, var_0.c), Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], true, vec3<u32>(4294967295u, 44612u, 1u)), Struct_1(vec2<i32>(-20034i, 1i), true, vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x))).c.x), vec3<u32>(max(5243u, var_0.c.x), ~var_0.c.x, 4294967295u))));
    let var_3 = Struct_1(select(vec2<i32>(var_2.a.x & -31369i, _wgslsmith_clamp_i32(1i, max(-6982i, global1[_wgslsmith_index_u32(4720u, 30u)]), abs(1i))), var_0.a, vec2<bool>(true, true)), 0u < (_wgslsmith_dot_vec2_u32(var_2.c.yx, ~vec2<u32>(65546u, var_2.c.x)) >> (~(var_2.c.x & 40066u) % 32u)), ~var_0.c);
    global1 = array<i32, 30>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-783f * _wgslsmith_f_op_f32(f32(-1f) * -1193f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f)), _wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(1117f * global3[_wgslsmith_index_u32(var_3.c.x, 25u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 25u)], -342f, global3[_wgslsmith_index_u32(0u, 25u)]) - vec3<f32>(-1226f, var_1.x, 1000f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(365f, global3[_wgslsmith_index_u32(var_0.c.x, 25u)], 495f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1411f, 2166f, global3[_wgslsmith_index_u32(141531u, 25u)]), vec3<f32>(1383f, var_1.x, global3[_wgslsmith_index_u32(var_0.c.x, 25u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_2.c.x, 25u)], 627f, global3[_wgslsmith_index_u32(42387u, 25u)])))));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, ~1u, var_3.c.x << (4294967295u % 32u), countOneBits(var_3.c.x)), vec4<u32>(var_2.c.x, ~1u, var_0.c.x ^ var_0.c.x, ~75149u) ^ (vec4<u32>(var_0.c.x, 1u, var_0.c.x, var_0.c.x) ^ ~vec4<u32>(77621u, 51928u, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1213f, 1017f, var_1.x, -3537f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-227f, var_1.x, 148f, var_1.x), vec4<f32>(1000f, -1443f, var_1.x, global3[_wgslsmith_index_u32(0u, 25u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -330f, global3[_wgslsmith_index_u32(var_2.c.x, 25u)], -824f) - vec4<f32>(var_1.x, var_1.x, 676f, var_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, global3[_wgslsmith_index_u32(4294967295u, 25u)], 1230f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_1.x, -1000f, 265f))))), _wgslsmith_mod_i32(countOneBits(max(~(-21172i), _wgslsmith_add_i32(var_2.a.x, -110i))), 4937i | _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, -1i), var_3.a.x)));
}

