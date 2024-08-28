struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(21285u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(7099u, 3251u), vec2<u32>(0u, 29199u), vec2<u32>(4294967295u, 32944u), vec2<u32>(4294967295u, 26462u), vec2<u32>(0u, 0u), vec2<u32>(11689u, 23607u), vec2<u32>(0u, 30886u), vec2<u32>(33099u, 4632u), vec2<u32>(20304u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(12958u, 4294967295u), vec2<u32>(13052u, 4294967295u), vec2<u32>(23519u, 35786u));

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(0u, 4183u, 5623u), vec3<u32>(30190u, 8185u, 1u), vec3<u32>(0u, 4294967295u, 8535u), vec3<u32>(0u, 30248u, 13748u), vec3<u32>(4294967295u, 96589u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 46940u), vec3<u32>(95007u, 35947u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 19011u, 0u), vec3<u32>(39551u, 33511u, 51382u), vec3<u32>(57247u, 0u, 0u), vec3<u32>(26165u, 19732u, 13471u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 2946u, 62511u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(23496u, 0u, 4294967295u), vec3<u32>(0u, 0u, 8794u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 4294967295u, 33090u), vec3<u32>(44743u, 19100u, 31987u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(67749u, 40150u, 39233u), vec3<u32>(4294967295u, 57480u, 39592u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(60867u, 6150u, 33786u), vec3<u32>(4058u, 20796u, 129542u), vec3<u32>(4294967295u, 1u, 84062u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 42325u, 16413u), vec3<u32>(1u, 16026u, 145558u));

var<private> global2: array<f32, 21> = array<f32, 21>(-988f, 137f, -847f, -1294f, 189f, -197f, 1081f, 1426f, 292f, 451f, 1649f, -1435f, -802f, 1586f, -1000f, 823f, 167f, -500f, -689f, 1119f, 394f);

var<private> global3: Struct_1 = Struct_1(false, true, 1u, 35264i);

var<private> global4: array<bool, 26> = array<bool, 26>(true, false, false, true, true, false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, true, true, false, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(1861i, global3.d, firstLeadingBit(-2147483647i)) >> (~select(~global1[_wgslsmith_index_u32(1u, 32u)], vec3<u32>(29515u, u_input.e, u_input.d.x), select(vec3<bool>(false, arg_0, true), vec3<bool>(false, arg_0, arg_0), true)) % vec3<u32>(32u)), -(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.d, -1i, 22063i), vec3<i32>(2147483647i, 1i, 10347i), vec3<i32>(-22734i, global3.d, global3.d))) ^ vec3<i32>(global3.d, -14327i, 33493i)));
    let var_1 = i32(-1i) * -51143i;
    let var_2 = Struct_1((_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.c, 21u)]))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.e, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -1747f)))) | all(vec3<bool>(true, true, true)), true, abs(0u), i32(-1i) * -38674i);
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    return !(1i == global3.d) & true;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = -157f;
    let var_1 = arg_2;
    let var_2 = global3.d;
    global4 = array<bool, 26>();
    let var_3 = all(!select(select(!vec4<bool>(true, false, global3.a, var_1.x), vec4<bool>(var_1.x, false, arg_2.x, var_1.x), !vec4<bool>(true, arg_2.x, var_1.x, global4[_wgslsmith_index_u32(1u, 26u)])), !vec4<bool>(arg_2.x, global3.b, arg_2.x, false), func_3(arg_2.x)));
    return arg_2;
}

