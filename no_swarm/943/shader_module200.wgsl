struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-758f, 1595f, -1674f, 433f, -1125f, -752f, -1000f, 139f, 2268f, -856f, 1139f, 157f, 1566f, 1379f, 1181f, -807f, -423f, 453f, 382f, 2225f, 490f, -1681f, -1160f, -815f, 217f, -1071f, -725f, -133f, 813f, 934f, 1000f);

var<private> global1: Struct_5 = Struct_5(Struct_3(Struct_2(false), 2462u, false, -1053f, 1u), vec2<i32>(1i, 2147483647i), 4294967295u, false);

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(global1.a.b, 31u)];
    var var_1 = firstLeadingBit(1u);
    var var_2 = Struct_4(global1.a.a, Struct_1(_wgslsmith_sub_u32(global1.a.e, global1.c) >= 1u, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d, global1.a.d, global1.a.d)), vec3<f32>(-816f, -672f, 1813f), select(vec3<bool>(global1.a.a.a, global1.d, global1.d), vec3<bool>(false, global1.a.c, global1.d), vec3<bool>(global1.d, true, true))))), vec3<bool>(!any(vec3<bool>(global1.a.c, true, false)), true, true), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(31459u, global1.c), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.b, 36762u), vec2<u32>(17850u, global1.a.b)), vec2<u32>(global1.c, global1.a.e)))), global1.a.c, vec4<f32>(664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 31u)], 1955f))))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f))), global1.c >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global1.c, global1.a.b)) << (vec3<u32>(global1.c, 0u, global1.c) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(global1.c, global1.c, global1.c))) % 32u));
    global1 = Struct_5(global1.a, u_input.a.xz & vec2<i32>(u_input.e, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-35547i, global1.b.x, 31437i, -26301i), u_input.d), max(vec4<i32>(global1.b.x, 1i, -60986i, global1.b.x), u_input.d))), var_2.e & ~(~19412u ^ ~var_2.b.e), any(select(select(var_2.b.b, !vec4<bool>(global1.a.c, false, global1.d, var_2.b.b.x), !global1.d), !(!var_2.b.b), vec4<bool>(true, all(var_2.b.b.wzw), var_2.b.d.x, global1.a.a.a))));
    var var_3 = _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, global1.b.x, global1.b.x), vec3<i32>(global1.b.x, global1.b.x, u_input.b), true) << (~vec3<u32>(global1.a.b, 21211u, 0u) % vec3<u32>(32u)), -vec3<i32>(u_input.e, 36122i, global1.b.x) | vec3<i32>(-19064i, 21956i, u_input.d.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c, 4294967295u, var_2.b.e), ~(~vec4<u32>(1u, 33948u, global1.a.e, var_2.e))) % 32u));
    return !var_2.b.b.wyy;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec2<f32> {
    global1 = Struct_5(Struct_3(arg_1.a, ~1u & _wgslsmith_dot_vec3_u32(arg_0.zzw, vec3<u32>(arg_0.x, arg_0.x, 1u)), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), 4294967295u), u_input.d.xy, ~_wgslsmith_sub_u32(~arg_0.x, firstLeadingBit(84091u)) << (~(~_wgslsmith_mult_u32(12928u, 498u)) % 32u), !arg_1.c || !any(func_3()));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)))));
    var var_1 = arg_1.e;
    var_1 = global1.a.b;
    var var_2 = global1.a;
    return vec2<f32>(530f, global2.x);
}

