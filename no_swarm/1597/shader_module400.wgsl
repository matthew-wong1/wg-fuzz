struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, true, false, false, true, false, false, false, true, false, false, false, false, false, true, false, false, true, false, true, false, true, false, true);

var<private> global1: array<u32, 7> = array<u32, 7>(4294967295u, 1354u, 0u, 1u, 29517u, 4294967295u, 84404u);

var<private> global2: bool;

var<private> global3: i32 = 7577i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    global0 = array<bool, 25>();
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(831f - _wgslsmith_f_op_f32(-106f - 731f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f - -1266f) + -1474f), -1787f, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-320f, 749f)) * _wgslsmith_f_op_f32(f32(-1f) * -315f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-655f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + -1253f)), global0[_wgslsmith_index_u32(abs(u_input.a), 25u)]))), max(arg_0.x, arg_0.x | arg_0.x) << (u_input.a % 32u), -2477f, vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(global1[_wgslsmith_index_u32(68788u, 7u)])), (u_input.a & global1[_wgslsmith_index_u32(65935u, 7u)]) & 0u), u_input.a, 31723u));
    let var_1 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f - 1836f)), 1000f, var_0.c), select(any(!vec3<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 25u)], true)), (4294967295u < global1[_wgslsmith_index_u32(u_input.a, 7u)]) | (arg_1 || global0[_wgslsmith_index_u32(4229u, 25u)]), true), vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(33244u, 7u)], var_0.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 7u)], u_input.a, 62029u, var_0.d.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(114266u, 7u)], 7u)], 1u, 65185u, 46988u)) % 32u), 1u, global1[_wgslsmith_index_u32(var_0.d.x >> (firstLeadingBit(4294967295u) % 32u), 7u)], _wgslsmith_div_u32(u_input.a, firstTrailingBit(u_input.a))), ~vec4<i32>(_wgslsmith_clamp_i32(20401i, var_0.b, arg_0.x), 1i, var_0.b, -2147483647i), var_0), _wgslsmith_div_i32(-1152i, _wgslsmith_clamp_i32(arg_0.x, -48056i, var_0.b)) << (~4294967295u % 32u), select(_wgslsmith_mult_vec3_i32(countOneBits(-vec3<i32>(-39207i, 2418i, arg_0.x)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 3568i, arg_0.x), vec3<i32>(arg_0.x, 5376i, var_0.b)))), ~(~abs(vec3<i32>(arg_0.x, -2147483647i, 1i))), global0[_wgslsmith_index_u32(u_input.a, 25u)]), arg_0 >> (var_0.d.zz % vec2<u32>(32u)));
    global1 = array<u32, 7>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.e.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e.a.x) * 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), -359f));
    return abs(2147483647i);
}