fn func_4(arg_0: vec2<bool>) -> f32 {
    global4 = array<bool, 26>();
    let var_0 = !vec3<bool>(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, _wgslsmith_add_u32(global3.c, 1012u)), 21u)], vec3<u32>(min(0u, 0u), ~u_input.a, global3.c), !arg_0, abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global3.d, global3.d), vec3<i32>(global3.d, global3.d, 1i)))).x, false, arg_0.x);
    let var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(select(global0[_wgslsmith_index_u32(43596u, 17u)], vec2<u32>(u_input.e, 4294967295u), var_0.xz)), vec2<u32>(~3960u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 111382u, u_input.a), u_input.b.xzx))), 100691u), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(max(0u, u_input.d.x), global3.c), _wgslsmith_clamp_u32(global3.c, 2254u, 1u) ^ 1u)), 21u)], false);
    let var_2 = -(~select(min(vec2<i32>(1i, 21530i) ^ vec2<i32>(global3.d, -28654i), vec2<i32>(global3.d, global3.d)), max(abs(vec2<i32>(global3.d, global3.d)), vec2<i32>(2147483647i, global3.d)), false));
    var var_3 = Struct_2(7335u, _wgslsmith_clamp_u32(select(countOneBits(~17893u), 10130u, true), 42247u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.e, u_input.e, 4294967295u), vec4<u32>(0u, 34995u, 57909u, 11725u)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~60388u, 21u)]), !(!(global3.c == u_input.d.x)) && !(!any(var_0.yx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.c)) + _wgslsmith_f_op_f32(sign(-1193f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global3 = Struct_1(true, false, u_input.a, 2147483647i);
    let var_0 = Struct_2(min(abs(_wgslsmith_sub_u32(4294967295u, arg_0.c)) ^ arg_0.c, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 54721u), 72381u)), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(36378u, arg_0.c), 53234u), _wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), func_2(_wgslsmith_div_f32(1686f, -1058f), u_input.b.xwy & vec3<u32>(global3.c, 80139u, 49541u), select(vec2<bool>(true, false), vec2<bool>(false, global3.a), vec2<bool>(true, global3.b)), abs(arg_1.wxy)), !select(vec2<bool>(arg_0.a, true), vec2<bool>(global3.b, true), vec2<bool>(arg_0.b, arg_0.b))))), arg_0.a);
    var var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-400f, 2240f, global2[_wgslsmith_index_u32(~global3.c, 21u)], 928f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_0.c, 21u)], var_0.c, global2[_wgslsmith_index_u32(4294967295u, 21u)], 1226f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, global2[_wgslsmith_index_u32(var_0.b, 21u)], global2[_wgslsmith_index_u32(36075u, 21u)], 303f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1811f, var_0.c, 1326f, 1839f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-706f, -462f, var_0.c, 1387f))), !vec4<bool>(arg_0.a, global4[_wgslsmith_index_u32(0u, 26u)], false, false)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-194f, -331f, var_1.x)), 319f))), -220f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(f32(-1f) * -182f))));
    let var_3 = Struct_1(any(select(!vec4<bool>(true, false, var_1.x, var_0.d), !vec4<bool>(true, true, true, var_1.x), var_0.d | false)) != var_0.d, func_3(global3.b) == var_1.x, select(max(global3.c, 12749u) & ~var_0.b, u_input.a, global3.b) << (94084u % 32u), _wgslsmith_add_i32(-25045i, -7861i));
    return -2188f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 21>();
    let var_0 = Struct_2(~1u, u_input.a, global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~(~4294967295u), ~(global3.c ^ 29170u)), _wgslsmith_div_u32(global3.c, 20969u)), 21u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e | u_input.e, u_input.b.x & 9499u) | vec2<u32>(_wgslsmith_mult_u32(global3.c, 100004u), u_input.b.x), ~vec2<u32>(abs(global3.c), _wgslsmith_mult_u32(u_input.b.x, global3.c))), 26u)]);
    var var_1 = ~abs(u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-1648f - _wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_f_op_f32(var_0.c + -1283f))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2307f, var_2.x, -741f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1935f, -821f, var_0.c) + vec3<f32>(var_0.c, var_0.c, var_0.c)), vec3<bool>(true, true, true))))));
    let var_3 = global3.c < ~min(_wgslsmith_mod_u32(_wgslsmith_add_u32(global3.c, 1u), global3.c), ~select(16809u, u_input.c.x, global4[_wgslsmith_index_u32(global3.c, 26u)]));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, global3.b, 20623u, 34041i), vec4<i32>(-43330i, global3.d, -2147483647i, 39254i))) + _wgslsmith_f_op_f32(var_2.x - -726f)), _wgslsmith_f_op_f32(var_2.x - -1281f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1111f, -192f, var_2.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 553f, 1000f)))))));
    let var_5 = Struct_2(u_input.a, ~_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(4294967295u, 0u, 55109u)), _wgslsmith_mult_vec3_u32(~global1[_wgslsmith_index_u32(u_input.e, 32u)], abs(u_input.b.zzz))), -448f, !any(select(!vec4<bool>(var_3, var_3, var_0.d, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(global3.c, 26u)]), vec4<bool>(false, global3.a, true, global4[_wgslsmith_index_u32(var_0.a, 26u)]), vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(1u, 26u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~(max(~global3.c, u_input.d.x) ^ global3.c));
}