fn func_1() -> Struct_5 {
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1693f), -243f), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_vec4_u32(firstTrailingBit(max(vec4<u32>(73258u, 27423u, global1.c, 45030u), vec4<u32>(global1.a.e, global1.c, 19697u, 24523u))), ~select(vec4<u32>(global1.a.b, 0u, 42681u, global1.c), vec4<u32>(0u, 31195u, global1.c, global1.a.b), global1.d)), Struct_4(global1.a.a, Struct_1(!global1.a.a.a, !vec4<bool>(false, global1.d, global1.d, true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(53945u, 31u)], global2.x, global2.x))), !vec3<bool>(global1.a.c, global1.d, false), 0u), any(!vec4<bool>(global1.d, global1.a.a.a, false, global1.a.a.a)), _wgslsmith_div_vec4_f32(vec4<f32>(350f, global2.x, global1.a.d, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, global0[_wgslsmith_index_u32(1u, 31u)], -1654f, 1000f) + vec4<f32>(335f, -1651f, 768f, global2.x))), 1u))));
    let var_0 = ~firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, global1.c, global1.a.e, global1.c) >> (vec4<u32>(5771u, global1.c, 72523u, global1.c) % vec4<u32>(32u)), vec4<u32>(1u, 47409u, 1u, 34314u) & vec4<u32>(global1.a.e, 47932u, global1.c, global1.a.b), ~vec4<u32>(global1.a.e, global1.a.e, 10570u, global1.c)), vec4<u32>(1u, ~global1.a.e, ~4294967295u, global1.c)));
    var var_1 = global1.a.a.a;
    var_1 = false;
    let var_2 = ~(~abs(~_wgslsmith_sub_u32(var_0, global1.a.b)));
    return Struct_5(global1.a, -vec2<i32>(58905i, _wgslsmith_sub_i32(-2147483647i, max(u_input.c, 1i))), 63604u | ~(select(25212u, var_0, global1.d) | _wgslsmith_div_u32(14834u, global1.c)), !all(!(!vec2<bool>(global1.a.c, true))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = global1.a;
    let var_1 = 1398f;
    let var_2 = select(!select(arg_1.b.b, arg_1.b.b, select(arg_1.b.b, vec4<bool>(var_0.c, global1.a.c, arg_1.c, arg_1.c), arg_1.b.b)), !arg_1.b.b, arg_1.b.b);
    var var_3 = u_input.a;
    global0 = array<f32, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13446u, 31u)]), var_1))) - vec4<f32>(var_0.d, global0[_wgslsmith_index_u32(~(~51917u), 31u)], func_1().a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(4294967295u, 1u, var_0.e, arg_1.e), arg_1)).x * _wgslsmith_f_op_f32(ceil(var_1))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -492f), _wgslsmith_f_op_f32(-global2.x)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(func_2(~vec4<u32>(38831u, arg_0.e, arg_1.e, 103981u), Struct_4(global1.a.a, Struct_1(false, arg_0.b.b, arg_0.b.c, vec3<bool>(arg_0.a.a, arg_0.b.a, true), arg_0.b.e), false, vec4<f32>(global0[_wgslsmith_index_u32(arg_1.b, 31u)], -648f, -238f, global0[_wgslsmith_index_u32(13901u, 31u)]), global1.c))).x), global1.a.d));
    return Struct_1(all(vec2<bool>((global1.a.e | arg_0.e) < 4294967295u, !(!arg_1.c))), vec4<bool>(any(arg_0.b.b), (all(vec4<bool>(false, true, true, arg_0.b.b.x)) && arg_0.a.a) && true, func_1().a.c | (_wgslsmith_f_op_f32(-258f - -2199f) > arg_1.d), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.d, 975f, -2468f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_1.d, arg_1.d)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(-global1.a.d), _wgslsmith_f_op_f32(global1.a.d * arg_0.d.x)), arg_0.b.d)) - arg_0.b.c), !select(select(vec3<bool>(false, false, arg_0.b.d.x), func_3(), arg_0.b.d), vec3<bool>(all(vec2<bool>(false, global1.a.c)), arg_0.e >= arg_0.b.e, !arg_1.a.a), func_3()), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(global1.a.a, Struct_1(true, vec4<bool>(!global1.a.c, all(vec4<bool>(true, global1.d, true, global1.a.c)), any(vec3<bool>(global1.a.a.a, true, global1.d)), !global1.a.a.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.c, 31u)], global0[_wgslsmith_index_u32(global1.a.b, 31u)], global2.x)))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, global1.d, true), vec3<bool>(global1.a.c, false, false)), vec3<bool>(true, true, false), vec3<bool>(false, true, global1.a.a.a)), 4294967295u), !((global1.b.x == global1.b.x) == !global1.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1.c, 31u)], global1.a.d, global1.a.d, global0[_wgslsmith_index_u32(global1.c, 31u)]) - vec4<f32>(global1.a.d, -666f, global1.a.d, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.d, 629f, 627f, -173f), vec4<f32>(global1.a.d, global1.a.d, global2.x, -1318f))), _wgslsmith_f_op_vec4_f32(func_4(func_1(), Struct_4(Struct_2(global1.d), Struct_1(false, vec4<bool>(false, global1.d, global1.a.a.a, false), vec3<f32>(428f, -1081f, global1.a.d), vec3<bool>(global1.a.c, global1.a.c, global1.a.c), global1.c), global1.a.c, vec4<f32>(1586f, -134f, -1186f, 1018f), 18220u))), global1.d)), 74763u), func_1().a, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(global1.c, 0u)) | (vec2<u32>(1u, global1.c) >> (abs(vec2<u32>(16042u, global1.a.b)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(vec2<u32>(4294967295u, global1.a.e))), ~select(vec2<u32>(64143u, 26039u), vec2<u32>(1u, 4294967295u), false), ~(vec2<u32>(global1.c, 15190u) & vec2<u32>(82183u, global1.c))), vec2<u32>(global1.a.e, 0u)));
    global2 = var_0.c.xx;
    var_0 = func_5(Struct_4(func_1().a.a, Struct_1(true, vec4<bool>(true & var_0.d.x, global1.b.x > global1.b.x, any(vec2<bool>(global1.d, global1.d)), all(var_0.b)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.d, global2.x, global0[_wgslsmith_index_u32(3363u, 31u)]), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(2331f, global0[_wgslsmith_index_u32(var_0.e, 31u)], global2.x))), !func_3(), _wgslsmith_mod_u32(global1.a.e, global1.c) << ((0u << (global1.a.b % 32u)) % 32u)), func_1().a.a.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-570f, global2.x, 201f, global1.a.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -457f, 311f, global2.x)))), vec4<f32>(global0[_wgslsmith_index_u32(~70376u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -937f), -2181f, global1.a.d))), var_0.e), global1.a, vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(19582u, _wgslsmith_dot_vec3_u32(vec3<u32>(63275u, 34080u, 14669u), vec3<u32>(1u, var_0.e, global1.c)))), _wgslsmith_sub_u32(func_1().a.e >> (14877u % 32u), 11764u)));
    let var_1 = var_0.b;
    let var_2 = var_0.c.xz;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1148f);
    var var_4 = ~(~_wgslsmith_sub_vec2_u32(min(~vec2<u32>(25496u, var_0.e), ~vec2<u32>(global1.a.e, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.d, -326f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1551f, 1558f)), var_2.x)), -1743f))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, ~(-u_input.d.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -15194i, u_input.d.x, global1.b.x), vec4<i32>(8432i, u_input.c, -2147483647i, 17602i))), countOneBits(vec3<i32>(-9018i >> (var_4.x % 32u), 2659i, u_input.a.x))), ~vec3<u32>(var_0.e, ~455u, 4294967295u) << (vec3<u32>(var_0.e, 1u, reverseBits(global1.a.b ^ 0u)) % vec3<u32>(32u)), var_0.c.zz);
}

