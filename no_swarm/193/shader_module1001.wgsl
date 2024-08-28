struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<vec2<f32>, 6>;

var<private> global2: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false));

var<private> global3: array<vec3<f32>, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32) -> vec4<bool> {
    global2 = array<vec4<bool>, 14>();
    return !(!select(!global2[_wgslsmith_index_u32(min(arg_0.x, 4294967295u), 14u)], !select(vec4<bool>(false, false, true, true), global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(23026u, 14u)]), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), global2[_wgslsmith_index_u32(arg_0.x, 14u)])));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(511f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1127f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2420f) * 541f) + _wgslsmith_f_op_f32(f32(-1f) * -2386f))), true & !(true & func_2(vec3<u32>(arg_0, arg_0, 0u), vec4<f32>(-1000f, 260f, -348f, 589f), -34378i).x));
    global3 = array<vec3<f32>, 21>();
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))), var_1.b);
    var_1 = Struct_3(var_1.a, all(!func_2(vec3<u32>(4294967295u, arg_0, arg_0) & vec3<u32>(arg_0, arg_0, 4294967295u), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_sub_i32(-2147483647i, var_0.x)).xxy));
    return select(var_0.x, var_0.x, true);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_4 {
    global1 = array<vec2<f32>, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1436f, -1000f, 187f, -498f) - global0[_wgslsmith_index_u32(arg_0.x, 27u)]) * vec4<f32>(-1209f, 303f, -180f, 301f)))) + global0[_wgslsmith_index_u32(~0u, 27u)]);
    var var_1 = arg_0.x ^ 9943u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 1103f, true)), true);
    global3 = array<vec3<f32>, 21>();
    return Struct_4(!(!select(func_2(arg_0, vec4<f32>(var_0.x, var_0.x, 1374f, 1000f), u_input.a.x), !vec4<bool>(arg_1, var_2.b, true, var_2.b), !vec4<bool>(false, var_2.b, false, true))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 27u)] - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, -1000f, var_2.a, 262f) * vec4<f32>(453f, var_2.a, var_2.a, var_2.a)), vec4<f32>(-351f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-614f - -522f)))), select(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, arg_0.x, 4294967295u, 1u)), firstLeadingBit(countOneBits(vec4<u32>(36979u, arg_0.x, 14519u, 0u)))), ~max(vec4<u32>(531u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 1u, 4294967295u, 25289u)), true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1758f, -178f, 543f) + vec3<f32>(-168f, -980f, var_0.x)), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(3562u, 21u)] - var_0.yxz), vec3<bool>(true, true, true)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(0u, 52439u, 1u, arg_0.x)) != countOneBits(arg_0.x), abs(func_3(~arg_0.x)), -select(func_3(arg_0.x), 0i, var_2.b)), arg_0.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    let var_0 = abs(u_input.a.ww);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), _wgslsmith_f_op_f32(-arg_2.b.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.b.x, arg_2.b.x), arg_1.b.yy)), arg_1.b.xw)))))));
    var var_3 = Struct_5(!arg_1.a.yz, _wgslsmith_clamp_i32(7167i, _wgslsmith_mod_i32((u_input.a.x & -8065i) & 2147483647i, min(abs(u_input.a.x), select(arg_1.d.c, arg_2.d.c, arg_1.d.b))), ~_wgslsmith_mod_i32(-10695i, var_0.x & 2147483647i)), ~(-7994i), func_1(vec3<u32>(arg_2.e, ~(~arg_1.e), arg_2.c.x), !any(arg_2.a.xyz)).d);
    global1 = array<vec2<f32>, 6>();
    return Struct_2(u_input.a.wz);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    global3 = array<vec3<f32>, 21>();
    global2 = array<vec4<bool>, 14>();
    let var_0 = Struct_5(select(vec2<bool>(true, abs(56420u) >= select(36354u, 46902u, true)), !func_2(abs(vec3<u32>(6135u, 1u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(240f, -994f, 332f, -668f) + global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_sub_i32(u_input.a.x, 355i)).zx, false), _wgslsmith_sub_i32(-2147483647i, func_4(_wgslsmith_clamp_vec3_i32(u_input.a.zxy, u_input.a.wwz, u_input.a.zzx), func_1(vec3<u32>(1u, 65851u, 37724u), false), func_1(vec3<u32>(0u, 65883u, 31439u), false)).a.x) >> (40772u % 32u), arg_1.a.x, func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(78056u), 4294967295u, ~4294967295u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(29455u, 4142u, 70408u)), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(48047u, 4910u), 0u >> (0u % 32u))), all(vec2<bool>(arg_0.x == arg_0.x, any(vec4<bool>(false, true, false, false))))).d);
    let var_1 = !func_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(18143u, 1u, 17739u) >> (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), !var_0.d.b).a.yx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(368f, func_1(vec3<u32>(1u, 1u, 1u), true).b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.a.x, _wgslsmith_f_op_f32(exp2(var_0.d.a.x)))) - _wgslsmith_f_op_f32(-160f + var_0.d.a.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a.x) - -156f), var_0.d.a.x))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(min(22266u, func_5(vec2<i32>(2147483647i, u_input.a.x) | firstLeadingBit(u_input.a.zw), func_4(countOneBits(u_input.a.xxw), func_1(vec3<u32>(34060u, 18415u, 1u), false), Struct_4(vec4<bool>(false, true, true, true), vec4<f32>(1317f, 391f, -374f, 138f), vec4<u32>(76204u, 84858u, 109540u, 1u), Struct_1(vec3<f32>(-242f, 1652f, -1714f), false, -10525i, 2147483647i), 4294967295u)))), abs(~1u));
    let var_1 = Struct_5(select(!select(vec2<bool>(true, true), func_2(vec3<u32>(44670u, 4294967295u, 14415u), vec4<f32>(-936f, 1000f, 459f, 182f), u_input.a.x).zw, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_1(~vec3<u32>(4294967295u, 1u, 0u), false).a.yw, !any(vec4<bool>(true, false, true, false))), vec2<bool>(func_1(abs(vec3<u32>(22719u, 8314u, 11393u)), true).d.b, !all(vec3<bool>(true, true, true)))), abs(u_input.a.x) ^ -2147483647i, ~select(26324i, -5796i, true) & 14495i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global3[_wgslsmith_index_u32(69406u, 21u)], global3[_wgslsmith_index_u32(68625u, 21u)]))) - _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1666u, 21567u), 21u)], _wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(0u, 21u)])))), true, _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x | 29109i), u_input.a.x));
    let var_2 = firstTrailingBit(~vec4<u32>(_wgslsmith_clamp_u32(1u, ~0u, ~1u), ~1u, _wgslsmith_div_u32(~23519u, func_5(vec2<i32>(var_1.d.d, var_1.c), Struct_2(vec2<i32>(2147483647i, 0i)))), 1u));
    global0 = array<vec4<f32>, 27>();
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.d.a.x, var_1.d.a.x)))), _wgslsmith_f_op_f32(round(168f)), -929f), var_1.a.x, u_input.a.x, ~1i);
    let var_4 = _wgslsmith_f_op_f32(-1901f * var_3.a.x) <= 229f;
    let var_5 = Struct_4(global2[_wgslsmith_index_u32(4294967295u, 14u)], vec4<f32>(_wgslsmith_f_op_f32(2455f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1105f, var_3.a.x)), -1193f))), _wgslsmith_div_f32(var_3.a.x, var_3.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.a.x * _wgslsmith_div_f32(-1226f, var_1.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x + var_1.d.a.x)))), var_1.d.a.x), _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, 56362u, 46504u, 14225u)), vec4<u32>(75151u, ~var_2.x, var_2.x, 1u)), Struct_1(vec3<f32>(723f, _wgslsmith_f_op_f32(trunc(-2652f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_div_f32(1700f, var_3.a.x))), !any(vec4<bool>(var_1.a.x, true, var_3.b, var_1.a.x)), -38878i, func_1(var_2.zww, var_3.b).d.d), ~select(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(~var_2.x, var_2.x ^ var_2.x), var_3.b));
    var var_6 = var_5;
    var var_7 = func_4(~(~firstLeadingBit(vec3<i32>(1i, 1i, 1i))), func_1(_wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(var_5.e, var_5.e, var_6.c.x)), vec3<u32>(1u, 4294967295u & var_5.e, var_5.c.x), var_2.zzz), all(!(!vec4<bool>(false, var_6.d.b, var_3.b, var_5.a.x)))), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~(-29324i), 6689i | var_7.a.x, 741i, 43153i), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f * 162f)))));
}