fn func_2(arg_0: bool) -> bool {
    global0 = array<bool, 25>();
    let var_0 = Struct_2(vec2<bool>(!any(select(vec2<bool>(false, arg_0), vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]), true)), arg_0), false);
    let var_1 = !vec4<bool>(!(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19399u, 7u)], 7u)], 7u)], 7u)], 25u)] && false), true, all(vec3<bool>(var_0.a.x, true, var_0.a.x)) && true, !select(false, true, any(var_0.a)));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, select(_wgslsmith_sub_i32(-1i, i32(-1i) * -1i), func_3(select(vec2<i32>(-5800i, 37656i), vec2<i32>(36213i, -2147483647i), var_1.zy), any(var_1.wyy)), true && global0[_wgslsmith_index_u32(1u, 25u)])), min(3158i, -1i));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 642f)))) >= -1279f;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, -194f, -466f, 242f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1627f, -139f, -1251f, 321f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(588f, -424f, 234f, 162f), vec4<f32>(-1000f, 166f, -261f, -2885f))))), vec4<bool>(false, any(select(vec3<bool>(arg_2.a.x, arg_1, arg_1), vec3<bool>(global0[_wgslsmith_index_u32(5984u, 25u)], true, true), arg_1)), false, true))), abs(max(-arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - 1000f), ~vec3<u32>(23222u, ~select(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 7u)], true), ~(global1[_wgslsmith_index_u32(u_input.a, 7u)] | global1[_wgslsmith_index_u32(83565u, 7u)])));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f - -1067f))), _wgslsmith_div_f32(var_0.a.x, var_0.c), 445f), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-569f, 2133f, -1858f, 1055f)), true & arg_1)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(var_0.a)))), arg_2.b))));
    global0 = array<bool, 25>();
    let var_2 = min(_wgslsmith_sub_vec3_u32(~vec3<u32>(32593u, ~global1[_wgslsmith_index_u32(2219u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), ~vec3<u32>(min(var_0.d.x, u_input.a), ~var_0.d.x, _wgslsmith_clamp_u32(4294967295u, var_0.d.x, 44837u))), var_0.d);
    global3 = countOneBits(var_0.b);
    return Struct_2(vec2<bool>(!arg_2.a.x, arg_1), arg_2.a.x);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 100765u), vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 7u)], u_input.a), vec2<u32>(4294967295u, 54305u))), ~165987u)) & vec2<u32>(89101u, u_input.a);
    global2 = !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 25u)];
    let var_1 = func_4(vec2<i32>(1i, 1i), true, Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), func_2(0u > _wgslsmith_mod_u32(4294967295u, var_0.x))));
    var var_2 = Struct_2(vec2<bool>(false, true), func_2(true));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, 228f, -179f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(223f, 464f, 1281f)))), true)))), true, vec4<u32>(~0u ^ u_input.a, var_0.x, 47099u, _wgslsmith_div_u32(~42371u, global1[_wgslsmith_index_u32(max(~30469u, _wgslsmith_sub_u32(99553u, u_input.a)), 7u)])), firstLeadingBit(~(~(-vec4<i32>(1i, 86977i, 35816i, 12332i)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 652f)), -1000f, _wgslsmith_f_op_f32(sign(1091f)), -1000f), vec4<f32>(_wgslsmith_f_op_f32(select(-911f, 282f, true)), _wgslsmith_f_op_f32(max(135f, 189f)), -1357f, -1116f), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], true, arg_0.a.x, true))), -(~1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(676f, -438f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-122f, 249f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 7u)], 25u)])), 491f)), func_2(global0[_wgslsmith_index_u32(var_0.x, 25u)]))), _wgslsmith_mod_vec3_u32(~vec3<u32>(2364u, 33025u, 454u) & vec3<u32>(u_input.a, 1u, var_0.x), _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57740u, 7u)], 7u)], 13221u), vec3<u32>(var_0.x, 1u, var_0.x), vec3<bool>(true, false, arg_0.b)), vec3<u32>(var_0.x, 0u, 0u) | vec3<u32>(1u, 62480u, 4294967295u)))));
    return Struct_2(vec2<bool>(!var_3.b, !((-33145i >> (var_0.x % 32u)) > _wgslsmith_dot_vec3_i32(var_3.d.yxw, vec3<i32>(var_3.d.x, var_3.d.x, var_3.e.b)))), false);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    global2 = false;
    let var_0 = func_5(func_4(-(~vec2<i32>(-1i, 1i)), !all(vec3<bool>(arg_1, true, false)) & any(!vec4<bool>(true, true, arg_0.b, arg_1)), Struct_2(vec2<bool>(func_2(global0[_wgslsmith_index_u32(u_input.a, 25u)]), true), any(vec3<bool>(true, arg_0.a.x, arg_0.a.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, -1210f, -367f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(289f, -139f, 1286f) + vec3<f32>(-2015f, 127f, 1356f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2543f, -2054f, -537f) + vec3<f32>(-136f, 1238f, -453f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, -104f, -1000f)) * vec3<f32>(1f, 1f, 1f)))), any(select(select(vec4<bool>(var_0.a.x, arg_1, arg_1, arg_1), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], true, false, var_0.b), true), all(var_0.a)), !select(vec4<bool>(true, arg_0.a.x, arg_1, arg_0.b), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_1), vec4<bool>(var_0.b, arg_0.a.x, false, false)), vec4<bool>(false, true, !arg_1, arg_0.a.x)))));
    global0 = array<bool, 25>();
    global3 = countOneBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 1i, 19396i) << (vec3<u32>(u_input.a, 142u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27844u, 7u)], 7u)]) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(1i, 1i, 1i))) | 1i);
    return global0[_wgslsmith_index_u32(u_input.a, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(80232u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(47895u, 25u)], true)))), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(22996u, 7u)], global1[_wgslsmith_index_u32(51017u, 7u)], 4294967295u) << (vec4<u32>(27189u, global1[_wgslsmith_index_u32(31274u, 7u)], global1[_wgslsmith_index_u32(49947u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)]) % vec4<u32>(32u)), vec4<u32>(24347u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 7u)], 64220u)), 25u)], true, func_1(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], false), global0[_wgslsmith_index_u32(37621u, 25u)]), !global0[_wgslsmith_index_u32(u_input.a, 25u)]), true), select(vec4<bool>(func_4(vec2<i32>(2147483647i, 0i), false, func_4(vec2<i32>(1i, 38620i), true, Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(36499u, 25u)], true), global0[_wgslsmith_index_u32(16815u, 25u)]))).b, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(45251u, 25u)], true || global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 7u)], 17122u), 25u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 25u)], any(vec3<bool>(true, false, false)), true, false), select(select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 25u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(19231u, 25u)], false), global0[_wgslsmith_index_u32(4294967295u, 25u)]), !vec4<bool>(global0[_wgslsmith_index_u32(113237u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], false, true), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 25u)], true)), vec4<bool>(true, true, true, func_2(global0[_wgslsmith_index_u32(64896u, 25u)]))), true));
    let var_1 = 32831u;
    let var_2 = vec2<i32>(select(1i, func_3(-vec2<i32>(1i, 1i), any(vec2<bool>(false, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(var_1, 7u)]), vec2<u32>(var_1, 9753u)) > abs(max(var_1, 1u))), _wgslsmith_div_i32(abs(-32898i), -65439i));
    var var_3 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-558f, -157f))), 994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(320f, 629f)))), !all(!vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(80109u, 25u)])), ~vec4<u32>(_wgslsmith_div_u32(13568u, 44948u), 21140u, ~global1[_wgslsmith_index_u32(9580u, 7u)], 1u), select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -31293i, var_2.x, var_2.x), vec4<i32>(1i, 1i, 30073i, var_2.x), vec4<i32>(-36353i, 32898i, var_2.x, 34008i)), vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) ^ vec4<i32>(var_2.x, 2147483647i, var_2.x, var_2.x)), vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i) & -vec4<i32>(var_2.x, 2147483647i, var_2.x, -2147483647i), true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(315f - 423f), _wgslsmith_f_op_f32(sign(-1563f)), _wgslsmith_f_op_f32(-403f + 1896f), -571f), -2147483647i, 1963f, ~(~vec3<u32>(var_1, global1[_wgslsmith_index_u32(var_1, 7u)], 11705u)))), 1683i, vec3<i32>(37496i, var_2.x, var_2.x), ~vec2<i32>(~(~(-14549i)), var_2.x));
    let var_4 = abs(vec2<i32>(22197i, abs(~var_2.x)) << (vec2<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], max(1u, u_input.a)), global1[_wgslsmith_index_u32(var_3.a.c.x, 7u)]) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, vec2<u32>(var_1, 23237u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(981f, 1077f)) - 397f) * 1408f), _wgslsmith_f_op_f32(var_3.a.e.a.x * _wgslsmith_f_op_f32(select(var_3.a.e.c, _wgslsmith_f_op_f32(-501f - -346f), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 7u)], 25u)] != true))))));
}

